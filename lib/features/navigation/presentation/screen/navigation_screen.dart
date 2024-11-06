import 'package:flutter/material.dart';
import 'package:silesian_prototype/features/navigation/presentation/widgets/bottom_nav_bar.dart';

class NavigationScreen extends StatelessWidget {
  const NavigationScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return const SafeArea(
      child: Scaffold(
        bottomNavigationBar: BottomNavBar(),
      ),
    );
  }
}
