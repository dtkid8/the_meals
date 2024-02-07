// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'category_result_entity.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

CategoryResultEntity _$CategoryResultEntityFromJson(Map<String, dynamic> json) {
  return _MealsResultEntity.fromJson(json);
}

/// @nodoc
mixin _$CategoryResultEntity {
  @JsonKey(name: "meals")
  List<MealEntity>? get meals => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $CategoryResultEntityCopyWith<CategoryResultEntity> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $CategoryResultEntityCopyWith<$Res> {
  factory $CategoryResultEntityCopyWith(CategoryResultEntity value,
          $Res Function(CategoryResultEntity) then) =
      _$CategoryResultEntityCopyWithImpl<$Res, CategoryResultEntity>;
  @useResult
  $Res call({@JsonKey(name: "meals") List<MealEntity>? meals});
}

/// @nodoc
class _$CategoryResultEntityCopyWithImpl<$Res,
        $Val extends CategoryResultEntity>
    implements $CategoryResultEntityCopyWith<$Res> {
  _$CategoryResultEntityCopyWithImpl(this._value, this._then);

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
abstract class _$$MealsResultEntityImplCopyWith<$Res>
    implements $CategoryResultEntityCopyWith<$Res> {
  factory _$$MealsResultEntityImplCopyWith(_$MealsResultEntityImpl value,
          $Res Function(_$MealsResultEntityImpl) then) =
      __$$MealsResultEntityImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({@JsonKey(name: "meals") List<MealEntity>? meals});
}

/// @nodoc
class __$$MealsResultEntityImplCopyWithImpl<$Res>
    extends _$CategoryResultEntityCopyWithImpl<$Res, _$MealsResultEntityImpl>
    implements _$$MealsResultEntityImplCopyWith<$Res> {
  __$$MealsResultEntityImplCopyWithImpl(_$MealsResultEntityImpl _value,
      $Res Function(_$MealsResultEntityImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? meals = freezed,
  }) {
    return _then(_$MealsResultEntityImpl(
      meals: freezed == meals
          ? _value._meals
          : meals // ignore: cast_nullable_to_non_nullable
              as List<MealEntity>?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$MealsResultEntityImpl implements _MealsResultEntity {
  const _$MealsResultEntityImpl(
      {@JsonKey(name: "meals") final List<MealEntity>? meals})
      : _meals = meals;

  factory _$MealsResultEntityImpl.fromJson(Map<String, dynamic> json) =>
      _$$MealsResultEntityImplFromJson(json);

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
    return 'CategoryResultEntity(meals: $meals)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$MealsResultEntityImpl &&
            const DeepCollectionEquality().equals(other._meals, _meals));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode =>
      Object.hash(runtimeType, const DeepCollectionEquality().hash(_meals));

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$MealsResultEntityImplCopyWith<_$MealsResultEntityImpl> get copyWith =>
      __$$MealsResultEntityImplCopyWithImpl<_$MealsResultEntityImpl>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$MealsResultEntityImplToJson(
      this,
    );
  }
}

abstract class _MealsResultEntity implements CategoryResultEntity {
  const factory _MealsResultEntity(
          {@JsonKey(name: "meals") final List<MealEntity>? meals}) =
      _$MealsResultEntityImpl;

  factory _MealsResultEntity.fromJson(Map<String, dynamic> json) =
      _$MealsResultEntityImpl.fromJson;

  @override
  @JsonKey(name: "meals")
  List<MealEntity>? get meals;
  @override
  @JsonKey(ignore: true)
  _$$MealsResultEntityImplCopyWith<_$MealsResultEntityImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

MealEntity _$MealEntityFromJson(Map<String, dynamic> json) {
  return _MealEntity.fromJson(json);
}

/// @nodoc
mixin _$MealEntity {
  @JsonKey(name: "strMeal")
  String? get strMeal => throw _privateConstructorUsedError;
  @JsonKey(name: "strMealThumb")
  String? get strMealThumb => throw _privateConstructorUsedError;
  @JsonKey(name: "idMeal")
  String? get idMeal => throw _privateConstructorUsedError;

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
      {@JsonKey(name: "strMeal") String? strMeal,
      @JsonKey(name: "strMealThumb") String? strMealThumb,
      @JsonKey(name: "idMeal") String? idMeal});
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
    Object? strMeal = freezed,
    Object? strMealThumb = freezed,
    Object? idMeal = freezed,
  }) {
    return _then(_value.copyWith(
      strMeal: freezed == strMeal
          ? _value.strMeal
          : strMeal // ignore: cast_nullable_to_non_nullable
              as String?,
      strMealThumb: freezed == strMealThumb
          ? _value.strMealThumb
          : strMealThumb // ignore: cast_nullable_to_non_nullable
              as String?,
      idMeal: freezed == idMeal
          ? _value.idMeal
          : idMeal // ignore: cast_nullable_to_non_nullable
              as String?,
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
      {@JsonKey(name: "strMeal") String? strMeal,
      @JsonKey(name: "strMealThumb") String? strMealThumb,
      @JsonKey(name: "idMeal") String? idMeal});
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
    Object? strMeal = freezed,
    Object? strMealThumb = freezed,
    Object? idMeal = freezed,
  }) {
    return _then(_$MealEntityImpl(
      strMeal: freezed == strMeal
          ? _value.strMeal
          : strMeal // ignore: cast_nullable_to_non_nullable
              as String?,
      strMealThumb: freezed == strMealThumb
          ? _value.strMealThumb
          : strMealThumb // ignore: cast_nullable_to_non_nullable
              as String?,
      idMeal: freezed == idMeal
          ? _value.idMeal
          : idMeal // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$MealEntityImpl implements _MealEntity {
  const _$MealEntityImpl(
      {@JsonKey(name: "strMeal") this.strMeal,
      @JsonKey(name: "strMealThumb") this.strMealThumb,
      @JsonKey(name: "idMeal") this.idMeal});

  factory _$MealEntityImpl.fromJson(Map<String, dynamic> json) =>
      _$$MealEntityImplFromJson(json);

  @override
  @JsonKey(name: "strMeal")
  final String? strMeal;
  @override
  @JsonKey(name: "strMealThumb")
  final String? strMealThumb;
  @override
  @JsonKey(name: "idMeal")
  final String? idMeal;

  @override
  String toString() {
    return 'MealEntity(strMeal: $strMeal, strMealThumb: $strMealThumb, idMeal: $idMeal)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$MealEntityImpl &&
            (identical(other.strMeal, strMeal) || other.strMeal == strMeal) &&
            (identical(other.strMealThumb, strMealThumb) ||
                other.strMealThumb == strMealThumb) &&
            (identical(other.idMeal, idMeal) || other.idMeal == idMeal));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, strMeal, strMealThumb, idMeal);

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
      {@JsonKey(name: "strMeal") final String? strMeal,
      @JsonKey(name: "strMealThumb") final String? strMealThumb,
      @JsonKey(name: "idMeal") final String? idMeal}) = _$MealEntityImpl;

  factory _MealEntity.fromJson(Map<String, dynamic> json) =
      _$MealEntityImpl.fromJson;

  @override
  @JsonKey(name: "strMeal")
  String? get strMeal;
  @override
  @JsonKey(name: "strMealThumb")
  String? get strMealThumb;
  @override
  @JsonKey(name: "idMeal")
  String? get idMeal;
  @override
  @JsonKey(ignore: true)
  _$$MealEntityImplCopyWith<_$MealEntityImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
