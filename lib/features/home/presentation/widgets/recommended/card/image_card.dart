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
      padding: AppPadding.recomendedCard,
      child: GestureDetector(
        onTap: () {},
        child: ClipRRect(
          borderRadius: AppBorder.recomendedCard,
          child: Stack(
            children: [
              _backgroundImage(),
              _favoriteButton(),
              _textOverlay(),
            ],
          ),
        ),
      ),
    );
  }

  Widget _backgroundImage() {
    return Container(
      decoration: BoxDecoration(
        image: DecorationImage(
          image: AssetImage(recommendedCardEntity.imageUrl!),
          fit: BoxFit.cover,
        ),
      ),
    );
  }

  Widget _favoriteButton() {
    return Positioned(
      top: 10,
      right: 10,
      child: Container(
        decoration: AppBoxDecoration.recomendedImageCardIcon,
        child: IconButton(
          icon: Icon(
            recommendedCardEntity.isFavorite ? Icons.favorite : Icons.favorite_outline,
            color: recommendedCardEntity.isFavorite ? AppColors.mintGreen : Colors.white,
          ),
          onPressed: onFavoriteToggle,
        ),
      ),
    );
  }

  Widget _textOverlay() {
    return Positioned(
      bottom: 0,
      left: 0,
      right: 0,
      child: Container(
        padding: AppPadding.recomendedCardImageText,
        decoration: AppBoxDecoration.recomendedImageCard,
        child: Text(
          recommendedCardEntity.text,
          style: TextStyles.recomendedCard,
        ),
      ),
    );
  }
}
