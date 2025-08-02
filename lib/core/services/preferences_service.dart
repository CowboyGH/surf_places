import 'package:shared_preferences/shared_preferences.dart';

/// Сервис для управления локальных хранилищем [SharedPreferences].
class PreferencesService {
  final SharedPreferences _prefs;

  PreferencesService(this._prefs);

  static const _onboardingSeenKey = 'onboarding_seen';

  Future<void> setOnboardingSeen() async {
    await _prefs.setBool(_onboardingSeenKey, true);
  }

  bool hasSeenOnboarding() {
    return _prefs.getBool(_onboardingSeenKey) ?? false;
  }
}
