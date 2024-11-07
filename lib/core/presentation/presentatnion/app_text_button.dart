import 'package:flutter/material.dart';
import 'package:silesian_prototype/core/presentation/styles/styles.dart';
import 'package:silesian_prototype/core/presentation/values/values.dart';

class AppTextButton extends StatelessWidget {
  final VoidCallback onPressed;
  final String text;
  final Color bgColor;
  final Color textColor;

  const AppTextButton({
    super.key,
    required this.onPressed,
    required this.text,
    this.bgColor = AppColors.white,
    this.textColor = AppColors.darkGray,
  });

  @override
  Widget build(BuildContext context) {
    return TextButton(
      style: ButtonStyles.appTextButton.copyWith(backgroundColor: WidgetStateProperty.all(bgColor)),
      onPressed: onPressed,
      child: Text(
        text,
        style: TextStyles.defaultTextButton.copyWith(color: textColor),
      ),
    );
  }
}
