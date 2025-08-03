import 'package:shared_preferences/shared_preferences.dart';

/// Сервис для управления локальных хранилищем [SharedPreferences].
class PreferencesService {
  final SharedPreferences _prefs;

  PreferencesService(this._prefs);

  static const _appearanceKey = 'appearance';
  static const _onboardingSeenKey = 'onboarding_seen';

  /// Сохраняет выбранную тему оформления (appearance) в локальное хранилище.
  Future<void> setAppearance(String appearance) async {
    await _prefs.setString(_appearanceKey, appearance);
  }

  /// Возвращает текущую сохранённую тему оформления из локального хранилища.
  /// Если значение отсутствует, по умолчанию возвращает 'light'.
  String getAppearance() {
    return _prefs.getString(_appearanceKey) ?? 'light';
  }

  /// Устанавливает флаг, что пользователь прошёл приветственный экран.
  Future<void> setOnboardingSeen() async {
    await _prefs.setBool(_onboardingSeenKey, true);
  }

  /// Проверяет, проходил ли пользователь приветственный экран.
  bool hasSeenOnboarding() {
    return _prefs.getBool(_onboardingSeenKey) ?? false;
  }
}
