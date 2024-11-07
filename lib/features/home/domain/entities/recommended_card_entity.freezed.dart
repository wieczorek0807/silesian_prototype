// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'recommended_card_entity.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

/// @nodoc
mixin _$RecommendedCardEntity {
  bool get hasBackground => throw _privateConstructorUsedError;
  Color get bgColor => throw _privateConstructorUsedError;
  IconData? get icon => throw _privateConstructorUsedError;
  String? get text => throw _privateConstructorUsedError;
  String? get imageUrl => throw _privateConstructorUsedError;
  bool get isFavorite => throw _privateConstructorUsedError;

  /// Create a copy of RecommendedCardEntity
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $RecommendedCardEntityCopyWith<RecommendedCardEntity> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $RecommendedCardEntityCopyWith<$Res> {
  factory $RecommendedCardEntityCopyWith(RecommendedCardEntity value,
          $Res Function(RecommendedCardEntity) then) =
      _$RecommendedCardEntityCopyWithImpl<$Res, RecommendedCardEntity>;
  @useResult
  $Res call(
      {bool hasBackground,
      Color bgColor,
      IconData? icon,
      String? text,
      String? imageUrl,
      bool isFavorite});
}

/// @nodoc
class _$RecommendedCardEntityCopyWithImpl<$Res,
        $Val extends RecommendedCardEntity>
    implements $RecommendedCardEntityCopyWith<$Res> {
  _$RecommendedCardEntityCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of RecommendedCardEntity
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? hasBackground = null,
    Object? bgColor = null,
    Object? icon = freezed,
    Object? text = freezed,
    Object? imageUrl = freezed,
    Object? isFavorite = null,
  }) {
    return _then(_value.copyWith(
      hasBackground: null == hasBackground
          ? _value.hasBackground
          : hasBackground // ignore: cast_nullable_to_non_nullable
              as bool,
      bgColor: null == bgColor
          ? _value.bgColor
          : bgColor // ignore: cast_nullable_to_non_nullable
              as Color,
      icon: freezed == icon
          ? _value.icon
          : icon // ignore: cast_nullable_to_non_nullable
              as IconData?,
      text: freezed == text
          ? _value.text
          : text // ignore: cast_nullable_to_non_nullable
              as String?,
      imageUrl: freezed == imageUrl
          ? _value.imageUrl
          : imageUrl // ignore: cast_nullable_to_non_nullable
              as String?,
      isFavorite: null == isFavorite
          ? _value.isFavorite
          : isFavorite // ignore: cast_nullable_to_non_nullable
              as bool,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$RecommendedCardEntityImplCopyWith<$Res>
    implements $RecommendedCardEntityCopyWith<$Res> {
  factory _$$RecommendedCardEntityImplCopyWith(
          _$RecommendedCardEntityImpl value,
          $Res Function(_$RecommendedCardEntityImpl) then) =
      __$$RecommendedCardEntityImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {bool hasBackground,
      Color bgColor,
      IconData? icon,
      String? text,
      String? imageUrl,
      bool isFavorite});
}

/// @nodoc
class __$$RecommendedCardEntityImplCopyWithImpl<$Res>
    extends _$RecommendedCardEntityCopyWithImpl<$Res,
        _$RecommendedCardEntityImpl>
    implements _$$RecommendedCardEntityImplCopyWith<$Res> {
  __$$RecommendedCardEntityImplCopyWithImpl(_$RecommendedCardEntityImpl _value,
      $Res Function(_$RecommendedCardEntityImpl) _then)
      : super(_value, _then);

  /// Create a copy of RecommendedCardEntity
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? hasBackground = null,
    Object? bgColor = null,
    Object? icon = freezed,
    Object? text = freezed,
    Object? imageUrl = freezed,
    Object? isFavorite = null,
  }) {
    return _then(_$RecommendedCardEntityImpl(
      hasBackground: null == hasBackground
          ? _value.hasBackground
          : hasBackground // ignore: cast_nullable_to_non_nullable
              as bool,
      bgColor: null == bgColor
          ? _value.bgColor
          : bgColor // ignore: cast_nullable_to_non_nullable
              as Color,
      icon: freezed == icon
          ? _value.icon
          : icon // ignore: cast_nullable_to_non_nullable
              as IconData?,
      text: freezed == text
          ? _value.text
          : text // ignore: cast_nullable_to_non_nullable
              as String?,
      imageUrl: freezed == imageUrl
          ? _value.imageUrl
          : imageUrl // ignore: cast_nullable_to_non_nullable
              as String?,
      isFavorite: null == isFavorite
          ? _value.isFavorite
          : isFavorite // ignore: cast_nullable_to_non_nullable
              as bool,
    ));
  }
}

/// @nodoc

class _$RecommendedCardEntityImpl implements _RecommendedCardEntity {
  const _$RecommendedCardEntityImpl(
      {required this.hasBackground,
      this.bgColor = Colors.white,
      this.icon,
      this.text,
      this.imageUrl,
      this.isFavorite = false});

  @override
  final bool hasBackground;
  @override
  @JsonKey()
  final Color bgColor;
  @override
  final IconData? icon;
  @override
  final String? text;
  @override
  final String? imageUrl;
  @override
  @JsonKey()
  final bool isFavorite;

  @override
  String toString() {
    return 'RecommendedCardEntity(hasBackground: $hasBackground, bgColor: $bgColor, icon: $icon, text: $text, imageUrl: $imageUrl, isFavorite: $isFavorite)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$RecommendedCardEntityImpl &&
            (identical(other.hasBackground, hasBackground) ||
                other.hasBackground == hasBackground) &&
            (identical(other.bgColor, bgColor) || other.bgColor == bgColor) &&
            (identical(other.icon, icon) || other.icon == icon) &&
            (identical(other.text, text) || other.text == text) &&
            (identical(other.imageUrl, imageUrl) ||
                other.imageUrl == imageUrl) &&
            (identical(other.isFavorite, isFavorite) ||
                other.isFavorite == isFavorite));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType, hasBackground, bgColor, icon, text, imageUrl, isFavorite);

  /// Create a copy of RecommendedCardEntity
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$RecommendedCardEntityImplCopyWith<_$RecommendedCardEntityImpl>
      get copyWith => __$$RecommendedCardEntityImplCopyWithImpl<
          _$RecommendedCardEntityImpl>(this, _$identity);
}

abstract class _RecommendedCardEntity implements RecommendedCardEntity {
  const factory _RecommendedCardEntity(
      {required final bool hasBackground,
      final Color bgColor,
      final IconData? icon,
      final String? text,
      final String? imageUrl,
      final bool isFavorite}) = _$RecommendedCardEntityImpl;

  @override
  bool get hasBackground;
  @override
  Color get bgColor;
  @override
  IconData? get icon;
  @override
  String? get text;
  @override
  String? get imageUrl;
  @override
  bool get isFavorite;

  /// Create a copy of RecommendedCardEntity
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$RecommendedCardEntityImplCopyWith<_$RecommendedCardEntityImpl>
      get copyWith => throw _privateConstructorUsedError;
}
