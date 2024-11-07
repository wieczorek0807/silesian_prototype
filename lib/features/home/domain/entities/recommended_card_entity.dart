import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:flutter/material.dart';
import 'package:silesian_prototype/core/presentation/values/values.dart';

part 'recommended_card_entity.freezed.dart';

@freezed
class RecommendedCardEntity with _$RecommendedCardEntity {
  factory RecommendedCardEntity({
    required bool hasBackground,
    @Default(false) bool isSmaller,
    @Default(AppColors.mintGreen) Color bgColor,
    @Default(AppColors.white) Color textColor,
    @Default(false) bool isFavorite,
    IconData? icon,
    required String text,
    String? imageUrl,
  }) = _RecommendedCardEntity;
}
