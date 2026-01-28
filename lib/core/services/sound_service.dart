import 'package:audioplayers/audioplayers.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

/// Sound effect types
enum SoundEffect {
  click('click.mp3'),
  select('select.mp3'),
  compare('compare.mp3');

  const SoundEffect(this.fileName);
  final String fileName;
}

/// Sound service to manage audio playback
class SoundService {
  final Map<SoundEffect, AudioPlayer> _players = {};
  bool _isMuted = false;
  bool _isInitialized = false;

  SoundService() {
    _initializePlayers();
  }

  bool get isMuted => _isMuted;

  /// Initialize and preload audio players
  Future<void> _initializePlayers() async {
    if (_isInitialized) return;

    for (final sound in SoundEffect.values) {
      final player = AudioPlayer();
      player.setReleaseMode(ReleaseMode.stop);

      // Preload audio
      try {
        await player.setSource(AssetSource('sounds/${sound.fileName}'));
        _players[sound] = player;
      } catch (e) {
        // Silently handle missing sound files
      }
    }

    _isInitialized = true;
  }

  /// Toggle sound mute/unmute
  void toggleMute() {
    _isMuted = !_isMuted;
  }

  /// Play a sound effect (non-blocking, immediate)
  void playSound(SoundEffect sound) {
    if (_isMuted) return;

    final player = _players[sound];
    if (player == null) return;

    try {
      // Seek to start and play immediately without awaiting
      player.seek(Duration.zero);
      player.resume();
    } catch (e) {
      // Silently handle errors
    }
  }

  /// Dispose resources
  void dispose() {
    for (final player in _players.values) {
      player.dispose();
    }
    _players.clear();
  }
}

/// Provider for sound service
final soundServiceProvider = Provider<SoundService>((ref) {
  final service = SoundService();
  ref.onDispose(() => service.dispose());
  return service;
});
