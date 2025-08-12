import 'dart:async';
import 'dart:io';

import 'package:connectivity_plus/connectivity_plus.dart';

/// Сервис для управления состоянием интернет-соединения.
class NetworkService {
  final Connectivity _connectivity;
  final Duration _lookupTimeout;

  final _controller = StreamController<ConnectivityResult>.broadcast();
  late final StreamSubscription<List<ConnectivityResult>> _subscription;
  ConnectivityResult? _lastStatus;

  NetworkService({Connectivity? connectivity, Duration lookupTimeout = const Duration(seconds: 3)})
    : _connectivity = Connectivity(),
      _lookupTimeout = lookupTimeout {
    _subscription = _connectivity.onConnectivityChanged.listen(_onConnectivityChanged);
  }

  Future<void> _onConnectivityChanged(List<ConnectivityResult> results) async {
    // Если wifi/mobile — проверяем наличие доступа в интернет, иначе сразу none
    if (results.contains(ConnectivityResult.none)) {
      _emit(ConnectivityResult.none);
    } else {
      final hasInternetAccess = await _checkInternet();
      return hasInternetAccess ? _emit(results.first) : _emit(ConnectivityResult.none);
    }
  }

  Future<bool> _checkInternet() async {
    try {
      final results = await InternetAddress.lookup('example.com').timeout(_lookupTimeout);
      return results.isNotEmpty && results.first.rawAddress.isNotEmpty;
    } catch (_) {
      return false;
    }
  }

  void _emit(ConnectivityResult status) {
    if (_lastStatus == status) return;
    _lastStatus = status;
    if (!_controller.isClosed) _controller.add(status);
  }

  /// Текущий статус подключения (wifi/mobile/none).
  Future<ConnectivityResult> getCurrentStatus() async {
    final results = await _connectivity.checkConnectivity();
    if (results.contains(ConnectivityResult.none)) {
      return ConnectivityResult.none;
    } else {
      final hasInternetAccess = await _checkInternet();
      return hasInternetAccess ? results.first : ConnectivityResult.none;
    }
  }

  /// Быстрая проверка наличия интернета.
  Future<bool> get hasInternet async => (await getCurrentStatus()) != ConnectivityResult.none;

  /// Поток изменений статуса подключения.
  Stream<ConnectivityResult> get onStatusChange => _controller.stream;

  Future<void> dispose() async {
    await _subscription.cancel();
    await _controller.close();
  }
}
