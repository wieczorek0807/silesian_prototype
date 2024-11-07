import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:flutter/material.dart';

part 'recommended_card_entity.freezed.dart';

@freezed
class RecommendedCardEntity with _$RecommendedCardEntity {
  const factory RecommendedCardEntity({
    required bool hasBackground,
    @Default(Colors.white) Color bgColor,
    IconData? icon,
    String? text,
    String? imageUrl,
    @Default(false) bool isFavorite,
  }) = _RecommendedCardEntity;
}
