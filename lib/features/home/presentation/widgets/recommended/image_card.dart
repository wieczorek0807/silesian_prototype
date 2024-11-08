import 'package:flutter/material.dart';
import 'package:silesian_prototype/core/presentation/styles/styles.dart';
import 'package:silesian_prototype/core/presentation/values/values.dart';
import 'package:silesian_prototype/features/home/domain/entities/recommended_card_entity.dart';

class ImageCard extends StatelessWidget {
  final RecommendedCardEntity recommendedCardEntity;
  final VoidCallback onFavoriteToggle;

  const ImageCard({
    super.key,
    required this.recommendedCardEntity,
    required this.onFavoriteToggle,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: Stack(
        children: [
          Container(
            decoration: BoxDecoration(
              image: DecorationImage(
                image: AssetImage(recommendedCardEntity.imageUrl!),
                fit: BoxFit.cover,
              ),
              borderRadius: BorderRadius.circular(10),
            ),
          ),
          Positioned(
            top: 10,
            right: 10,
            child: Container(
              decoration: BoxDecoration(
                color: Colors.white.withOpacity(0.2),
                shape: BoxShape.circle,
              ),
              child: IconButton(
                icon: Icon(Icons.favorite_outline,
                    color: recommendedCardEntity.isFavorite ? AppColors.mintGreen : Colors.white),
                onPressed: () {},
              ),
            ),
          ),
          Positioned(
            bottom: 0,
            left: 0,
            right: 0,
            child: Container(
              padding: const EdgeInsets.all(12),
              decoration: BoxDecoration(
                color: Colors.black.withOpacity(0.5),
                borderRadius: const BorderRadius.vertical(
                  bottom: Radius.circular(10),
                ),
              ),
              child: Text(
                recommendedCardEntity.text,
                style: TextStyles.recomendedCard,
              ),
            ),
          ),
        ],
      ),
    );
  }
}
