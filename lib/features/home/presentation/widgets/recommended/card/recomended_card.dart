import 'package:flutter/material.dart';
import 'package:silesian_prototype/features/home/domain/entities/recommended_card_entity.dart';
import 'package:silesian_prototype/features/home/presentation/widgets/recommended/card/background_card.dart';
import 'package:silesian_prototype/features/home/presentation/widgets/recommended/card/image_card.dart';

class RecomendedCard extends StatelessWidget {
  final RecommendedCardEntity recommendedCardEntity;
  final VoidCallback onFavoriteToggle;

  const RecomendedCard({
    super.key,
    required this.recommendedCardEntity,
    required this.onFavoriteToggle,
  });

  @override
  Widget build(BuildContext context) {
    final double aspectRatio = recommendedCardEntity.isSmaller ? 4 / 2.5 : 4 / 5;

    return AspectRatio(
        aspectRatio: aspectRatio,
        child: recommendedCardEntity.hasBackground
            ? BackgroundCard(recommendedCardEntity: recommendedCardEntity, onFavoriteToggle: onFavoriteToggle)
            : ImageCard(recommendedCardEntity: recommendedCardEntity, onFavoriteToggle: onFavoriteToggle));
  }
}
