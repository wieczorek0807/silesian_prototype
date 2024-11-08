import 'package:flutter/material.dart';
import 'package:silesian_prototype/core/presentation/values/values.dart';
import 'package:silesian_prototype/features/home/domain/entities/recommended_card_entity.dart';
import 'package:silesian_prototype/features/home/presentation/widgets/recommended/card/recomended_card.dart';

class RecomendedBodyLowHeight extends StatelessWidget {
  const RecomendedBodyLowHeight({super.key, required this.recomendedCards});

  final List<RecommendedCardEntity> recomendedCards;

  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: Container(
        padding: AppPadding.recomendedSectionLowHeight,
        height: AppDimensions.recomendedBodyLowHeight,
        child: ListView.builder(
          scrollDirection: Axis.horizontal,
          itemCount: recomendedCards.length,
          itemBuilder: (context, index) {
            return Container(
              padding: AppPadding.recomendedCard,
              width: AppDimensions.recomendedBodyLowHeightCardWidth,
              child: RecomendedCard(
                recommendedCardEntity: recomendedCards[index],
                onFavoriteToggle: () {},
              ),
            );
          },
        ),
      ),
    );
  }
}
