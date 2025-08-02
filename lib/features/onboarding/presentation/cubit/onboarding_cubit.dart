import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:surf_places/core/domain/entities/failure/failure.dart';
import 'package:surf_places/core/domain/entities/result/result.dart';
import 'package:surf_places/features/onboarding/domain/entities/onboarding_page_entity.dart';
import 'package:surf_places/features/onboarding/domain/usecases/get_onboarding_pages.dart';
import 'package:surf_places/features/onboarding/domain/usecases/set_onboarding_seen.dart';

part 'onboarding_state.dart';
part 'onboarding_cubit.freezed.dart';

class OnboardingCubit extends Cubit<OnboardingState> {
  final GetOnboardingPages _getPages;
  final SetOnboardingSeen _setSeen;

  OnboardingCubit(this._getPages, this._setSeen) : super(const OnboardingState.initial());

  Future<void> completeOnboarding() async {
    emit(const OnboardingState.completing());
    final result = await _setSeen();
    switch (result) {
      case ResultOk():
        emit(OnboardingState.completed());
      case ResultFailed(:final error):
        emit(OnboardingState.error(error));
    }
  }

  void loadPages() async {
    emit(const OnboardingState.loading());
    final result = await _getPages();
    switch (result) {
      case ResultOk(:final data):
        emit(OnboardingState.loaded(data));
      case ResultFailed(:final error):
        emit(OnboardingState.error(error));
    }
  }
}
