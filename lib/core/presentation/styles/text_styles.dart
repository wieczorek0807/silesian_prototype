part of 'styles.dart';

abstract class TextStyles {
  static const navBarSelectedLabel = TextStyle(
    fontFamily: AppFonts.roboto,
    fontWeight: FontWeight.w800,
    fontSize: FontSizes.bottomNavigationBar,
  );

  static const navBarUnselectedLabel = TextStyle(
    fontFamily: AppFonts.roboto,
    fontWeight: FontWeight.w500,
    fontSize: FontSizes.bottomNavigationBar,
  );

  static const defaultTextButton = TextStyle(
    fontFamily: AppFonts.roboto,
    fontWeight: FontWeight.w700,
    fontSize: FontSizes.defaultTextButton,
  );

  static const recomendedSectionHeader = TextStyle(
    fontWeight: FontWeight.w800,
    color: AppColors.darkGray,
    fontSize: FontSizes.recomendedSectionHeader,
  );
}
