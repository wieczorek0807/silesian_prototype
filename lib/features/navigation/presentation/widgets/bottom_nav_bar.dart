import 'package:flutter/material.dart';
import 'package:silesian_prototype/core/extensions/build_context_ext.dart';
import 'package:silesian_prototype/core/presentation/styles/styles.dart';
import 'package:silesian_prototype/core/presentation/values/values.dart';

class BottomNavBar extends StatelessWidget {
  const BottomNavBar({super.key});

  @override
  Widget build(BuildContext context) {
    return BottomNavigationBar(
      type: BottomNavigationBarType.fixed,
      backgroundColor: AppColors.lightGray,
      unselectedItemColor: AppColors.darkGray,
      selectedItemColor: AppColors.darkGray,
      selectedLabelStyle: TextStyles.navBarSelectedLabelStyle,
      unselectedLabelStyle: TextStyles.navBarUnselectedLabelStyle,
      items: [
        BottomNavigationBarItem(
          icon: const Icon(Icons.home_outlined),
          label: context.appLocalizations.silesian,
        ),
        BottomNavigationBarItem(
          icon: const Icon(Icons.newspaper_outlined),
          label: context.appLocalizations.news,
        ),
        BottomNavigationBarItem(
          icon: const Icon(Icons.calendar_month_outlined),
          label: context.appLocalizations.events,
        ),
        BottomNavigationBarItem(
          icon: const Icon(Icons.map_outlined),
          label: context.appLocalizations.explore,
        ),
      ],
    );
  }
}
