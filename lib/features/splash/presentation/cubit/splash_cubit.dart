import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:surf_places/core/domain/entities/failure/failure.dart';
import 'package:surf_places/core/domain/entities/result/result.dart';
import 'package:surf_places/features/splash/domain/usecases/check_onboarding_status.dart';

part 'splash_state.dart';
part 'splash_cubit.freezed.dart';

class SplashCubit extends Cubit<SplashState> {
  final CheckOnboardingStatus _checkOnboardingStatus;

  SplashCubit(this._checkOnboardingStatus) : super(const SplashState.initial());

  Future<void> checkOnboardingStatus() async {
    emit(const SplashState.loading());
    final result = await _checkOnboardingStatus();
    switch (result) {
      case ResultOk(:final data):
        emit(SplashState.ready(data));
      case ResultFailed(:final error):
        emit(SplashState.error(error));
    }
  }
}
