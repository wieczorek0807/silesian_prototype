import 'package:flutter/material.dart';
import 'package:silesian_prototype/core/presentation/values/values.dart';

class HomeAppBarLogo extends StatelessWidget {
  final double appBarHeight;

  const HomeAppBarLogo({super.key, required this.appBarHeight});

  @override
  Widget build(BuildContext context) {
    final logo =
        appBarHeight > MediaQuery.of(context).size.height / 4 ? AppImages.logoColor : AppImages.logoWhite;
    return Image.asset(
      logo,
      fit: BoxFit.contain,
      height: AppDimensions.homeAppBarLogoHeight,
    );
  }
}
