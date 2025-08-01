/// {@template app_svg_icons.class}
/// Иконки и изображения в формате svg.
/// {@endtemplate}
abstract class AppSvgIcons {
  static const String icons = 'assets/icons';
  static const String catalog = '$icons/catalog';
  static const String loader = '$icons/loader';

  /// Онбординг.
  static const onboardingPage1 = '$icons/onboarding_page_1.svg';
  static const onboardingPage2 = '$icons/onboarding_page_2.svg';
  static const onboardingPage3 = '$icons/onboarding_page_3.svg';

  /// bottom Navigation Bar
  static const icList = '$icons/list.svg';
  static const icListFull = '$icons/list_full.svg';
  static const icMap = '$icons/map.svg';
  static const icMapFull = '$icons/map_full.svg';
  static const icHeart = '$icons/heart.svg';
  static const icHeartFull = '$icons/heart_full.svg';
  static const icSettings = '$icons/settings.svg';
  static const icSettingsFull = '$icons/settings_full.svg';

  /// действия на карточке
  static const icCalendar = '$icons/calendar.svg';
  static const icClose = '$icons/close.svg';
  static const icShare = '$icons/share.svg';
  static const icFavorites = '$icons/heart.svg';
  static const icFavoritesFull = '$icons/heart_full.svg';
  static const icRemove = '$icons/remove.svg';

  /// другие кнопки
  static const icGo = '$icons/go.svg';
  static const icArrow = '$icons/arrow.svg';
  static const icArrowLeading = '$icons/arrow_leading.svg';
  static const icView = '$icons/view.svg';
  static const icViewUp = '$icons/view_up.svg';
  static const icPlus = '$icons/plus.svg';
  static const icMinus = '$icons/minus.svg';
  static const icFilter = '$icons/filter.svg';
  static const icSearch = '$icons/search.svg';
  static const icDelete = '$icons/delete.svg';
  static const icClear = '$icons/clear.svg';
  static const icBucket = '$icons/bucket.svg';

  /// пустые страницы (результат не найден) и ошибки
  static const icEmptyPlanned = '$icons/error_card.svg';
  static const icEmptyVisited = '$icons/error_go.svg';
  static const icEmptySearch = '$icons/error_search.svg';
  static const icNetworkException = '$icons/error_delete.svg';

  /// категории фильтра поиска
  static const icTemple = '$catalog/temple.svg';
  static const icMonument = '$catalog/monument.svg';
  static const icPark = '$catalog/park.svg';
  static const icTheatre = '$catalog/theatre.svg';
  static const icMuseum = '$catalog/museum.svg';
  static const icHotel = '$catalog/hotel.svg';
  static const icRestaurant = '$catalog/restaurant.svg';
  static const icCafe = '$catalog/cafe.svg';
  static const icOther = '$catalog/other.svg';
  static const icIsChose = '$icons/tick_choice.svg';
  static const icTick = '$icons/tick.svg';

  /// настройки
  static const icInfo = '$icons/info.svg';

  /// сплэш
  static const icSplashLogo = '$icons/splash_logo.svg';

  /// загрузка фото при добавлении нового места
  static const icCamera = '$icons/camera.svg';
  static const icPhoto = '$icons/photo.svg';
  static const icFail = '$icons/fail.svg';

  /// лоадер из дизайна
  static const icLoaderSmallWhite = '$loader/small_white.png';
  static const icLoaderSmallBlack = '$loader/small_black.png';
  static const icLoaderLargeWhite = '$loader/large_white.png';
  static const icLoaderLargeBlack = '$loader/large_black.png';
}
