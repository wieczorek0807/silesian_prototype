import 'package:flutter/material.dart';
import 'package:flutter_staggered_grid_view/flutter_staggered_grid_view.dart';
import 'package:silesian_prototype/core/presentation/values/values.dart';
import 'package:silesian_prototype/features/home/domain/entities/recommended_card_entity.dart';
import 'package:silesian_prototype/features/home/presentation/widgets/recommended/recomended_card.dart';

class RecommendedBody extends StatelessWidget {
  RecommendedBody({super.key});

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
          itemCount: cardDataList.length,
          itemBuilder: (context, index) {
            return RecomendedCard(
              recommendedCardEntity: cardDataList[index],
              onFavoriteToggle: () {
                cardDataList[index] = cardDataList[index].copyWith(isFavorite: true);
              },
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
