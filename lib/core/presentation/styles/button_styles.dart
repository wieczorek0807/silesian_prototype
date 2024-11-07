part of 'styles.dart';

abstract class ButtonStyles {
  static final appTextButton = TextButton.styleFrom(
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(20),
      ),
      padding: const EdgeInsets.symmetric(vertical: 16, horizontal: 30));
}
