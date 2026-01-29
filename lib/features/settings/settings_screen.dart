import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:pokedex/core/cache/cache_repository.dart';
import 'package:pokedex/core/services/connectivity_service.dart';
import 'package:pokedex/core/services/sound_service.dart';
import 'package:pokedex/core/widgets/pokemon_loader.dart';
import 'package:pokedex/features/settings/offline_download_service.dart';

/// Settings keys
class SettingsKeys {
  static const String prefetchOnScroll = 'prefetch_on_scroll';
  static const String wifiOnlyDownload = 'wifi_only_download';
}

/// Provider for prefetch on scroll setting
final prefetchOnScrollProvider = FutureProvider<bool>((ref) async {
  final cache = ref.watch(cacheRepositoryProvider);
  return await cache.getSetting<bool>(SettingsKeys.prefetchOnScroll) ?? false;
});

/// Provider for wifi only download setting
final wifiOnlyDownloadProvider = FutureProvider<bool>((ref) async {
  final cache = ref.watch(cacheRepositoryProvider);
  return await cache.getSetting<bool>(SettingsKeys.wifiOnlyDownload) ?? true;
});

class SettingsScreen extends ConsumerStatefulWidget {
  const SettingsScreen({super.key});

  @override
  ConsumerState<SettingsScreen> createState() => _SettingsScreenState();
}

class _SettingsScreenState extends ConsumerState<SettingsScreen> {
  bool _prefetchOnScroll = false;
  bool _wifiOnlyDownload = true;
  Map<String, int> _cacheSizes = {};
  bool _isLoadingSettings = true;
  bool _isDownloading = false;

  @override
  void initState() {
    super.initState();
    _loadSettings();
  }

  Future<void> _loadSettings() async {
    final cache = ref.read(cacheRepositoryProvider);

    final prefetch =
        await cache.getSetting<bool>(SettingsKeys.prefetchOnScroll) ?? false;
    final wifiOnly =
        await cache.getSetting<bool>(SettingsKeys.wifiOnlyDownload) ?? true;
    final sizes = await cache.getCacheSizes();

    if (mounted) {
      setState(() {
        _prefetchOnScroll = prefetch;
        _wifiOnlyDownload = wifiOnly;
        _cacheSizes = sizes;
        _isLoadingSettings = false;
      });
    }
  }

  Future<void> _togglePrefetchOnScroll(bool value) async {
    final cache = ref.read(cacheRepositoryProvider);
    await cache.saveSetting(SettingsKeys.prefetchOnScroll, value);
    setState(() => _prefetchOnScroll = value);
    ref.invalidate(prefetchOnScrollProvider);
  }

  Future<void> _toggleWifiOnlyDownload(bool value) async {
    final cache = ref.read(cacheRepositoryProvider);
    await cache.saveSetting(SettingsKeys.wifiOnlyDownload, value);
    setState(() => _wifiOnlyDownload = value);
    ref.invalidate(wifiOnlyDownloadProvider);
  }

  Future<void> _clearCache() async {
    final soundService = ref.read(soundServiceProvider);
    soundService.playSound(SoundEffect.click);

    final confirmed = await showDialog<bool>(
      context: context,
      builder: (context) => AlertDialog(
        title: const Text('Clear Cache'),
        content: const Text(
          'This will delete all cached Pokemon data. '
          'You will need an internet connection to reload the data.',
        ),
        actions: [
          TextButton(
            onPressed: () => Navigator.pop(context, false),
            child: const Text('Cancel'),
          ),
          TextButton(
            onPressed: () => Navigator.pop(context, true),
            style: TextButton.styleFrom(foregroundColor: Colors.red),
            child: const Text('Clear'),
          ),
        ],
      ),
    );

    if (confirmed == true) {
      final cache = ref.read(cacheRepositoryProvider);
      await cache.clearAllCaches();
      await _loadSettings();

      if (mounted) {
        ScaffoldMessenger.of(context).showSnackBar(
          const SnackBar(content: Text('Cache cleared successfully')),
        );
      }
    }
  }

  Future<void> _downloadAllForOffline() async {
    final soundService = ref.read(soundServiceProvider);
    soundService.playSound(SoundEffect.click);

    // Check connectivity
    final connectivity = ref.read(connectivityServiceProvider);
    final isOnline = await connectivity.isOnline();

    if (!isOnline) {
      if (mounted) {
        ScaffoldMessenger.of(context).showSnackBar(
          const SnackBar(
            content: Text(
              'No internet connection. Please connect to download.',
            ),
            backgroundColor: Colors.red,
          ),
        );
      }
      return;
    }

    // Check WiFi if required
    if (_wifiOnlyDownload) {
      final isOnWifi = await connectivity.isOnWifi();
      if (!isOnWifi) {
        final proceed = await showDialog<bool>(
          context: context,
          builder: (context) => AlertDialog(
            title: const Text('Not on WiFi'),
            content: const Text(
              'You are not connected to WiFi. Downloading all Pokemon data '
              'may use significant mobile data (~5-10MB). Continue anyway?',
            ),
            actions: [
              TextButton(
                onPressed: () => Navigator.pop(context, false),
                child: const Text('Cancel'),
              ),
              TextButton(
                onPressed: () => Navigator.pop(context, true),
                child: const Text('Download Anyway'),
              ),
            ],
          ),
        );
        if (proceed != true) return;
      }
    }

    setState(() => _isDownloading = true);

    try {
      final downloadService = ref.read(offlineDownloadServiceProvider);
      await downloadService.downloadAllForOffline(
        onProgress: (current, total) {
          // Progress is tracked in the service
        },
      );

      await _loadSettings();

      if (mounted) {
        ScaffoldMessenger.of(context).showSnackBar(
          const SnackBar(
            content: Text('All Pokemon data downloaded for offline use!'),
            backgroundColor: Colors.green,
          ),
        );
      }
    } catch (e) {
      if (mounted) {
        ScaffoldMessenger.of(context).showSnackBar(
          SnackBar(
            content: Text('Download failed: $e'),
            backgroundColor: Colors.red,
          ),
        );
      }
    } finally {
      if (mounted) {
        setState(() => _isDownloading = false);
      }
    }
  }

