import '../sharedPreferences/cache_helper.dart';

class ThemeService {
  static bool darkModeValue = false;
  static Future themeInit() async {
    if (CacheHelper.getSaveData(key: "darkMode") == null) {
      CacheHelper.saveData(key: "darkMode", value: false);
    }
    darkModeValue = await CacheHelper.getSaveData(key: "darkMode");
  }

  static Future changeDarkMode() async {
    darkModeValue = !darkModeValue;

    await CacheHelper.saveData(key: "darkMode", value: darkModeValue);
  }
}
