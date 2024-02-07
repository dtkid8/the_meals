// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'detail_entity.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

DetailEntity _$DetailEntityFromJson(Map<String, dynamic> json) {
  return _DetailEntity.fromJson(json);
}

/// @nodoc
mixin _$DetailEntity {
  @JsonKey(name: "meals")
  List<MealEntity>? get meals => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $DetailEntityCopyWith<DetailEntity> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $DetailEntityCopyWith<$Res> {
  factory $DetailEntityCopyWith(
          DetailEntity value, $Res Function(DetailEntity) then) =
      _$DetailEntityCopyWithImpl<$Res, DetailEntity>;
  @useResult
  $Res call({@JsonKey(name: "meals") List<MealEntity>? meals});
}

/// @nodoc
class _$DetailEntityCopyWithImpl<$Res, $Val extends DetailEntity>
    implements $DetailEntityCopyWith<$Res> {
  _$DetailEntityCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? meals = freezed,
  }) {
    return _then(_value.copyWith(
      meals: freezed == meals
          ? _value.meals
          : meals // ignore: cast_nullable_to_non_nullable
              as List<MealEntity>?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$DetailEntityImplCopyWith<$Res>
    implements $DetailEntityCopyWith<$Res> {
  factory _$$DetailEntityImplCopyWith(
          _$DetailEntityImpl value, $Res Function(_$DetailEntityImpl) then) =
      __$$DetailEntityImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({@JsonKey(name: "meals") List<MealEntity>? meals});
}

/// @nodoc
class __$$DetailEntityImplCopyWithImpl<$Res>
    extends _$DetailEntityCopyWithImpl<$Res, _$DetailEntityImpl>
    implements _$$DetailEntityImplCopyWith<$Res> {
  __$$DetailEntityImplCopyWithImpl(
      _$DetailEntityImpl _value, $Res Function(_$DetailEntityImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? meals = freezed,
  }) {
    return _then(_$DetailEntityImpl(
      meals: freezed == meals
          ? _value._meals
          : meals // ignore: cast_nullable_to_non_nullable
              as List<MealEntity>?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$DetailEntityImpl implements _DetailEntity {
  const _$DetailEntityImpl(
      {@JsonKey(name: "meals") final List<MealEntity>? meals})
      : _meals = meals;

  factory _$DetailEntityImpl.fromJson(Map<String, dynamic> json) =>
      _$$DetailEntityImplFromJson(json);

  final List<MealEntity>? _meals;
  @override
  @JsonKey(name: "meals")
  List<MealEntity>? get meals {
    final value = _meals;
    if (value == null) return null;
    if (_meals is EqualUnmodifiableListView) return _meals;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(value);
  }

  @override
  String toString() {
    return 'DetailEntity(meals: $meals)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$DetailEntityImpl &&
            const DeepCollectionEquality().equals(other._meals, _meals));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode =>
      Object.hash(runtimeType, const DeepCollectionEquality().hash(_meals));

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$DetailEntityImplCopyWith<_$DetailEntityImpl> get copyWith =>
      __$$DetailEntityImplCopyWithImpl<_$DetailEntityImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$DetailEntityImplToJson(
      this,
    );
  }
}

abstract class _DetailEntity implements DetailEntity {
  const factory _DetailEntity(
          {@JsonKey(name: "meals") final List<MealEntity>? meals}) =
      _$DetailEntityImpl;

  factory _DetailEntity.fromJson(Map<String, dynamic> json) =
      _$DetailEntityImpl.fromJson;

  @override
  @JsonKey(name: "meals")
  List<MealEntity>? get meals;
  @override
  @JsonKey(ignore: true)
  _$$DetailEntityImplCopyWith<_$DetailEntityImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

MealEntity _$MealEntityFromJson(Map<String, dynamic> json) {
  return _MealEntity.fromJson(json);
}

/// @nodoc
mixin _$MealEntity {
  @JsonKey(name: "idMeal")
  String? get idMeal => throw _privateConstructorUsedError;
  @JsonKey(name: "strMeal")
  String? get strMeal => throw _privateConstructorUsedError;
  @JsonKey(name: "strDrinkAlternate")
  dynamic get strDrinkAlternate => throw _privateConstructorUsedError;
  @JsonKey(name: "strCategory")
  String? get strCategory => throw _privateConstructorUsedError;
  @JsonKey(name: "strArea")
  String? get strArea => throw _privateConstructorUsedError;
  @JsonKey(name: "strInstructions")
  String? get strInstructions => throw _privateConstructorUsedError;
  @JsonKey(name: "strMealThumb")
  String? get strMealThumb => throw _privateConstructorUsedError;
  @JsonKey(name: "strTags")
  String? get strTags => throw _privateConstructorUsedError;
  @JsonKey(name: "strYoutube")
  String? get strYoutube => throw _privateConstructorUsedError;
  @JsonKey(name: "strIngredient1")
  String? get strIngredient1 => throw _privateConstructorUsedError;
  @JsonKey(name: "strIngredient2")
  String? get strIngredient2 => throw _privateConstructorUsedError;
  @JsonKey(name: "strIngredient3")
  String? get strIngredient3 => throw _privateConstructorUsedError;
  @JsonKey(name: "strIngredient4")
  String? get strIngredient4 => throw _privateConstructorUsedError;
  @JsonKey(name: "strIngredient5")
  String? get strIngredient5 => throw _privateConstructorUsedError;
  @JsonKey(name: "strIngredient6")
  String? get strIngredient6 => throw _privateConstructorUsedError;
  @JsonKey(name: "strIngredient7")
  String? get strIngredient7 => throw _privateConstructorUsedError;
  @JsonKey(name: "strIngredient8")
  String? get strIngredient8 => throw _privateConstructorUsedError;
  @JsonKey(name: "strIngredient9")
  String? get strIngredient9 => throw _privateConstructorUsedError;
  @JsonKey(name: "strIngredient10")
  String? get strIngredient10 => throw _privateConstructorUsedError;
  @JsonKey(name: "strIngredient11")
  String? get strIngredient11 => throw _privateConstructorUsedError;
  @JsonKey(name: "strIngredient12")
  String? get strIngredient12 => throw _privateConstructorUsedError;
  @JsonKey(name: "strIngredient13")
  String? get strIngredient13 => throw _privateConstructorUsedError;
  @JsonKey(name: "strIngredient14")
  String? get strIngredient14 => throw _privateConstructorUsedError;
  @JsonKey(name: "strIngredient15")
  String? get strIngredient15 => throw _privateConstructorUsedError;
  @JsonKey(name: "strIngredient16")
  dynamic get strIngredient16 => throw _privateConstructorUsedError;
  @JsonKey(name: "strIngredient17")
  dynamic get strIngredient17 => throw _privateConstructorUsedError;
  @JsonKey(name: "strIngredient18")
  dynamic get strIngredient18 => throw _privateConstructorUsedError;
  @JsonKey(name: "strIngredient19")
  dynamic get strIngredient19 => throw _privateConstructorUsedError;
  @JsonKey(name: "strIngredient20")
  dynamic get strIngredient20 => throw _privateConstructorUsedError;
  @JsonKey(name: "strMeasure1")
  String? get strMeasure1 => throw _privateConstructorUsedError;
  @JsonKey(name: "strMeasure2")
  String? get strMeasure2 => throw _privateConstructorUsedError;
  @JsonKey(name: "strMeasure3")
  String? get strMeasure3 => throw _privateConstructorUsedError;
  @JsonKey(name: "strMeasure4")
  String? get strMeasure4 => throw _privateConstructorUsedError;
  @JsonKey(name: "strMeasure5")
  String? get strMeasure5 => throw _privateConstructorUsedError;
  @JsonKey(name: "strMeasure6")
  String? get strMeasure6 => throw _privateConstructorUsedError;
  @JsonKey(name: "strMeasure7")
  String? get strMeasure7 => throw _privateConstructorUsedError;
  @JsonKey(name: "strMeasure8")
  String? get strMeasure8 => throw _privateConstructorUsedError;
  @JsonKey(name: "strMeasure9")
  String? get strMeasure9 => throw _privateConstructorUsedError;
  @JsonKey(name: "strMeasure10")
  String? get strMeasure10 => throw _privateConstructorUsedError;
  @JsonKey(name: "strMeasure11")
  String? get strMeasure11 => throw _privateConstructorUsedError;
  @JsonKey(name: "strMeasure12")
  String? get strMeasure12 => throw _privateConstructorUsedError;
  @JsonKey(name: "strMeasure13")
  String? get strMeasure13 => throw _privateConstructorUsedError;
  @JsonKey(name: "strMeasure14")
  String? get strMeasure14 => throw _privateConstructorUsedError;
  @JsonKey(name: "strMeasure15")
  String? get strMeasure15 => throw _privateConstructorUsedError;
  @JsonKey(name: "strMeasure16")
  dynamic get strMeasure16 => throw _privateConstructorUsedError;
  @JsonKey(name: "strMeasure17")
  dynamic get strMeasure17 => throw _privateConstructorUsedError;
  @JsonKey(name: "strMeasure18")
  dynamic get strMeasure18 => throw _privateConstructorUsedError;
  @JsonKey(name: "strMeasure19")
  dynamic get strMeasure19 => throw _privateConstructorUsedError;
  @JsonKey(name: "strMeasure20")
  dynamic get strMeasure20 => throw _privateConstructorUsedError;
  @JsonKey(name: "strSource")
  dynamic get strSource => throw _privateConstructorUsedError;
  @JsonKey(name: "strImageSource")
  dynamic get strImageSource => throw _privateConstructorUsedError;
  @JsonKey(name: "strCreativeCommonsConfirmed")
  dynamic get strCreativeCommonsConfirmed => throw _privateConstructorUsedError;
  @JsonKey(name: "dateModified")
  dynamic get dateModified => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $MealEntityCopyWith<MealEntity> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $MealEntityCopyWith<$Res> {
  factory $MealEntityCopyWith(
          MealEntity value, $Res Function(MealEntity) then) =
      _$MealEntityCopyWithImpl<$Res, MealEntity>;
  @useResult
  $Res call(
      {@JsonKey(name: "idMeal") String? idMeal,
      @JsonKey(name: "strMeal") String? strMeal,
      @JsonKey(name: "strDrinkAlternate") dynamic strDrinkAlternate,
      @JsonKey(name: "strCategory") String? strCategory,
      @JsonKey(name: "strArea") String? strArea,
      @JsonKey(name: "strInstructions") String? strInstructions,
      @JsonKey(name: "strMealThumb") String? strMealThumb,
      @JsonKey(name: "strTags") String? strTags,
      @JsonKey(name: "strYoutube") String? strYoutube,
      @JsonKey(name: "strIngredient1") String? strIngredient1,
      @JsonKey(name: "strIngredient2") String? strIngredient2,
      @JsonKey(name: "strIngredient3") String? strIngredient3,
      @JsonKey(name: "strIngredient4") String? strIngredient4,
      @JsonKey(name: "strIngredient5") String? strIngredient5,
      @JsonKey(name: "strIngredient6") String? strIngredient6,
      @JsonKey(name: "strIngredient7") String? strIngredient7,
      @JsonKey(name: "strIngredient8") String? strIngredient8,
      @JsonKey(name: "strIngredient9") String? strIngredient9,
      @JsonKey(name: "strIngredient10") String? strIngredient10,
      @JsonKey(name: "strIngredient11") String? strIngredient11,
      @JsonKey(name: "strIngredient12") String? strIngredient12,
      @JsonKey(name: "strIngredient13") String? strIngredient13,
      @JsonKey(name: "strIngredient14") String? strIngredient14,
      @JsonKey(name: "strIngredient15") String? strIngredient15,
      @JsonKey(name: "strIngredient16") dynamic strIngredient16,
      @JsonKey(name: "strIngredient17") dynamic strIngredient17,
      @JsonKey(name: "strIngredient18") dynamic strIngredient18,
      @JsonKey(name: "strIngredient19") dynamic strIngredient19,
      @JsonKey(name: "strIngredient20") dynamic strIngredient20,
      @JsonKey(name: "strMeasure1") String? strMeasure1,
      @JsonKey(name: "strMeasure2") String? strMeasure2,
      @JsonKey(name: "strMeasure3") String? strMeasure3,
      @JsonKey(name: "strMeasure4") String? strMeasure4,
      @JsonKey(name: "strMeasure5") String? strMeasure5,
      @JsonKey(name: "strMeasure6") String? strMeasure6,
      @JsonKey(name: "strMeasure7") String? strMeasure7,
      @JsonKey(name: "strMeasure8") String? strMeasure8,
      @JsonKey(name: "strMeasure9") String? strMeasure9,
      @JsonKey(name: "strMeasure10") String? strMeasure10,
      @JsonKey(name: "strMeasure11") String? strMeasure11,
      @JsonKey(name: "strMeasure12") String? strMeasure12,
      @JsonKey(name: "strMeasure13") String? strMeasure13,
      @JsonKey(name: "strMeasure14") String? strMeasure14,
      @JsonKey(name: "strMeasure15") String? strMeasure15,
      @JsonKey(name: "strMeasure16") dynamic strMeasure16,
      @JsonKey(name: "strMeasure17") dynamic strMeasure17,
      @JsonKey(name: "strMeasure18") dynamic strMeasure18,
      @JsonKey(name: "strMeasure19") dynamic strMeasure19,
      @JsonKey(name: "strMeasure20") dynamic strMeasure20,
      @JsonKey(name: "strSource") dynamic strSource,
      @JsonKey(name: "strImageSource") dynamic strImageSource,
      @JsonKey(name: "strCreativeCommonsConfirmed")
      dynamic strCreativeCommonsConfirmed,
      @JsonKey(name: "dateModified") dynamic dateModified});
}

/// @nodoc
class _$MealEntityCopyWithImpl<$Res, $Val extends MealEntity>
    implements $MealEntityCopyWith<$Res> {
  _$MealEntityCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? idMeal = freezed,
    Object? strMeal = freezed,
    Object? strDrinkAlternate = freezed,
    Object? strCategory = freezed,
    Object? strArea = freezed,
    Object? strInstructions = freezed,
    Object? strMealThumb = freezed,
    Object? strTags = freezed,
    Object? strYoutube = freezed,
    Object? strIngredient1 = freezed,
    Object? strIngredient2 = freezed,
    Object? strIngredient3 = freezed,
    Object? strIngredient4 = freezed,
    Object? strIngredient5 = freezed,
    Object? strIngredient6 = freezed,
    Object? strIngredient7 = freezed,
    Object? strIngredient8 = freezed,
    Object? strIngredient9 = freezed,
    Object? strIngredient10 = freezed,
    Object? strIngredient11 = freezed,
    Object? strIngredient12 = freezed,
    Object? strIngredient13 = freezed,
    Object? strIngredient14 = freezed,
    Object? strIngredient15 = freezed,
    Object? strIngredient16 = freezed,
    Object? strIngredient17 = freezed,
    Object? strIngredient18 = freezed,
    Object? strIngredient19 = freezed,
    Object? strIngredient20 = freezed,
    Object? strMeasure1 = freezed,
    Object? strMeasure2 = freezed,
    Object? strMeasure3 = freezed,
    Object? strMeasure4 = freezed,
    Object? strMeasure5 = freezed,
    Object? strMeasure6 = freezed,
    Object? strMeasure7 = freezed,
    Object? strMeasure8 = freezed,
    Object? strMeasure9 = freezed,
    Object? strMeasure10 = freezed,
    Object? strMeasure11 = freezed,
    Object? strMeasure12 = freezed,
    Object? strMeasure13 = freezed,
    Object? strMeasure14 = freezed,
    Object? strMeasure15 = freezed,
    Object? strMeasure16 = freezed,
    Object? strMeasure17 = freezed,
    Object? strMeasure18 = freezed,
    Object? strMeasure19 = freezed,
    Object? strMeasure20 = freezed,
    Object? strSource = freezed,
    Object? strImageSource = freezed,
    Object? strCreativeCommonsConfirmed = freezed,
    Object? dateModified = freezed,
  }) {
    return _then(_value.copyWith(
      idMeal: freezed == idMeal
          ? _value.idMeal
          : idMeal // ignore: cast_nullable_to_non_nullable
              as String?,
      strMeal: freezed == strMeal
          ? _value.strMeal
          : strMeal // ignore: cast_nullable_to_non_nullable
              as String?,
      strDrinkAlternate: freezed == strDrinkAlternate
          ? _value.strDrinkAlternate
          : strDrinkAlternate // ignore: cast_nullable_to_non_nullable
              as dynamic,
      strCategory: freezed == strCategory
          ? _value.strCategory
          : strCategory // ignore: cast_nullable_to_non_nullable
              as String?,
      strArea: freezed == strArea
          ? _value.strArea
          : strArea // ignore: cast_nullable_to_non_nullable
              as String?,
      strInstructions: freezed == strInstructions
          ? _value.strInstructions
          : strInstructions // ignore: cast_nullable_to_non_nullable
              as String?,
      strMealThumb: freezed == strMealThumb
          ? _value.strMealThumb
          : strMealThumb // ignore: cast_nullable_to_non_nullable
              as String?,
      strTags: freezed == strTags
          ? _value.strTags
          : strTags // ignore: cast_nullable_to_non_nullable
              as String?,
      strYoutube: freezed == strYoutube
          ? _value.strYoutube
          : strYoutube // ignore: cast_nullable_to_non_nullable
              as String?,
      strIngredient1: freezed == strIngredient1
          ? _value.strIngredient1
          : strIngredient1 // ignore: cast_nullable_to_non_nullable
              as String?,
      strIngredient2: freezed == strIngredient2
          ? _value.strIngredient2
          : strIngredient2 // ignore: cast_nullable_to_non_nullable
              as String?,
      strIngredient3: freezed == strIngredient3
          ? _value.strIngredient3
          : strIngredient3 // ignore: cast_nullable_to_non_nullable
              as String?,
      strIngredient4: freezed == strIngredient4
          ? _value.strIngredient4
          : strIngredient4 // ignore: cast_nullable_to_non_nullable
              as String?,
      strIngredient5: freezed == strIngredient5
          ? _value.strIngredient5
          : strIngredient5 // ignore: cast_nullable_to_non_nullable
              as String?,
      strIngredient6: freezed == strIngredient6
          ? _value.strIngredient6
          : strIngredient6 // ignore: cast_nullable_to_non_nullable
              as String?,
      strIngredient7: freezed == strIngredient7
          ? _value.strIngredient7
          : strIngredient7 // ignore: cast_nullable_to_non_nullable
              as String?,
      strIngredient8: freezed == strIngredient8
          ? _value.strIngredient8
          : strIngredient8 // ignore: cast_nullable_to_non_nullable
              as String?,
      strIngredient9: freezed == strIngredient9
          ? _value.strIngredient9
          : strIngredient9 // ignore: cast_nullable_to_non_nullable
              as String?,
      strIngredient10: freezed == strIngredient10
          ? _value.strIngredient10
          : strIngredient10 // ignore: cast_nullable_to_non_nullable
              as String?,
      strIngredient11: freezed == strIngredient11
          ? _value.strIngredient11
          : strIngredient11 // ignore: cast_nullable_to_non_nullable
              as String?,
      strIngredient12: freezed == strIngredient12
          ? _value.strIngredient12
          : strIngredient12 // ignore: cast_nullable_to_non_nullable
              as String?,
      strIngredient13: freezed == strIngredient13
          ? _value.strIngredient13
          : strIngredient13 // ignore: cast_nullable_to_non_nullable
              as String?,
      strIngredient14: freezed == strIngredient14
          ? _value.strIngredient14
          : strIngredient14 // ignore: cast_nullable_to_non_nullable
              as String?,
      strIngredient15: freezed == strIngredient15
          ? _value.strIngredient15
          : strIngredient15 // ignore: cast_nullable_to_non_nullable
              as String?,
      strIngredient16: freezed == strIngredient16
          ? _value.strIngredient16
          : strIngredient16 // ignore: cast_nullable_to_non_nullable
              as dynamic,
      strIngredient17: freezed == strIngredient17
          ? _value.strIngredient17
          : strIngredient17 // ignore: cast_nullable_to_non_nullable
              as dynamic,
      strIngredient18: freezed == strIngredient18
          ? _value.strIngredient18
          : strIngredient18 // ignore: cast_nullable_to_non_nullable
              as dynamic,
      strIngredient19: freezed == strIngredient19
          ? _value.strIngredient19
          : strIngredient19 // ignore: cast_nullable_to_non_nullable
              as dynamic,
      strIngredient20: freezed == strIngredient20
          ? _value.strIngredient20
          : strIngredient20 // ignore: cast_nullable_to_non_nullable
              as dynamic,
      strMeasure1: freezed == strMeasure1
          ? _value.strMeasure1
          : strMeasure1 // ignore: cast_nullable_to_non_nullable
              as String?,
      strMeasure2: freezed == strMeasure2
          ? _value.strMeasure2
          : strMeasure2 // ignore: cast_nullable_to_non_nullable
              as String?,
      strMeasure3: freezed == strMeasure3
          ? _value.strMeasure3
          : strMeasure3 // ignore: cast_nullable_to_non_nullable
              as String?,
      strMeasure4: freezed == strMeasure4
          ? _value.strMeasure4
          : strMeasure4 // ignore: cast_nullable_to_non_nullable
              as String?,
      strMeasure5: freezed == strMeasure5
          ? _value.strMeasure5
          : strMeasure5 // ignore: cast_nullable_to_non_nullable
              as String?,
      strMeasure6: freezed == strMeasure6
          ? _value.strMeasure6
          : strMeasure6 // ignore: cast_nullable_to_non_nullable
              as String?,
      strMeasure7: freezed == strMeasure7
          ? _value.strMeasure7
          : strMeasure7 // ignore: cast_nullable_to_non_nullable
              as String?,
      strMeasure8: freezed == strMeasure8
          ? _value.strMeasure8
          : strMeasure8 // ignore: cast_nullable_to_non_nullable
              as String?,
      strMeasure9: freezed == strMeasure9
          ? _value.strMeasure9
          : strMeasure9 // ignore: cast_nullable_to_non_nullable
              as String?,
      strMeasure10: freezed == strMeasure10
          ? _value.strMeasure10
          : strMeasure10 // ignore: cast_nullable_to_non_nullable
              as String?,
      strMeasure11: freezed == strMeasure11
          ? _value.strMeasure11
          : strMeasure11 // ignore: cast_nullable_to_non_nullable
              as String?,
      strMeasure12: freezed == strMeasure12
          ? _value.strMeasure12
          : strMeasure12 // ignore: cast_nullable_to_non_nullable
              as String?,
      strMeasure13: freezed == strMeasure13
          ? _value.strMeasure13
          : strMeasure13 // ignore: cast_nullable_to_non_nullable
              as String?,
      strMeasure14: freezed == strMeasure14
          ? _value.strMeasure14
          : strMeasure14 // ignore: cast_nullable_to_non_nullable
              as String?,
      strMeasure15: freezed == strMeasure15
          ? _value.strMeasure15
          : strMeasure15 // ignore: cast_nullable_to_non_nullable
              as String?,
      strMeasure16: freezed == strMeasure16
          ? _value.strMeasure16
          : strMeasure16 // ignore: cast_nullable_to_non_nullable
              as dynamic,
      strMeasure17: freezed == strMeasure17
          ? _value.strMeasure17
          : strMeasure17 // ignore: cast_nullable_to_non_nullable
              as dynamic,
      strMeasure18: freezed == strMeasure18
          ? _value.strMeasure18
          : strMeasure18 // ignore: cast_nullable_to_non_nullable
              as dynamic,
      strMeasure19: freezed == strMeasure19
          ? _value.strMeasure19
          : strMeasure19 // ignore: cast_nullable_to_non_nullable
              as dynamic,
      strMeasure20: freezed == strMeasure20
          ? _value.strMeasure20
          : strMeasure20 // ignore: cast_nullable_to_non_nullable
              as dynamic,
      strSource: freezed == strSource
          ? _value.strSource
          : strSource // ignore: cast_nullable_to_non_nullable
              as dynamic,
      strImageSource: freezed == strImageSource
          ? _value.strImageSource
          : strImageSource // ignore: cast_nullable_to_non_nullable
              as dynamic,
      strCreativeCommonsConfirmed: freezed == strCreativeCommonsConfirmed
          ? _value.strCreativeCommonsConfirmed
          : strCreativeCommonsConfirmed // ignore: cast_nullable_to_non_nullable
              as dynamic,
      dateModified: freezed == dateModified
          ? _value.dateModified
          : dateModified // ignore: cast_nullable_to_non_nullable
              as dynamic,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$MealEntityImplCopyWith<$Res>
    implements $MealEntityCopyWith<$Res> {
  factory _$$MealEntityImplCopyWith(
          _$MealEntityImpl value, $Res Function(_$MealEntityImpl) then) =
      __$$MealEntityImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {@JsonKey(name: "idMeal") String? idMeal,
      @JsonKey(name: "strMeal") String? strMeal,
      @JsonKey(name: "strDrinkAlternate") dynamic strDrinkAlternate,
      @JsonKey(name: "strCategory") String? strCategory,
      @JsonKey(name: "strArea") String? strArea,
      @JsonKey(name: "strInstructions") String? strInstructions,
      @JsonKey(name: "strMealThumb") String? strMealThumb,
      @JsonKey(name: "strTags") String? strTags,
      @JsonKey(name: "strYoutube") String? strYoutube,
      @JsonKey(name: "strIngredient1") String? strIngredient1,
      @JsonKey(name: "strIngredient2") String? strIngredient2,
      @JsonKey(name: "strIngredient3") String? strIngredient3,
      @JsonKey(name: "strIngredient4") String? strIngredient4,
      @JsonKey(name: "strIngredient5") String? strIngredient5,
      @JsonKey(name: "strIngredient6") String? strIngredient6,
      @JsonKey(name: "strIngredient7") String? strIngredient7,
      @JsonKey(name: "strIngredient8") String? strIngredient8,
      @JsonKey(name: "strIngredient9") String? strIngredient9,
      @JsonKey(name: "strIngredient10") String? strIngredient10,
      @JsonKey(name: "strIngredient11") String? strIngredient11,
      @JsonKey(name: "strIngredient12") String? strIngredient12,
      @JsonKey(name: "strIngredient13") String? strIngredient13,
      @JsonKey(name: "strIngredient14") String? strIngredient14,
      @JsonKey(name: "strIngredient15") String? strIngredient15,
      @JsonKey(name: "strIngredient16") dynamic strIngredient16,
      @JsonKey(name: "strIngredient17") dynamic strIngredient17,
      @JsonKey(name: "strIngredient18") dynamic strIngredient18,
      @JsonKey(name: "strIngredient19") dynamic strIngredient19,
      @JsonKey(name: "strIngredient20") dynamic strIngredient20,
      @JsonKey(name: "strMeasure1") String? strMeasure1,
      @JsonKey(name: "strMeasure2") String? strMeasure2,
      @JsonKey(name: "strMeasure3") String? strMeasure3,
      @JsonKey(name: "strMeasure4") String? strMeasure4,
      @JsonKey(name: "strMeasure5") String? strMeasure5,
      @JsonKey(name: "strMeasure6") String? strMeasure6,
      @JsonKey(name: "strMeasure7") String? strMeasure7,
      @JsonKey(name: "strMeasure8") String? strMeasure8,
      @JsonKey(name: "strMeasure9") String? strMeasure9,
      @JsonKey(name: "strMeasure10") String? strMeasure10,
      @JsonKey(name: "strMeasure11") String? strMeasure11,
      @JsonKey(name: "strMeasure12") String? strMeasure12,
      @JsonKey(name: "strMeasure13") String? strMeasure13,
      @JsonKey(name: "strMeasure14") String? strMeasure14,
      @JsonKey(name: "strMeasure15") String? strMeasure15,
      @JsonKey(name: "strMeasure16") dynamic strMeasure16,
      @JsonKey(name: "strMeasure17") dynamic strMeasure17,
      @JsonKey(name: "strMeasure18") dynamic strMeasure18,
      @JsonKey(name: "strMeasure19") dynamic strMeasure19,
      @JsonKey(name: "strMeasure20") dynamic strMeasure20,
      @JsonKey(name: "strSource") dynamic strSource,
      @JsonKey(name: "strImageSource") dynamic strImageSource,
      @JsonKey(name: "strCreativeCommonsConfirmed")
      dynamic strCreativeCommonsConfirmed,
      @JsonKey(name: "dateModified") dynamic dateModified});
}

/// @nodoc
class __$$MealEntityImplCopyWithImpl<$Res>
    extends _$MealEntityCopyWithImpl<$Res, _$MealEntityImpl>
    implements _$$MealEntityImplCopyWith<$Res> {
  __$$MealEntityImplCopyWithImpl(
      _$MealEntityImpl _value, $Res Function(_$MealEntityImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? idMeal = freezed,
    Object? strMeal = freezed,
    Object? strDrinkAlternate = freezed,
    Object? strCategory = freezed,
    Object? strArea = freezed,
    Object? strInstructions = freezed,
    Object? strMealThumb = freezed,
    Object? strTags = freezed,
    Object? strYoutube = freezed,
    Object? strIngredient1 = freezed,
    Object? strIngredient2 = freezed,
    Object? strIngredient3 = freezed,
    Object? strIngredient4 = freezed,
    Object? strIngredient5 = freezed,
    Object? strIngredient6 = freezed,
    Object? strIngredient7 = freezed,
    Object? strIngredient8 = freezed,
    Object? strIngredient9 = freezed,
    Object? strIngredient10 = freezed,
    Object? strIngredient11 = freezed,
    Object? strIngredient12 = freezed,
    Object? strIngredient13 = freezed,
    Object? strIngredient14 = freezed,
    Object? strIngredient15 = freezed,
    Object? strIngredient16 = freezed,
    Object? strIngredient17 = freezed,
    Object? strIngredient18 = freezed,
    Object? strIngredient19 = freezed,
    Object? strIngredient20 = freezed,
    Object? strMeasure1 = freezed,
    Object? strMeasure2 = freezed,
    Object? strMeasure3 = freezed,
    Object? strMeasure4 = freezed,
    Object? strMeasure5 = freezed,
    Object? strMeasure6 = freezed,
    Object? strMeasure7 = freezed,
    Object? strMeasure8 = freezed,
    Object? strMeasure9 = freezed,
    Object? strMeasure10 = freezed,
    Object? strMeasure11 = freezed,
    Object? strMeasure12 = freezed,
    Object? strMeasure13 = freezed,
    Object? strMeasure14 = freezed,
    Object? strMeasure15 = freezed,
    Object? strMeasure16 = freezed,
    Object? strMeasure17 = freezed,
    Object? strMeasure18 = freezed,
    Object? strMeasure19 = freezed,
    Object? strMeasure20 = freezed,
    Object? strSource = freezed,
    Object? strImageSource = freezed,
    Object? strCreativeCommonsConfirmed = freezed,
    Object? dateModified = freezed,
  }) {
    return _then(_$MealEntityImpl(
      idMeal: freezed == idMeal
          ? _value.idMeal
          : idMeal // ignore: cast_nullable_to_non_nullable
              as String?,
      strMeal: freezed == strMeal
          ? _value.strMeal
          : strMeal // ignore: cast_nullable_to_non_nullable
              as String?,
      strDrinkAlternate: freezed == strDrinkAlternate
          ? _value.strDrinkAlternate
          : strDrinkAlternate // ignore: cast_nullable_to_non_nullable
              as dynamic,
      strCategory: freezed == strCategory
          ? _value.strCategory
          : strCategory // ignore: cast_nullable_to_non_nullable
              as String?,
      strArea: freezed == strArea
          ? _value.strArea
          : strArea // ignore: cast_nullable_to_non_nullable
              as String?,
      strInstructions: freezed == strInstructions
          ? _value.strInstructions
          : strInstructions // ignore: cast_nullable_to_non_nullable
              as String?,
      strMealThumb: freezed == strMealThumb
          ? _value.strMealThumb
          : strMealThumb // ignore: cast_nullable_to_non_nullable
              as String?,
      strTags: freezed == strTags
          ? _value.strTags
          : strTags // ignore: cast_nullable_to_non_nullable
              as String?,
      strYoutube: freezed == strYoutube
          ? _value.strYoutube
          : strYoutube // ignore: cast_nullable_to_non_nullable
              as String?,
      strIngredient1: freezed == strIngredient1
          ? _value.strIngredient1
          : strIngredient1 // ignore: cast_nullable_to_non_nullable
              as String?,
      strIngredient2: freezed == strIngredient2
          ? _value.strIngredient2
          : strIngredient2 // ignore: cast_nullable_to_non_nullable
              as String?,
      strIngredient3: freezed == strIngredient3
          ? _value.strIngredient3
          : strIngredient3 // ignore: cast_nullable_to_non_nullable
              as String?,
      strIngredient4: freezed == strIngredient4
          ? _value.strIngredient4
          : strIngredient4 // ignore: cast_nullable_to_non_nullable
              as String?,
      strIngredient5: freezed == strIngredient5
          ? _value.strIngredient5
          : strIngredient5 // ignore: cast_nullable_to_non_nullable
              as String?,
      strIngredient6: freezed == strIngredient6
          ? _value.strIngredient6
          : strIngredient6 // ignore: cast_nullable_to_non_nullable
              as String?,
      strIngredient7: freezed == strIngredient7
          ? _value.strIngredient7
          : strIngredient7 // ignore: cast_nullable_to_non_nullable
              as String?,
      strIngredient8: freezed == strIngredient8
          ? _value.strIngredient8
          : strIngredient8 // ignore: cast_nullable_to_non_nullable
              as String?,
      strIngredient9: freezed == strIngredient9
          ? _value.strIngredient9
          : strIngredient9 // ignore: cast_nullable_to_non_nullable
              as String?,
      strIngredient10: freezed == strIngredient10
          ? _value.strIngredient10
          : strIngredient10 // ignore: cast_nullable_to_non_nullable
              as String?,
      strIngredient11: freezed == strIngredient11
          ? _value.strIngredient11
          : strIngredient11 // ignore: cast_nullable_to_non_nullable
              as String?,
      strIngredient12: freezed == strIngredient12
          ? _value.strIngredient12
          : strIngredient12 // ignore: cast_nullable_to_non_nullable
              as String?,
      strIngredient13: freezed == strIngredient13
          ? _value.strIngredient13
          : strIngredient13 // ignore: cast_nullable_to_non_nullable
              as String?,
      strIngredient14: freezed == strIngredient14
          ? _value.strIngredient14
          : strIngredient14 // ignore: cast_nullable_to_non_nullable
              as String?,
      strIngredient15: freezed == strIngredient15
          ? _value.strIngredient15
          : strIngredient15 // ignore: cast_nullable_to_non_nullable
              as String?,
      strIngredient16: freezed == strIngredient16
          ? _value.strIngredient16
          : strIngredient16 // ignore: cast_nullable_to_non_nullable
              as dynamic,
      strIngredient17: freezed == strIngredient17
          ? _value.strIngredient17
          : strIngredient17 // ignore: cast_nullable_to_non_nullable
              as dynamic,
      strIngredient18: freezed == strIngredient18
          ? _value.strIngredient18
          : strIngredient18 // ignore: cast_nullable_to_non_nullable
              as dynamic,
      strIngredient19: freezed == strIngredient19
          ? _value.strIngredient19
          : strIngredient19 // ignore: cast_nullable_to_non_nullable
              as dynamic,
      strIngredient20: freezed == strIngredient20
          ? _value.strIngredient20
          : strIngredient20 // ignore: cast_nullable_to_non_nullable
              as dynamic,
      strMeasure1: freezed == strMeasure1
          ? _value.strMeasure1
          : strMeasure1 // ignore: cast_nullable_to_non_nullable
              as String?,
      strMeasure2: freezed == strMeasure2
          ? _value.strMeasure2
          : strMeasure2 // ignore: cast_nullable_to_non_nullable
              as String?,
      strMeasure3: freezed == strMeasure3
          ? _value.strMeasure3
          : strMeasure3 // ignore: cast_nullable_to_non_nullable
              as String?,
      strMeasure4: freezed == strMeasure4
          ? _value.strMeasure4
          : strMeasure4 // ignore: cast_nullable_to_non_nullable
              as String?,
      strMeasure5: freezed == strMeasure5
          ? _value.strMeasure5
          : strMeasure5 // ignore: cast_nullable_to_non_nullable
              as String?,
      strMeasure6: freezed == strMeasure6
          ? _value.strMeasure6
          : strMeasure6 // ignore: cast_nullable_to_non_nullable
              as String?,
      strMeasure7: freezed == strMeasure7
          ? _value.strMeasure7
          : strMeasure7 // ignore: cast_nullable_to_non_nullable
              as String?,
      strMeasure8: freezed == strMeasure8
          ? _value.strMeasure8
          : strMeasure8 // ignore: cast_nullable_to_non_nullable
              as String?,
      strMeasure9: freezed == strMeasure9
          ? _value.strMeasure9
          : strMeasure9 // ignore: cast_nullable_to_non_nullable
              as String?,
      strMeasure10: freezed == strMeasure10
          ? _value.strMeasure10
          : strMeasure10 // ignore: cast_nullable_to_non_nullable
              as String?,
      strMeasure11: freezed == strMeasure11
          ? _value.strMeasure11
          : strMeasure11 // ignore: cast_nullable_to_non_nullable
              as String?,
      strMeasure12: freezed == strMeasure12
          ? _value.strMeasure12
          : strMeasure12 // ignore: cast_nullable_to_non_nullable
              as String?,
      strMeasure13: freezed == strMeasure13
          ? _value.strMeasure13
          : strMeasure13 // ignore: cast_nullable_to_non_nullable
              as String?,
      strMeasure14: freezed == strMeasure14
          ? _value.strMeasure14
          : strMeasure14 // ignore: cast_nullable_to_non_nullable
              as String?,
      strMeasure15: freezed == strMeasure15
          ? _value.strMeasure15
          : strMeasure15 // ignore: cast_nullable_to_non_nullable
              as String?,
      strMeasure16: freezed == strMeasure16
          ? _value.strMeasure16
          : strMeasure16 // ignore: cast_nullable_to_non_nullable
              as dynamic,
      strMeasure17: freezed == strMeasure17
          ? _value.strMeasure17
          : strMeasure17 // ignore: cast_nullable_to_non_nullable
              as dynamic,
      strMeasure18: freezed == strMeasure18
          ? _value.strMeasure18
          : strMeasure18 // ignore: cast_nullable_to_non_nullable
              as dynamic,
      strMeasure19: freezed == strMeasure19
          ? _value.strMeasure19
          : strMeasure19 // ignore: cast_nullable_to_non_nullable
              as dynamic,
      strMeasure20: freezed == strMeasure20
          ? _value.strMeasure20
          : strMeasure20 // ignore: cast_nullable_to_non_nullable
              as dynamic,
      strSource: freezed == strSource
          ? _value.strSource
          : strSource // ignore: cast_nullable_to_non_nullable
              as dynamic,
      strImageSource: freezed == strImageSource
          ? _value.strImageSource
          : strImageSource // ignore: cast_nullable_to_non_nullable
              as dynamic,
      strCreativeCommonsConfirmed: freezed == strCreativeCommonsConfirmed
          ? _value.strCreativeCommonsConfirmed
          : strCreativeCommonsConfirmed // ignore: cast_nullable_to_non_nullable
              as dynamic,
      dateModified: freezed == dateModified
          ? _value.dateModified
          : dateModified // ignore: cast_nullable_to_non_nullable
              as dynamic,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$MealEntityImpl implements _MealEntity {
  const _$MealEntityImpl(
      {@JsonKey(name: "idMeal") this.idMeal,
      @JsonKey(name: "strMeal") this.strMeal,
      @JsonKey(name: "strDrinkAlternate") this.strDrinkAlternate,
      @JsonKey(name: "strCategory") this.strCategory,
      @JsonKey(name: "strArea") this.strArea,
      @JsonKey(name: "strInstructions") this.strInstructions,
      @JsonKey(name: "strMealThumb") this.strMealThumb,
      @JsonKey(name: "strTags") this.strTags,
      @JsonKey(name: "strYoutube") this.strYoutube,
      @JsonKey(name: "strIngredient1") this.strIngredient1,
      @JsonKey(name: "strIngredient2") this.strIngredient2,
      @JsonKey(name: "strIngredient3") this.strIngredient3,
      @JsonKey(name: "strIngredient4") this.strIngredient4,
      @JsonKey(name: "strIngredient5") this.strIngredient5,
      @JsonKey(name: "strIngredient6") this.strIngredient6,
      @JsonKey(name: "strIngredient7") this.strIngredient7,
      @JsonKey(name: "strIngredient8") this.strIngredient8,
      @JsonKey(name: "strIngredient9") this.strIngredient9,
      @JsonKey(name: "strIngredient10") this.strIngredient10,
      @JsonKey(name: "strIngredient11") this.strIngredient11,
      @JsonKey(name: "strIngredient12") this.strIngredient12,
      @JsonKey(name: "strIngredient13") this.strIngredient13,
      @JsonKey(name: "strIngredient14") this.strIngredient14,
      @JsonKey(name: "strIngredient15") this.strIngredient15,
      @JsonKey(name: "strIngredient16") this.strIngredient16,
      @JsonKey(name: "strIngredient17") this.strIngredient17,
      @JsonKey(name: "strIngredient18") this.strIngredient18,
      @JsonKey(name: "strIngredient19") this.strIngredient19,
      @JsonKey(name: "strIngredient20") this.strIngredient20,
      @JsonKey(name: "strMeasure1") this.strMeasure1,
      @JsonKey(name: "strMeasure2") this.strMeasure2,
      @JsonKey(name: "strMeasure3") this.strMeasure3,
      @JsonKey(name: "strMeasure4") this.strMeasure4,
      @JsonKey(name: "strMeasure5") this.strMeasure5,
      @JsonKey(name: "strMeasure6") this.strMeasure6,
      @JsonKey(name: "strMeasure7") this.strMeasure7,
      @JsonKey(name: "strMeasure8") this.strMeasure8,
      @JsonKey(name: "strMeasure9") this.strMeasure9,
      @JsonKey(name: "strMeasure10") this.strMeasure10,
      @JsonKey(name: "strMeasure11") this.strMeasure11,
      @JsonKey(name: "strMeasure12") this.strMeasure12,
      @JsonKey(name: "strMeasure13") this.strMeasure13,
      @JsonKey(name: "strMeasure14") this.strMeasure14,
      @JsonKey(name: "strMeasure15") this.strMeasure15,
      @JsonKey(name: "strMeasure16") this.strMeasure16,
      @JsonKey(name: "strMeasure17") this.strMeasure17,
      @JsonKey(name: "strMeasure18") this.strMeasure18,
      @JsonKey(name: "strMeasure19") this.strMeasure19,
      @JsonKey(name: "strMeasure20") this.strMeasure20,
      @JsonKey(name: "strSource") this.strSource,
      @JsonKey(name: "strImageSource") this.strImageSource,
      @JsonKey(name: "strCreativeCommonsConfirmed")
      this.strCreativeCommonsConfirmed,
      @JsonKey(name: "dateModified") this.dateModified});

  factory _$MealEntityImpl.fromJson(Map<String, dynamic> json) =>
      _$$MealEntityImplFromJson(json);

  @override
  @JsonKey(name: "idMeal")
  final String? idMeal;
  @override
  @JsonKey(name: "strMeal")
  final String? strMeal;
  @override
  @JsonKey(name: "strDrinkAlternate")
  final dynamic strDrinkAlternate;
  @override
  @JsonKey(name: "strCategory")
  final String? strCategory;
  @override
  @JsonKey(name: "strArea")
  final String? strArea;
  @override
  @JsonKey(name: "strInstructions")
  final String? strInstructions;
  @override
  @JsonKey(name: "strMealThumb")
  final String? strMealThumb;
  @override
  @JsonKey(name: "strTags")
  final String? strTags;
  @override
  @JsonKey(name: "strYoutube")
  final String? strYoutube;
  @override
  @JsonKey(name: "strIngredient1")
  final String? strIngredient1;
  @override
  @JsonKey(name: "strIngredient2")
  final String? strIngredient2;
  @override
  @JsonKey(name: "strIngredient3")
  final String? strIngredient3;
  @override
  @JsonKey(name: "strIngredient4")
  final String? strIngredient4;
  @override
  @JsonKey(name: "strIngredient5")
  final String? strIngredient5;
  @override
  @JsonKey(name: "strIngredient6")
  final String? strIngredient6;
  @override
  @JsonKey(name: "strIngredient7")
  final String? strIngredient7;
  @override
  @JsonKey(name: "strIngredient8")
  final String? strIngredient8;
  @override
  @JsonKey(name: "strIngredient9")
  final String? strIngredient9;
  @override
  @JsonKey(name: "strIngredient10")
  final String? strIngredient10;
  @override
  @JsonKey(name: "strIngredient11")
  final String? strIngredient11;
  @override
  @JsonKey(name: "strIngredient12")
  final String? strIngredient12;
  @override
  @JsonKey(name: "strIngredient13")
  final String? strIngredient13;
  @override
  @JsonKey(name: "strIngredient14")
  final String? strIngredient14;
  @override
  @JsonKey(name: "strIngredient15")
  final String? strIngredient15;
  @override
  @JsonKey(name: "strIngredient16")
  final dynamic strIngredient16;
  @override
  @JsonKey(name: "strIngredient17")
  final dynamic strIngredient17;
  @override
  @JsonKey(name: "strIngredient18")
  final dynamic strIngredient18;
  @override
  @JsonKey(name: "strIngredient19")
  final dynamic strIngredient19;
  @override
  @JsonKey(name: "strIngredient20")
  final dynamic strIngredient20;
  @override
  @JsonKey(name: "strMeasure1")
  final String? strMeasure1;
  @override
  @JsonKey(name: "strMeasure2")
  final String? strMeasure2;
  @override
  @JsonKey(name: "strMeasure3")
  final String? strMeasure3;
  @override
  @JsonKey(name: "strMeasure4")
  final String? strMeasure4;
  @override
  @JsonKey(name: "strMeasure5")
  final String? strMeasure5;
  @override
  @JsonKey(name: "strMeasure6")
  final String? strMeasure6;
  @override
  @JsonKey(name: "strMeasure7")
  final String? strMeasure7;
  @override
  @JsonKey(name: "strMeasure8")
  final String? strMeasure8;
  @override
  @JsonKey(name: "strMeasure9")
  final String? strMeasure9;
  @override
  @JsonKey(name: "strMeasure10")
  final String? strMeasure10;
  @override
  @JsonKey(name: "strMeasure11")
  final String? strMeasure11;
  @override
  @JsonKey(name: "strMeasure12")
  final String? strMeasure12;
  @override
  @JsonKey(name: "strMeasure13")
  final String? strMeasure13;
  @override
  @JsonKey(name: "strMeasure14")
  final String? strMeasure14;
  @override
  @JsonKey(name: "strMeasure15")
  final String? strMeasure15;
  @override
  @JsonKey(name: "strMeasure16")
  final dynamic strMeasure16;
  @override
  @JsonKey(name: "strMeasure17")
  final dynamic strMeasure17;
  @override
  @JsonKey(name: "strMeasure18")
  final dynamic strMeasure18;
  @override
  @JsonKey(name: "strMeasure19")
  final dynamic strMeasure19;
  @override
  @JsonKey(name: "strMeasure20")
  final dynamic strMeasure20;
  @override
  @JsonKey(name: "strSource")
  final dynamic strSource;
  @override
  @JsonKey(name: "strImageSource")
  final dynamic strImageSource;
  @override
  @JsonKey(name: "strCreativeCommonsConfirmed")
  final dynamic strCreativeCommonsConfirmed;
  @override
  @JsonKey(name: "dateModified")
  final dynamic dateModified;

  @override
  String toString() {
    return 'MealEntity(idMeal: $idMeal, strMeal: $strMeal, strDrinkAlternate: $strDrinkAlternate, strCategory: $strCategory, strArea: $strArea, strInstructions: $strInstructions, strMealThumb: $strMealThumb, strTags: $strTags, strYoutube: $strYoutube, strIngredient1: $strIngredient1, strIngredient2: $strIngredient2, strIngredient3: $strIngredient3, strIngredient4: $strIngredient4, strIngredient5: $strIngredient5, strIngredient6: $strIngredient6, strIngredient7: $strIngredient7, strIngredient8: $strIngredient8, strIngredient9: $strIngredient9, strIngredient10: $strIngredient10, strIngredient11: $strIngredient11, strIngredient12: $strIngredient12, strIngredient13: $strIngredient13, strIngredient14: $strIngredient14, strIngredient15: $strIngredient15, strIngredient16: $strIngredient16, strIngredient17: $strIngredient17, strIngredient18: $strIngredient18, strIngredient19: $strIngredient19, strIngredient20: $strIngredient20, strMeasure1: $strMeasure1, strMeasure2: $strMeasure2, strMeasure3: $strMeasure3, strMeasure4: $strMeasure4, strMeasure5: $strMeasure5, strMeasure6: $strMeasure6, strMeasure7: $strMeasure7, strMeasure8: $strMeasure8, strMeasure9: $strMeasure9, strMeasure10: $strMeasure10, strMeasure11: $strMeasure11, strMeasure12: $strMeasure12, strMeasure13: $strMeasure13, strMeasure14: $strMeasure14, strMeasure15: $strMeasure15, strMeasure16: $strMeasure16, strMeasure17: $strMeasure17, strMeasure18: $strMeasure18, strMeasure19: $strMeasure19, strMeasure20: $strMeasure20, strSource: $strSource, strImageSource: $strImageSource, strCreativeCommonsConfirmed: $strCreativeCommonsConfirmed, dateModified: $dateModified)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$MealEntityImpl &&
            (identical(other.idMeal, idMeal) || other.idMeal == idMeal) &&
            (identical(other.strMeal, strMeal) || other.strMeal == strMeal) &&
            const DeepCollectionEquality()
                .equals(other.strDrinkAlternate, strDrinkAlternate) &&
            (identical(other.strCategory, strCategory) ||
                other.strCategory == strCategory) &&
            (identical(other.strArea, strArea) || other.strArea == strArea) &&
            (identical(other.strInstructions, strInstructions) ||
                other.strInstructions == strInstructions) &&
            (identical(other.strMealThumb, strMealThumb) ||
                other.strMealThumb == strMealThumb) &&
            (identical(other.strTags, strTags) || other.strTags == strTags) &&
            (identical(other.strYoutube, strYoutube) ||
                other.strYoutube == strYoutube) &&
            (identical(other.strIngredient1, strIngredient1) ||
                other.strIngredient1 == strIngredient1) &&
            (identical(other.strIngredient2, strIngredient2) ||
                other.strIngredient2 == strIngredient2) &&
            (identical(other.strIngredient3, strIngredient3) ||
                other.strIngredient3 == strIngredient3) &&
            (identical(other.strIngredient4, strIngredient4) ||
                other.strIngredient4 == strIngredient4) &&
            (identical(other.strIngredient5, strIngredient5) ||
                other.strIngredient5 == strIngredient5) &&
            (identical(other.strIngredient6, strIngredient6) ||
                other.strIngredient6 == strIngredient6) &&
            (identical(other.strIngredient7, strIngredient7) ||
                other.strIngredient7 == strIngredient7) &&
            (identical(other.strIngredient8, strIngredient8) ||
                other.strIngredient8 == strIngredient8) &&
            (identical(other.strIngredient9, strIngredient9) ||
                other.strIngredient9 == strIngredient9) &&
            (identical(other.strIngredient10, strIngredient10) ||
                other.strIngredient10 == strIngredient10) &&
            (identical(other.strIngredient11, strIngredient11) ||
                other.strIngredient11 == strIngredient11) &&
            (identical(other.strIngredient12, strIngredient12) ||
                other.strIngredient12 == strIngredient12) &&
            (identical(other.strIngredient13, strIngredient13) ||
                other.strIngredient13 == strIngredient13) &&
            (identical(other.strIngredient14, strIngredient14) ||
                other.strIngredient14 == strIngredient14) &&
            (identical(other.strIngredient15, strIngredient15) ||
                other.strIngredient15 == strIngredient15) &&
            const DeepCollectionEquality()
                .equals(other.strIngredient16, strIngredient16) &&
            const DeepCollectionEquality()
                .equals(other.strIngredient17, strIngredient17) &&
            const DeepCollectionEquality()
                .equals(other.strIngredient18, strIngredient18) &&
            const DeepCollectionEquality()
                .equals(other.strIngredient19, strIngredient19) &&
            const DeepCollectionEquality()
                .equals(other.strIngredient20, strIngredient20) &&
            (identical(other.strMeasure1, strMeasure1) ||
                other.strMeasure1 == strMeasure1) &&
            (identical(other.strMeasure2, strMeasure2) ||
                other.strMeasure2 == strMeasure2) &&
            (identical(other.strMeasure3, strMeasure3) ||
                other.strMeasure3 == strMeasure3) &&
            (identical(other.strMeasure4, strMeasure4) ||
                other.strMeasure4 == strMeasure4) &&
            (identical(other.strMeasure5, strMeasure5) ||
                other.strMeasure5 == strMeasure5) &&
            (identical(other.strMeasure6, strMeasure6) ||
                other.strMeasure6 == strMeasure6) &&
            (identical(other.strMeasure7, strMeasure7) ||
                other.strMeasure7 == strMeasure7) &&
            (identical(other.strMeasure8, strMeasure8) ||
                other.strMeasure8 == strMeasure8) &&
            (identical(other.strMeasure9, strMeasure9) ||
                other.strMeasure9 == strMeasure9) &&
            (identical(other.strMeasure10, strMeasure10) ||
                other.strMeasure10 == strMeasure10) &&
            (identical(other.strMeasure11, strMeasure11) ||
                other.strMeasure11 == strMeasure11) &&
            (identical(other.strMeasure12, strMeasure12) ||
                other.strMeasure12 == strMeasure12) &&
            (identical(other.strMeasure13, strMeasure13) ||
                other.strMeasure13 == strMeasure13) &&
            (identical(other.strMeasure14, strMeasure14) ||
                other.strMeasure14 == strMeasure14) &&
            (identical(other.strMeasure15, strMeasure15) ||
                other.strMeasure15 == strMeasure15) &&
            const DeepCollectionEquality()
                .equals(other.strMeasure16, strMeasure16) &&
            const DeepCollectionEquality()
                .equals(other.strMeasure17, strMeasure17) &&
            const DeepCollectionEquality().equals(other.strMeasure18, strMeasure18) &&
            const DeepCollectionEquality().equals(other.strMeasure19, strMeasure19) &&
            const DeepCollectionEquality().equals(other.strMeasure20, strMeasure20) &&
            const DeepCollectionEquality().equals(other.strSource, strSource) &&
            const DeepCollectionEquality().equals(other.strImageSource, strImageSource) &&
            const DeepCollectionEquality().equals(other.strCreativeCommonsConfirmed, strCreativeCommonsConfirmed) &&
            const DeepCollectionEquality().equals(other.dateModified, dateModified));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hashAll([
        runtimeType,
        idMeal,
        strMeal,
        const DeepCollectionEquality().hash(strDrinkAlternate),
        strCategory,
        strArea,
        strInstructions,
        strMealThumb,
        strTags,
        strYoutube,
        strIngredient1,
        strIngredient2,
        strIngredient3,
        strIngredient4,
        strIngredient5,
        strIngredient6,
        strIngredient7,
        strIngredient8,
        strIngredient9,
        strIngredient10,
        strIngredient11,
        strIngredient12,
        strIngredient13,
        strIngredient14,
        strIngredient15,
        const DeepCollectionEquality().hash(strIngredient16),
        const DeepCollectionEquality().hash(strIngredient17),
        const DeepCollectionEquality().hash(strIngredient18),
        const DeepCollectionEquality().hash(strIngredient19),
        const DeepCollectionEquality().hash(strIngredient20),
        strMeasure1,
        strMeasure2,
        strMeasure3,
        strMeasure4,
        strMeasure5,
        strMeasure6,
        strMeasure7,
        strMeasure8,
        strMeasure9,
        strMeasure10,
        strMeasure11,
        strMeasure12,
        strMeasure13,
        strMeasure14,
        strMeasure15,
        const DeepCollectionEquality().hash(strMeasure16),
        const DeepCollectionEquality().hash(strMeasure17),
        const DeepCollectionEquality().hash(strMeasure18),
        const DeepCollectionEquality().hash(strMeasure19),
        const DeepCollectionEquality().hash(strMeasure20),
        const DeepCollectionEquality().hash(strSource),
        const DeepCollectionEquality().hash(strImageSource),
        const DeepCollectionEquality().hash(strCreativeCommonsConfirmed),
        const DeepCollectionEquality().hash(dateModified)
      ]);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$MealEntityImplCopyWith<_$MealEntityImpl> get copyWith =>
      __$$MealEntityImplCopyWithImpl<_$MealEntityImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$MealEntityImplToJson(
      this,
    );
  }
}

abstract class _MealEntity implements MealEntity {
  const factory _MealEntity(
          {@JsonKey(name: "idMeal") final String? idMeal,
          @JsonKey(name: "strMeal") final String? strMeal,
          @JsonKey(name: "strDrinkAlternate") final dynamic strDrinkAlternate,
          @JsonKey(name: "strCategory") final String? strCategory,
          @JsonKey(name: "strArea") final String? strArea,
          @JsonKey(name: "strInstructions") final String? strInstructions,
          @JsonKey(name: "strMealThumb") final String? strMealThumb,
          @JsonKey(name: "strTags") final String? strTags,
          @JsonKey(name: "strYoutube") final String? strYoutube,
          @JsonKey(name: "strIngredient1") final String? strIngredient1,
          @JsonKey(name: "strIngredient2") final String? strIngredient2,
          @JsonKey(name: "strIngredient3") final String? strIngredient3,
          @JsonKey(name: "strIngredient4") final String? strIngredient4,
          @JsonKey(name: "strIngredient5") final String? strIngredient5,
          @JsonKey(name: "strIngredient6") final String? strIngredient6,
          @JsonKey(name: "strIngredient7") final String? strIngredient7,
          @JsonKey(name: "strIngredient8") final String? strIngredient8,
          @JsonKey(name: "strIngredient9") final String? strIngredient9,
          @JsonKey(name: "strIngredient10") final String? strIngredient10,
          @JsonKey(name: "strIngredient11") final String? strIngredient11,
          @JsonKey(name: "strIngredient12") final String? strIngredient12,
          @JsonKey(name: "strIngredient13") final String? strIngredient13,
          @JsonKey(name: "strIngredient14") final String? strIngredient14,
          @JsonKey(name: "strIngredient15") final String? strIngredient15,
          @JsonKey(name: "strIngredient16") final dynamic strIngredient16,
          @JsonKey(name: "strIngredient17") final dynamic strIngredient17,
          @JsonKey(name: "strIngredient18") final dynamic strIngredient18,
          @JsonKey(name: "strIngredient19") final dynamic strIngredient19,
          @JsonKey(name: "strIngredient20") final dynamic strIngredient20,
          @JsonKey(name: "strMeasure1") final String? strMeasure1,
          @JsonKey(name: "strMeasure2") final String? strMeasure2,
          @JsonKey(name: "strMeasure3") final String? strMeasure3,
          @JsonKey(name: "strMeasure4") final String? strMeasure4,
          @JsonKey(name: "strMeasure5") final String? strMeasure5,
          @JsonKey(name: "strMeasure6") final String? strMeasure6,
          @JsonKey(name: "strMeasure7") final String? strMeasure7,
          @JsonKey(name: "strMeasure8") final String? strMeasure8,
          @JsonKey(name: "strMeasure9") final String? strMeasure9,
          @JsonKey(name: "strMeasure10") final String? strMeasure10,
          @JsonKey(name: "strMeasure11") final String? strMeasure11,
          @JsonKey(name: "strMeasure12") final String? strMeasure12,
          @JsonKey(name: "strMeasure13") final String? strMeasure13,
          @JsonKey(name: "strMeasure14") final String? strMeasure14,
          @JsonKey(name: "strMeasure15") final String? strMeasure15,
          @JsonKey(name: "strMeasure16") final dynamic strMeasure16,
          @JsonKey(name: "strMeasure17") final dynamic strMeasure17,
          @JsonKey(name: "strMeasure18") final dynamic strMeasure18,
          @JsonKey(name: "strMeasure19") final dynamic strMeasure19,
          @JsonKey(name: "strMeasure20") final dynamic strMeasure20,
          @JsonKey(name: "strSource") final dynamic strSource,
          @JsonKey(name: "strImageSource") final dynamic strImageSource,
          @JsonKey(name: "strCreativeCommonsConfirmed")
          final dynamic strCreativeCommonsConfirmed,
          @JsonKey(name: "dateModified") final dynamic dateModified}) =
      _$MealEntityImpl;

  factory _MealEntity.fromJson(Map<String, dynamic> json) =
      _$MealEntityImpl.fromJson;

  @override
  @JsonKey(name: "idMeal")
  String? get idMeal;
  @override
  @JsonKey(name: "strMeal")
  String? get strMeal;
  @override
  @JsonKey(name: "strDrinkAlternate")
  dynamic get strDrinkAlternate;
  @override
  @JsonKey(name: "strCategory")
  String? get strCategory;
  @override
  @JsonKey(name: "strArea")
  String? get strArea;
  @override
  @JsonKey(name: "strInstructions")
  String? get strInstructions;
  @override
  @JsonKey(name: "strMealThumb")
  String? get strMealThumb;
  @override
  @JsonKey(name: "strTags")
  String? get strTags;
  @override
  @JsonKey(name: "strYoutube")
  String? get strYoutube;
  @override
  @JsonKey(name: "strIngredient1")
  String? get strIngredient1;
  @override
  @JsonKey(name: "strIngredient2")
  String? get strIngredient2;
  @override
  @JsonKey(name: "strIngredient3")
  String? get strIngredient3;
  @override
  @JsonKey(name: "strIngredient4")
  String? get strIngredient4;
  @override
  @JsonKey(name: "strIngredient5")
  String? get strIngredient5;
  @override
  @JsonKey(name: "strIngredient6")
  String? get strIngredient6;
  @override
  @JsonKey(name: "strIngredient7")
  String? get strIngredient7;
  @override
  @JsonKey(name: "strIngredient8")
  String? get strIngredient8;
  @override
  @JsonKey(name: "strIngredient9")
  String? get strIngredient9;
  @override
  @JsonKey(name: "strIngredient10")
  String? get strIngredient10;
  @override
  @JsonKey(name: "strIngredient11")
  String? get strIngredient11;
  @override
  @JsonKey(name: "strIngredient12")
  String? get strIngredient12;
  @override
  @JsonKey(name: "strIngredient13")
  String? get strIngredient13;
  @override
  @JsonKey(name: "strIngredient14")
  String? get strIngredient14;
  @override
  @JsonKey(name: "strIngredient15")
  String? get strIngredient15;
  @override
  @JsonKey(name: "strIngredient16")
  dynamic get strIngredient16;
  @override
  @JsonKey(name: "strIngredient17")
  dynamic get strIngredient17;
  @override
  @JsonKey(name: "strIngredient18")
  dynamic get strIngredient18;
  @override
  @JsonKey(name: "strIngredient19")
  dynamic get strIngredient19;
  @override
  @JsonKey(name: "strIngredient20")
  dynamic get strIngredient20;
  @override
  @JsonKey(name: "strMeasure1")
  String? get strMeasure1;
  @override
  @JsonKey(name: "strMeasure2")
  String? get strMeasure2;
  @override
  @JsonKey(name: "strMeasure3")
  String? get strMeasure3;
  @override
  @JsonKey(name: "strMeasure4")
  String? get strMeasure4;
  @override
  @JsonKey(name: "strMeasure5")
  String? get strMeasure5;
  @override
  @JsonKey(name: "strMeasure6")
  String? get strMeasure6;
  @override
  @JsonKey(name: "strMeasure7")
  String? get strMeasure7;
  @override
  @JsonKey(name: "strMeasure8")
  String? get strMeasure8;
  @override
  @JsonKey(name: "strMeasure9")
  String? get strMeasure9;
  @override
  @JsonKey(name: "strMeasure10")
  String? get strMeasure10;
  @override
  @JsonKey(name: "strMeasure11")
  String? get strMeasure11;
  @override
  @JsonKey(name: "strMeasure12")
  String? get strMeasure12;
  @override
  @JsonKey(name: "strMeasure13")
  String? get strMeasure13;
  @override
  @JsonKey(name: "strMeasure14")
  String? get strMeasure14;
  @override
  @JsonKey(name: "strMeasure15")
  String? get strMeasure15;
  @override
  @JsonKey(name: "strMeasure16")
  dynamic get strMeasure16;
  @override
  @JsonKey(name: "strMeasure17")
  dynamic get strMeasure17;
  @override
  @JsonKey(name: "strMeasure18")
  dynamic get strMeasure18;
  @override
  @JsonKey(name: "strMeasure19")
  dynamic get strMeasure19;
  @override
  @JsonKey(name: "strMeasure20")
  dynamic get strMeasure20;
  @override
  @JsonKey(name: "strSource")
  dynamic get strSource;
  @override
  @JsonKey(name: "strImageSource")
  dynamic get strImageSource;
  @override
  @JsonKey(name: "strCreativeCommonsConfirmed")
  dynamic get strCreativeCommonsConfirmed;
  @override
  @JsonKey(name: "dateModified")
  dynamic get dateModified;
  @override
  @JsonKey(ignore: true)
  _$$MealEntityImplCopyWith<_$MealEntityImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
