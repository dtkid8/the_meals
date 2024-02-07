// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'detail.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$DetailImpl _$$DetailImplFromJson(Map<String, dynamic> json) => _$DetailImpl(
      id: json['id'] as String? ?? "",
      name: json['name'] as String? ?? "",
      category: json['category'] as String? ?? "",
      description: json['description'] as String? ?? "",
      image: json['image'] as String? ?? "",
      isFavorite: json['isFavorite'] as bool? ?? false,
    );

Map<String, dynamic> _$$DetailImplToJson(_$DetailImpl instance) =>
    <String, dynamic>{
      'id': instance.id,
      'name': instance.name,
      'category': instance.category,
      'description': instance.description,
      'image': instance.image,
      'isFavorite': instance.isFavorite,
    };
