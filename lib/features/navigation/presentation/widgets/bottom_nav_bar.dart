import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:silesian_prototype/core/extensions/build_context_ext.dart';
import 'package:silesian_prototype/core/presentation/styles/styles.dart';
import 'package:silesian_prototype/core/presentation/values/values.dart';
import 'package:silesian_prototype/features/navigation/presentation/cubit/navigation_cubit.dart';

class BottomNavBar extends StatelessWidget {
  const BottomNavBar({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<NavigationCubit, NavigationState>(builder: (context, state) {
      return BottomNavigationBar(
        type: BottomNavigationBarType.fixed,
        backgroundColor: AppColors.lightGray,
        unselectedItemColor: AppColors.darkGray,
        selectedItemColor: AppColors.darkGray,
        selectedLabelStyle: TextStyles.navBarSelectedLabel,
        unselectedLabelStyle: TextStyles.navBarUnselectedLabel,
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
        currentIndex: state.when(silesian: () => 0, news: () => 1, events: () => 2, explore: () => 3),
        onTap: (value) => context.read<NavigationCubit>().navigate(value),
      );
    });
  }
}
