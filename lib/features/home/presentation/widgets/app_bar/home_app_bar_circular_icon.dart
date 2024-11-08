import 'package:flutter/material.dart';
import 'package:silesian_prototype/core/presentation/values/values.dart';

class HomeAppBarCircularIcon extends StatelessWidget {
  final IconData icon;

  const HomeAppBarCircularIcon({super.key, required this.icon});

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: AppMargin.homeAppBarCircularIcon,
      width: AppDimensions.homeAppBarCircularIcon,
      height: AppDimensions.homeAppBarCircularIcon,
      decoration: BoxDecoration(
        color: AppColors.white.withOpacity(0.6),
        shape: BoxShape.circle,
      ),
      child: Icon(icon),
    );
  }
}
