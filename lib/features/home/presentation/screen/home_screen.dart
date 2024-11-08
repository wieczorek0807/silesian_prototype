import 'package:flutter/material.dart';
import 'package:silesian_prototype/core/presentation/values/values.dart';
import 'package:silesian_prototype/features/home/domain/recommended_card_list.dart';
import 'package:silesian_prototype/features/home/presentation/widgets/app_bar/home_app_bar.dart';
import 'package:silesian_prototype/features/home/presentation/widgets/home_floating_action_button.dart';
import 'package:silesian_prototype/features/home/presentation/widgets/recommended/recomended_body_low_height.dart';
import 'package:silesian_prototype/features/home/presentation/widgets/recommended/recommended_body.dart';
import 'package:silesian_prototype/features/home/presentation/widgets/recommended/recommended_header.dart';
import 'package:silesian_prototype/features/home/presentation/widgets/recommended/recommended_header_low_height.dart';

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
          bool lightHeightScreen = constraints.maxHeight < 450;

          return CustomScrollView(
            controller: scrollController,
            slivers: [
              HomeAppBar(scrollController: scrollController),
              if (!lightHeightScreen) ...[
                RecommendedHeader(scrollController: scrollController),
                RecommendedBody(recomendedCards: RecommendedCardList.cardDataList),
              ] else ...[
                SliverToBoxAdapter(
                  child: Container(
                    color: AppColors.lightGray,
                    child: Row(
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: [
                        const RecommendedHeaderLowHeight(),
                        RecomendedBodyLowHeight(recomendedCards: RecommendedCardList.cardDataList),
                      ],
                    ),
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
