import 'package:flutter/material.dart';
import 'package:silesian_prototype/core/presentation/values/values.dart';
import 'package:silesian_prototype/features/home/domain/entities/recommended_card_entity.dart';

abstract class RecommendedCardList {
  static final List<RecommendedCardEntity> cardDataList = [
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
}
