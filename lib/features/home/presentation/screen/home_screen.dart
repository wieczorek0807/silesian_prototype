import 'package:flutter/material.dart';
import 'package:silesian_prototype/core/presentation/presentatnion/app_silver_header_delegate.dart';
import 'package:silesian_prototype/features/home/presentation/widgets/home_app_bar.dart';
import 'package:silesian_prototype/features/home/presentation/widgets/recommended_header_section.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final ScrollController scrollController = ScrollController();
    return Scaffold(
      body: CustomScrollView(
        controller: scrollController,
        slivers: [
          HomeAppBar(scrollController: scrollController),
          SliverPersistentHeader(
            pinned: true,
            delegate: AppSilverHeaderDelegate(
              minExtent: 130.0,
              maxExtent: 130.0,
              child: RecommendedHeaderSection(scrollController: scrollController),
            ),
          ),
          SliverList(
            delegate: SliverChildListDelegate([
              Container(
                height: 800,
                color: const Color.fromARGB(255, 59, 230, 230),
                child: const Center(child: Text('Body')),
              ),
            ]),
          ),
        ],
      ),
    );
  }
}
