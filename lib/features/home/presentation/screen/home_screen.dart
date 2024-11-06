import 'package:flutter/material.dart';
import 'package:silesian_prototype/features/home/presentation/widgets/home_app_bar.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: CustomScrollView(slivers: [
        const HomeAppBar(),
        SliverList(
          delegate: SliverChildListDelegate([
            Container(
              height: 800,
              color: Colors.orange,
              child: const Center(child: Text('Body')),
            ),
          ]),
        ),
      ]),
    );
  }
}
