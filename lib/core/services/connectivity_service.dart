import 'dart:async';
import 'package:connectivity_plus/connectivity_plus.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

/// Service to monitor network connectivity status
class ConnectivityService {
  final Connectivity _connectivity = Connectivity();

  StreamController<bool>? _controller;
  StreamSubscription<List<ConnectivityResult>>? _subscription;

  /// Stream of connectivity status (true = online, false = offline)
  Stream<bool> get onConnectivityChanged {
    _controller ??= StreamController<bool>.broadcast(
      onListen: _startListening,
      onCancel: _stopListening,
    );
    return _controller!.stream;
  }

  void _startListening() {
    _subscription = _connectivity.onConnectivityChanged.listen((results) {
      final isOnline = _isOnline(results);
      _controller?.add(isOnline);
    });
  }

  void _stopListening() {
    _subscription?.cancel();
    _subscription = null;
  }

  /// Check current connectivity status
  Future<bool> isOnline() async {
    final results = await _connectivity.checkConnectivity();
    return _isOnline(results);
  }

  bool _isOnline(List<ConnectivityResult> results) {
    return results.any(
      (result) =>
          result == ConnectivityResult.wifi ||
          result == ConnectivityResult.mobile ||
          result == ConnectivityResult.ethernet,
    );
  }

  /// Check if connected to WiFi specifically
  Future<bool> isOnWifi() async {
    final results = await _connectivity.checkConnectivity();
    return results.contains(ConnectivityResult.wifi);
  }

  void dispose() {
    _stopListening();
    _controller?.close();
    _controller = null;
  }
}

/// Provider for connectivity service
final connectivityServiceProvider = Provider<ConnectivityService>((ref) {
  final service = ConnectivityService();
  ref.onDispose(() => service.dispose());
  return service;
});

/// Provider for current online status (stream)
final isOnlineProvider = StreamProvider<bool>((ref) {
  final service = ref.watch(connectivityServiceProvider);
  return service.onConnectivityChanged;
});

/// Provider for initial online check
final isOnlineCheckProvider = FutureProvider<bool>((ref) async {
  final service = ref.watch(connectivityServiceProvider);
  return service.isOnline();
});
