import 'package:flutter/material.dart';
import 'package:silesian_prototype/core/presentation/presentatnion/app_silver_header_delegate.dart';
import 'package:silesian_prototype/features/home/presentation/widgets/home_app_bar.dart';
import 'package:silesian_prototype/features/home/presentation/widgets/home_floating_action_button.dart';
import 'package:silesian_prototype/features/home/presentation/widgets/recommended_body.dart';
import 'package:silesian_prototype/features/home/presentation/widgets/recommended_header.dart';

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
      body: CustomScrollView(
        controller: scrollController,
        slivers: [
          HomeAppBar(scrollController: scrollController),
          SliverPersistentHeader(
            pinned: true,
            delegate: AppSilverHeaderDelegate(
              minExtent: 140.0,
              maxExtent: 140.0,
              child: RecommendedHeader(scrollController: scrollController),
            ),
          ),
          RecommendedBody(),
        ],
      ),
      floatingActionButton: ValueListenableBuilder<bool>(
        valueListenable: isScrollButtonVisible,
        builder: (context, isVisible, child) {
          return Visibility(
            visible: isVisible,
            child: HomeFloatingActionButton(
              scrollController: scrollController,
              isScrollButtonVisible: isScrollButtonVisible,
            ),
          );
        },
      ),
    );
  }
}