  @override
  Widget build(BuildContext context) {
    final downloadProgress = ref.watch(downloadProgressProvider);

    return Scaffold(
      appBar: AppBar(
        backgroundColor: const Color(0xFFDC0A2D),
        title: const Text(
          'Settings',
          style: TextStyle(color: Colors.white, fontWeight: FontWeight.bold),
        ),
        iconTheme: const IconThemeData(color: Colors.white),
      ),
      body: _isLoadingSettings
          ? const Center(child: PokemonLoader(size: 80))
          : ListView(
              children: [
                // Cache Status Section
                _buildSectionHeader('Cache Status'),
                _buildCacheStatusTile(),

                const Divider(),

                // Offline Settings Section
                _buildSectionHeader('Offline Settings'),
                SwitchListTile(
                  title: const Text('Pre-fetch on scroll'),
                  subtitle: const Text(
                    'Automatically cache Pokemon details as you browse',
                  ),
                  value: _prefetchOnScroll,
                  onChanged: _togglePrefetchOnScroll,
                  activeColor: const Color(0xFFDC0A2D),
                ),
                SwitchListTile(
                  title: const Text('WiFi-only download'),
                  subtitle: const Text(
                    'Only download all data when connected to WiFi',
                  ),
                  value: _wifiOnlyDownload,
                  onChanged: _toggleWifiOnlyDownload,
                  activeColor: const Color(0xFFDC0A2D),
                ),

                const Divider(),

                // Download Section
                _buildSectionHeader('Offline Download'),
                if (_isDownloading || downloadProgress.isDownloading)
                  _buildDownloadProgress(downloadProgress)
                else
                  ListTile(
                    leading: const Icon(
                      Icons.download,
                      color: Color(0xFFDC0A2D),
                    ),
                    title: const Text('Download All for Offline'),
                    subtitle: const Text(
                      'Download all Pokemon data (~5-10MB) for offline use',
                    ),
                    onTap: _downloadAllForOffline,
                  ),

                const Divider(),

                // Clear Cache Section
                _buildSectionHeader('Manage Cache'),
                ListTile(
                  leading: const Icon(Icons.delete_outline, color: Colors.red),
                  title: const Text('Clear Cache'),
                  subtitle: const Text('Delete all cached Pokemon data'),
                  onTap: _clearCache,
                ),

                const SizedBox(height: 32),
              ],
            ),
    );
  }

  Widget _buildSectionHeader(String title) {
    return Padding(
      padding: const EdgeInsets.fromLTRB(16, 16, 16, 8),
      child: Text(
        title,
        style: TextStyle(
          fontSize: 14,
          fontWeight: FontWeight.bold,
          color: Colors.grey[600],
        ),
      ),
    );
  }

  Widget _buildCacheStatusTile() {
    final totalCached = _cacheSizes['pokemonDetails'] ?? 0;
    final speciesCached = _cacheSizes['pokemonSpecies'] ?? 0;
    final evolutionsCached = _cacheSizes['evolutionChains'] ?? 0;

    return ListTile(
      leading: const Icon(Icons.storage, color: Color(0xFFDC0A2D)),
      title: const Text('Cached Data'),
      subtitle: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          const SizedBox(height: 4),
          Text('Pokemon details: $totalCached / 1025'),
          Text('Species data: $speciesCached / 1025'),
          Text('Evolution chains: $evolutionsCached'),
          const SizedBox(height: 4),
          LinearProgressIndicator(
            value: totalCached / 1025,
            backgroundColor: Colors.grey[200],
            valueColor: const AlwaysStoppedAnimation<Color>(Color(0xFFDC0A2D)),
          ),
        ],
      ),
      isThreeLine: true,
    );
  }

  Widget _buildDownloadProgress(DownloadProgress progress) {
    return Padding(
      padding: const EdgeInsets.all(16),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Row(
            children: [
              const SizedBox(
                width: 24,
                height: 24,
                child: CircularProgressIndicator(strokeWidth: 2),
              ),
              const SizedBox(width: 16),
              Expanded(
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      'Downloading... ${progress.current}/${progress.total}',
                      style: const TextStyle(fontWeight: FontWeight.w500),
                    ),
                    const SizedBox(height: 4),
                    Text(
                      progress.currentPokemon,
                      style: TextStyle(fontSize: 12, color: Colors.grey[600]),
                    ),
                  ],
                ),
              ),
            ],
          ),
          const SizedBox(height: 8),
          LinearProgressIndicator(
            value: progress.total > 0 ? progress.current / progress.total : 0,
            backgroundColor: Colors.grey[200],
            valueColor: const AlwaysStoppedAnimation<Color>(Color(0xFFDC0A2D)),
          ),
        ],
      ),
    );
  }
}
