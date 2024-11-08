import 'package:flutter/material.dart';
import 'package:flutter_staggered_grid_view/flutter_staggered_grid_view.dart';
import 'package:silesian_prototype/core/presentation/values/values.dart';
import 'package:silesian_prototype/features/home/domain/entities/recommended_card_entity.dart';
import 'package:silesian_prototype/features/home/presentation/widgets/recommended/card/recomended_card.dart';

class RecommendedBody extends StatelessWidget {
  const RecommendedBody({super.key, required this.recomendedCards});
  final List<RecommendedCardEntity> recomendedCards;

  @override
  Widget build(BuildContext context) {
    double screenWidth = MediaQuery.of(context).size.width;

    int crossAxisCount = _getCrossAxisCount(screenWidth);

    return SliverToBoxAdapter(
      child: Container(
        color: AppColors.lightGray,
        padding: AppPadding.recomendedSection,
        child: MasonryGridView.count(
          crossAxisCount: crossAxisCount,
          mainAxisSpacing: 8,
          crossAxisSpacing: 8,
          shrinkWrap: true,
          physics: const NeverScrollableScrollPhysics(),
          itemCount: recomendedCards.length,
          itemBuilder: (context, index) {
            return RecomendedCard(
              recommendedCardEntity: recomendedCards[index],
              onFavoriteToggle: () {},
            );
          },
        ),
      ),
    );
  }

  int _getCrossAxisCount(double screenWidth) {
    if (screenWidth > 1000) return 4;
    if (screenWidth > 600) return 3;
    return 2;
  }
}
