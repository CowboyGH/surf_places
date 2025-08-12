import 'dart:async';

import 'package:connectivity_plus/connectivity_plus.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:surf_places/core/services/network_service.dart';

/// Кубит для управления состоянием интернет-соединения.
class NetworkCubit extends Cubit<ConnectivityResult> {
  final NetworkService _networkService;
  StreamSubscription<ConnectivityResult>? _subscription;
  NetworkCubit(this._networkService) : super(ConnectivityResult.none) {
    _init();
  }

  Future<void> _init() async {
    final initialSatus = await _networkService.getCurrentStatus();
    emit(initialSatus);
    _subscription = _networkService.onStatusChange.listen(emit);
  }

  @override
  Future<void> close() {
    _subscription?.cancel();
    return super.close();
  }
}
