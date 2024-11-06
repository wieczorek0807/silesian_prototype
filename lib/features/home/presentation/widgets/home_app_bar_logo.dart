import 'package:flutter/material.dart';
import 'package:silesian_prototype/core/presentation/values/values.dart';

class HomeAppBarLogo extends StatelessWidget {
  final double appBarHeight;

  const HomeAppBarLogo({super.key, required this.appBarHeight});

  @override
  Widget build(BuildContext context) {
    return Image.asset(
      appBarHeight > 100 ? AppImages.logoColor : AppImages.logoWhite,
      fit: BoxFit.contain,
      height: AppDimensions.homeAppBarLogoHeight,
    );
  }
}
