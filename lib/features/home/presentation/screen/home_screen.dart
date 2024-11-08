import 'package:flutter/material.dart';
import 'package:silesian_prototype/features/home/presentation/widgets/app_bar/home_app_bar.dart';
import 'package:silesian_prototype/features/home/presentation/widgets/home_floating_action_button.dart';
import 'package:silesian_prototype/features/home/presentation/widgets/recommended/recomended_body_biger.dart';
import 'package:silesian_prototype/features/home/presentation/widgets/recommended/recommended_body.dart';
import 'package:silesian_prototype/features/home/presentation/widgets/recommended/recommended_header.dart';

final ScrollController scrollController = ScrollController();
final ValueNotifier<bool> isScrollButtonVisible = ValueNotifier(false);

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  void _scrollListener() {
    final maxScroll = scrollController.position.maxScrollExtent;
    final currentScroll = scrollController.position.pixels;

    isScrollButtonVisible.value = currentScroll > maxScroll * 0.75;
  }

  @override
  Widget build(BuildContext context) {
    scrollController.addListener(_scrollListener);

    return Scaffold(
      body: LayoutBuilder(
        builder: (context, constraints) {
          bool isWideScreen = constraints.maxWidth > 600;

          return CustomScrollView(
            controller: scrollController,
            slivers: [
              HomeAppBar(scrollController: scrollController),
              if (!isWideScreen) ...[
                RecommendedHeader(scrollController: scrollController),
                RecommendedBody(),
              ] else ...[
                SliverToBoxAdapter(
                  child: Row(
                    children: [
                      SizedBox(width: 200, child: Placeholder()),
                      SizedBox(width: 16),
                      Expanded(child: RecomendedBodyBiger()),
                    ],
                  ),
                ),
              ],
            ],
          );
        },
      ),
      floatingActionButton: HomeFloatingActionButton(
          scrollController: scrollController, isScrollButtonVisible: isScrollButtonVisible),
    );
  }
}
