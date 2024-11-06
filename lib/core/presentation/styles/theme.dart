part of 'styles.dart';

abstract class AppTheme {
  static ThemeData defaultAppThemelight = ThemeData(
    useMaterial3: true,
    colorSchemeSeed: AppColors.background,
    splashColor: const Color.fromARGB(255, 97, 187, 167),
    appBarTheme: const AppBarTheme(
      backgroundColor: Colors.white,
      foregroundColor: Colors.black,
      elevation: 1,
      iconTheme: IconThemeData(color: AppColors.deepBlue, size: 34),
      titleTextStyle: TextStyle(color: Colors.black, fontSize: 20),
    ),
  );
}
