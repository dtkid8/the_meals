// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'category_result_entity.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$MealsResultEntityImpl _$$MealsResultEntityImplFromJson(
        Map<String, dynamic> json) =>
    _$MealsResultEntityImpl(
      meals: (json['meals'] as List<dynamic>?)
          ?.map((e) => MealEntity.fromJson(e as Map<String, dynamic>))
          .toList(),
    );

Map<String, dynamic> _$$MealsResultEntityImplToJson(
        _$MealsResultEntityImpl instance) =>
    <String, dynamic>{
      'meals': instance.meals,
    };

_$MealEntityImpl _$$MealEntityImplFromJson(Map<String, dynamic> json) =>
    _$MealEntityImpl(
      strMeal: json['strMeal'] as String?,
      strMealThumb: json['strMealThumb'] as String?,
      idMeal: json['idMeal'] as String?,
    );

Map<String, dynamic> _$$MealEntityImplToJson(_$MealEntityImpl instance) =>
    <String, dynamic>{
      'strMeal': instance.strMeal,
      'strMealThumb': instance.strMealThumb,
      'idMeal': instance.idMeal,
    };
