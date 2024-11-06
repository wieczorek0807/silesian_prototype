part of 'styles.dart';

abstract class TextStyles {
  static const navBarSelectedLabelStyle = TextStyle(
    fontFamily: AppFonts.roboto,
    fontWeight: FontWeight.w800,
    fontSize: FontSizes.bottomNavigationBar,
  );

  static const navBarUnselectedLabelStyle = TextStyle(
    fontFamily: AppFonts.roboto,
    fontWeight: FontWeight.w500,
    fontSize: FontSizes.bottomNavigationBar,
  );
}
