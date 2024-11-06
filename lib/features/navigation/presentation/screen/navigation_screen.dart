import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:silesian_prototype/features/events/presentation/screen/events_screen.dart';
import 'package:silesian_prototype/features/explore/presentation/screen/explore_screen.dart';
import 'package:silesian_prototype/features/home/presentation/screen/home_screen.dart';

import 'package:silesian_prototype/features/navigation/presentation/cubit/navigation_cubit.dart';
import 'package:silesian_prototype/features/navigation/presentation/widgets/bottom_nav_bar.dart';
import 'package:silesian_prototype/features/news/presentation/screen/news_screen.dart';

class NavigationScreen extends StatelessWidget {
  const NavigationScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) => NavigationCubit(),
      child: SafeArea(
        child: Scaffold(
          body: BlocBuilder<NavigationCubit, NavigationState>(
            builder: (context, state) => state.when(
              silesian: () => const HomeScreen(),
              news: () => const NewsScreen(),
              events: () => const EventsScreen(),
              explore: () => const ExploreScreen(),
            ),
          ),
          bottomNavigationBar: const BottomNavBar(),
        ),
      ),
    );
  }
}
