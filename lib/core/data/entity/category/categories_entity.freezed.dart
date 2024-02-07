// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'categories_entity.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

CategoriesEntity _$CategoriesEntityFromJson(Map<String, dynamic> json) {
  return _CategoriesEntity.fromJson(json);
}

/// @nodoc
mixin _$CategoriesEntity {
  @JsonKey(name: "categories")
  List<CategoryEntity>? get categories => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $CategoriesEntityCopyWith<CategoriesEntity> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $CategoriesEntityCopyWith<$Res> {
  factory $CategoriesEntityCopyWith(
          CategoriesEntity value, $Res Function(CategoriesEntity) then) =
      _$CategoriesEntityCopyWithImpl<$Res, CategoriesEntity>;
  @useResult
  $Res call({@JsonKey(name: "categories") List<CategoryEntity>? categories});
}

/// @nodoc
class _$CategoriesEntityCopyWithImpl<$Res, $Val extends CategoriesEntity>
    implements $CategoriesEntityCopyWith<$Res> {
  _$CategoriesEntityCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? categories = freezed,
  }) {
    return _then(_value.copyWith(
      categories: freezed == categories
          ? _value.categories
          : categories // ignore: cast_nullable_to_non_nullable
              as List<CategoryEntity>?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$CategoriesEntityImplCopyWith<$Res>
    implements $CategoriesEntityCopyWith<$Res> {
  factory _$$CategoriesEntityImplCopyWith(_$CategoriesEntityImpl value,
          $Res Function(_$CategoriesEntityImpl) then) =
      __$$CategoriesEntityImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({@JsonKey(name: "categories") List<CategoryEntity>? categories});
}

/// @nodoc
class __$$CategoriesEntityImplCopyWithImpl<$Res>
    extends _$CategoriesEntityCopyWithImpl<$Res, _$CategoriesEntityImpl>
    implements _$$CategoriesEntityImplCopyWith<$Res> {
  __$$CategoriesEntityImplCopyWithImpl(_$CategoriesEntityImpl _value,
      $Res Function(_$CategoriesEntityImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? categories = freezed,
  }) {
    return _then(_$CategoriesEntityImpl(
      categories: freezed == categories
          ? _value._categories
          : categories // ignore: cast_nullable_to_non_nullable
              as List<CategoryEntity>?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$CategoriesEntityImpl implements _CategoriesEntity {
  const _$CategoriesEntityImpl(
      {@JsonKey(name: "categories") final List<CategoryEntity>? categories})
      : _categories = categories;

  factory _$CategoriesEntityImpl.fromJson(Map<String, dynamic> json) =>
      _$$CategoriesEntityImplFromJson(json);

  final List<CategoryEntity>? _categories;
  @override
  @JsonKey(name: "categories")
  List<CategoryEntity>? get categories {
    final value = _categories;
    if (value == null) return null;
    if (_categories is EqualUnmodifiableListView) return _categories;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(value);
  }

  @override
  String toString() {
    return 'CategoriesEntity(categories: $categories)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$CategoriesEntityImpl &&
            const DeepCollectionEquality()
                .equals(other._categories, _categories));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(
      runtimeType, const DeepCollectionEquality().hash(_categories));

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$CategoriesEntityImplCopyWith<_$CategoriesEntityImpl> get copyWith =>
      __$$CategoriesEntityImplCopyWithImpl<_$CategoriesEntityImpl>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$CategoriesEntityImplToJson(
      this,
    );
  }
}

abstract class _CategoriesEntity implements CategoriesEntity {
  const factory _CategoriesEntity(
      {@JsonKey(name: "categories")
      final List<CategoryEntity>? categories}) = _$CategoriesEntityImpl;

  factory _CategoriesEntity.fromJson(Map<String, dynamic> json) =
      _$CategoriesEntityImpl.fromJson;

  @override
  @JsonKey(name: "categories")
  List<CategoryEntity>? get categories;
  @override
  @JsonKey(ignore: true)
  _$$CategoriesEntityImplCopyWith<_$CategoriesEntityImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

CategoryEntity _$CategoryEntityFromJson(Map<String, dynamic> json) {
  return _CategoryEntity.fromJson(json);
}

/// @nodoc
mixin _$CategoryEntity {
  @JsonKey(name: "idCategory")
  String? get idCategory => throw _privateConstructorUsedError;
  @JsonKey(name: "strCategory")
  String? get strCategory => throw _privateConstructorUsedError;
  @JsonKey(name: "strCategoryThumb")
  String? get strCategoryThumb => throw _privateConstructorUsedError;
  @JsonKey(name: "strCategoryDescription")
  String? get strCategoryDescription => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $CategoryEntityCopyWith<CategoryEntity> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $CategoryEntityCopyWith<$Res> {
  factory $CategoryEntityCopyWith(
          CategoryEntity value, $Res Function(CategoryEntity) then) =
      _$CategoryEntityCopyWithImpl<$Res, CategoryEntity>;
  @useResult
  $Res call(
      {@JsonKey(name: "idCategory") String? idCategory,
      @JsonKey(name: "strCategory") String? strCategory,
      @JsonKey(name: "strCategoryThumb") String? strCategoryThumb,
      @JsonKey(name: "strCategoryDescription") String? strCategoryDescription});
}

/// @nodoc
class _$CategoryEntityCopyWithImpl<$Res, $Val extends CategoryEntity>
    implements $CategoryEntityCopyWith<$Res> {
  _$CategoryEntityCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? idCategory = freezed,
    Object? strCategory = freezed,
    Object? strCategoryThumb = freezed,
    Object? strCategoryDescription = freezed,
  }) {
    return _then(_value.copyWith(
      idCategory: freezed == idCategory
          ? _value.idCategory
          : idCategory // ignore: cast_nullable_to_non_nullable
              as String?,
      strCategory: freezed == strCategory
          ? _value.strCategory
          : strCategory // ignore: cast_nullable_to_non_nullable
              as String?,
      strCategoryThumb: freezed == strCategoryThumb
          ? _value.strCategoryThumb
          : strCategoryThumb // ignore: cast_nullable_to_non_nullable
              as String?,
      strCategoryDescription: freezed == strCategoryDescription
          ? _value.strCategoryDescription
          : strCategoryDescription // ignore: cast_nullable_to_non_nullable
              as String?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$CategoryEntityImplCopyWith<$Res>
    implements $CategoryEntityCopyWith<$Res> {
  factory _$$CategoryEntityImplCopyWith(_$CategoryEntityImpl value,
          $Res Function(_$CategoryEntityImpl) then) =
      __$$CategoryEntityImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {@JsonKey(name: "idCategory") String? idCategory,
      @JsonKey(name: "strCategory") String? strCategory,
      @JsonKey(name: "strCategoryThumb") String? strCategoryThumb,
      @JsonKey(name: "strCategoryDescription") String? strCategoryDescription});
}

/// @nodoc
class __$$CategoryEntityImplCopyWithImpl<$Res>
    extends _$CategoryEntityCopyWithImpl<$Res, _$CategoryEntityImpl>
    implements _$$CategoryEntityImplCopyWith<$Res> {
  __$$CategoryEntityImplCopyWithImpl(
      _$CategoryEntityImpl _value, $Res Function(_$CategoryEntityImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? idCategory = freezed,
    Object? strCategory = freezed,
    Object? strCategoryThumb = freezed,
    Object? strCategoryDescription = freezed,
  }) {
    return _then(_$CategoryEntityImpl(
      idCategory: freezed == idCategory
          ? _value.idCategory
          : idCategory // ignore: cast_nullable_to_non_nullable
              as String?,
      strCategory: freezed == strCategory
          ? _value.strCategory
          : strCategory // ignore: cast_nullable_to_non_nullable
              as String?,
      strCategoryThumb: freezed == strCategoryThumb
          ? _value.strCategoryThumb
          : strCategoryThumb // ignore: cast_nullable_to_non_nullable
              as String?,
      strCategoryDescription: freezed == strCategoryDescription
          ? _value.strCategoryDescription
          : strCategoryDescription // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$CategoryEntityImpl implements _CategoryEntity {
  const _$CategoryEntityImpl(
      {@JsonKey(name: "idCategory") this.idCategory,
      @JsonKey(name: "strCategory") this.strCategory,
      @JsonKey(name: "strCategoryThumb") this.strCategoryThumb,
      @JsonKey(name: "strCategoryDescription") this.strCategoryDescription});

  factory _$CategoryEntityImpl.fromJson(Map<String, dynamic> json) =>
      _$$CategoryEntityImplFromJson(json);

  @override
  @JsonKey(name: "idCategory")
  final String? idCategory;
  @override
  @JsonKey(name: "strCategory")
  final String? strCategory;
  @override
  @JsonKey(name: "strCategoryThumb")
  final String? strCategoryThumb;
  @override
  @JsonKey(name: "strCategoryDescription")
  final String? strCategoryDescription;

  @override
  String toString() {
    return 'CategoryEntity(idCategory: $idCategory, strCategory: $strCategory, strCategoryThumb: $strCategoryThumb, strCategoryDescription: $strCategoryDescription)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$CategoryEntityImpl &&
            (identical(other.idCategory, idCategory) ||
                other.idCategory == idCategory) &&
            (identical(other.strCategory, strCategory) ||
                other.strCategory == strCategory) &&
            (identical(other.strCategoryThumb, strCategoryThumb) ||
                other.strCategoryThumb == strCategoryThumb) &&
            (identical(other.strCategoryDescription, strCategoryDescription) ||
                other.strCategoryDescription == strCategoryDescription));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, idCategory, strCategory,
      strCategoryThumb, strCategoryDescription);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$CategoryEntityImplCopyWith<_$CategoryEntityImpl> get copyWith =>
      __$$CategoryEntityImplCopyWithImpl<_$CategoryEntityImpl>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$CategoryEntityImplToJson(
      this,
    );
  }
}

abstract class _CategoryEntity implements CategoryEntity {
  const factory _CategoryEntity(
      {@JsonKey(name: "idCategory") final String? idCategory,
      @JsonKey(name: "strCategory") final String? strCategory,
      @JsonKey(name: "strCategoryThumb") final String? strCategoryThumb,
      @JsonKey(name: "strCategoryDescription")
      final String? strCategoryDescription}) = _$CategoryEntityImpl;

  factory _CategoryEntity.fromJson(Map<String, dynamic> json) =
      _$CategoryEntityImpl.fromJson;

  @override
  @JsonKey(name: "idCategory")
  String? get idCategory;
  @override
  @JsonKey(name: "strCategory")
  String? get strCategory;
  @override
  @JsonKey(name: "strCategoryThumb")
  String? get strCategoryThumb;
  @override
  @JsonKey(name: "strCategoryDescription")
  String? get strCategoryDescription;
  @override
  @JsonKey(ignore: true)
  _$$CategoryEntityImplCopyWith<_$CategoryEntityImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
