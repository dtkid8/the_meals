// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'category.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$CategoryImpl _$$CategoryImplFromJson(Map<String, dynamic> json) =>
    _$CategoryImpl(
      idCategory: json['idCategory'] as String? ?? "",
      category: json['category'] as String? ?? "",
      categoryThumb: json['categoryThumb'] as String? ?? "",
      categoryDescription: json['categoryDescription'] as String? ?? "",
    );

Map<String, dynamic> _$$CategoryImplToJson(_$CategoryImpl instance) =>
    <String, dynamic>{
      'idCategory': instance.idCategory,
      'category': instance.category,
      'categoryThumb': instance.categoryThumb,
      'categoryDescription': instance.categoryDescription,
    };
