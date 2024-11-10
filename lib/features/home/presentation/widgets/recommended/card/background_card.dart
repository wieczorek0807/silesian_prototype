import 'package:flutter/material.dart';
import 'package:silesian_prototype/core/presentation/styles/styles.dart';
import 'package:silesian_prototype/core/presentation/values/values.dart';
import 'package:silesian_prototype/features/home/domain/entities/recommended_card_entity.dart';

class BackgroundCard extends StatelessWidget {
  final RecommendedCardEntity recommendedCardEntity;
  final VoidCallback onFavoriteToggle;

  const BackgroundCard({
    super.key,
    required this.recommendedCardEntity,
    required this.onFavoriteToggle,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: AppPadding.recomendedCard,
      child: ClipRRect(
        borderRadius: AppBorder.recomendedCard,
        child: GestureDetector(
          onTap: (){} ,
          child: Container(
            color: recommendedCardEntity.bgColor,
            child: Stack(
              children: [
                _arrowIcon(),
                _icon(),
                _text(),
              ],
            ),
          ),
        ),
      ),
    );
  }

  Widget _arrowIcon() {
    return Positioned(
      top: 5,
      right: 5,
      child: Transform.rotate(
        angle: -0.785,
        child: const Icon(
          Icons.arrow_forward_ios_outlined,
          color: AppColors.white,
          size: AppDimensions.recomendedCardIconSize,
        ),
      ),
    );
  }

  Widget _icon() {
    return Positioned(
      top: 15,
      left: 15,
      child: Icon(
        recommendedCardEntity.icon,
        color: Colors.white.withOpacity(0.8),
        size: 72,
      ),
    );
  }

  Widget _text() {
    return Positioned(
      bottom: 0,
      left: 0,
      right: 0,
      child: Padding(
        padding: AppPadding.recomendedCardText,
        child: Text(
          recommendedCardEntity.text,
          style: TextStyles.recomendedCard,
        ),
      ),
    );
  }
}
