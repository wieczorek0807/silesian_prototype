import 'package:flutter/material.dart';
import 'package:flutter_staggered_grid_view/flutter_staggered_grid_view.dart';
import 'package:silesian_prototype/core/presentation/values/values.dart';
import 'package:silesian_prototype/features/home/domain/entities/recommended_card_entity.dart';
import 'package:silesian_prototype/features/home/presentation/widgets/recommended/recomended_card.dart';

class RecomendedBodyBiger extends StatelessWidget {
  RecomendedBodyBiger({super.key});

  List<RecommendedCardEntity> cardDataList = [
    RecommendedCardEntity(
      isSmaller: true,
      hasBackground: true,
      bgColor: AppColors.mintGreen,
      textColor: AppColors.darkGray,
      icon: Icons.moving,
      text: 'Zaplanuj podróż',
    ),
    RecommendedCardEntity(
      hasBackground: false,
      imageUrl: AppImages.museum,
      text: 'Dłuższe godziny zwiedzania Muzeum',
      isFavorite: false,
    ),
    RecommendedCardEntity(
      hasBackground: true,
      bgColor: AppColors.deepBlue,
      icon: Icons.backpack_outlined,
      text: 'Szlaki',
      isFavorite: false,
    ),
    RecommendedCardEntity(
      hasBackground: false,
      imageUrl: AppImages.carboneum,
      text: 'Carbonerum dla licealistów',
      isFavorite: false,
    ),
    RecommendedCardEntity(
      hasBackground: false,
      imageUrl: AppImages.planetarium,
      text: 'Dłuższe godziny zwiedzania Muzeum',
      isFavorite: false,
    ),
    RecommendedCardEntity(
      hasBackground: false,
      imageUrl: AppImages.stadium,
      text: 'Carbonerum dla licealistów',
      isFavorite: false,
    ),
    RecommendedCardEntity(
      hasBackground: false,
      imageUrl: AppImages.elephant,
      text: 'Dłuższe godziny zwiedzania Muzeum',
      isFavorite: false,
    ),
    RecommendedCardEntity(
      hasBackground: false,
      imageUrl: AppImages.lights,
      text: 'Dłuższe godziny zwiedzania Muzeum',
      isFavorite: false,
    ),
    RecommendedCardEntity(
      hasBackground: false,
      imageUrl: AppImages.opera,
      text: 'Dłuższe godziny zwiedzania Muzeum',
      isFavorite: false,
    ),
  ];

  @override
  Widget build(BuildContext context) {
    return Container(
      color: AppColors.lightGray,
      padding: AppPadding.recomendedSection,
      height: 200,
      child: ListView.builder(
        scrollDirection: Axis.horizontal,
        itemCount: cardDataList.length,
        itemBuilder: (context, index) {
          return Padding(
            padding: const EdgeInsets.symmetric(horizontal: 8.0),
            child: SizedBox(
              width: 150,
              child: RecomendedCard(
                recommendedCardEntity: cardDataList[index],
                onFavoriteToggle: () {
                  cardDataList[index] = cardDataList[index].copyWith(isFavorite: true);
                },
              ),
            ),
          );
        },
      ),
    );
  }
}
