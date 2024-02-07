// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'categories_entity.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$CategoriesEntityImpl _$$CategoriesEntityImplFromJson(
        Map<String, dynamic> json) =>
    _$CategoriesEntityImpl(
      categories: (json['categories'] as List<dynamic>?)
          ?.map((e) => CategoryEntity.fromJson(e as Map<String, dynamic>))
          .toList(),
    );

Map<String, dynamic> _$$CategoriesEntityImplToJson(
        _$CategoriesEntityImpl instance) =>
    <String, dynamic>{
      'categories': instance.categories,
    };

_$CategoryEntityImpl _$$CategoryEntityImplFromJson(Map<String, dynamic> json) =>
    _$CategoryEntityImpl(
      idCategory: json['idCategory'] as String?,
      strCategory: json['strCategory'] as String?,
      strCategoryThumb: json['strCategoryThumb'] as String?,
      strCategoryDescription: json['strCategoryDescription'] as String?,
    );

Map<String, dynamic> _$$CategoryEntityImplToJson(
        _$CategoryEntityImpl instance) =>
    <String, dynamic>{
      'idCategory': instance.idCategory,
      'strCategory': instance.strCategory,
      'strCategoryThumb': instance.strCategoryThumb,
      'strCategoryDescription': instance.strCategoryDescription,
    };
