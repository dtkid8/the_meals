// To parse this JSON data, do
//
//     final categoriesResultEntity = categoriesResultEntityFromJson(jsonString);

// ignore_for_file: invalid_annotation_target

import 'package:freezed_annotation/freezed_annotation.dart';

part 'category_result_entity.freezed.dart';
part 'category_result_entity.g.dart';


@freezed
class CategoryResultEntity with _$CategoryResultEntity {
    const factory CategoryResultEntity({
        @JsonKey(name: "meals")
        List<MealEntity>? meals,
    }) = _MealsResultEntity;

    factory CategoryResultEntity.fromJson(Map<String, dynamic> json) => _$CategoryResultEntityFromJson(json);
}

@freezed
class MealEntity with _$MealEntity {
    const factory MealEntity({
        @JsonKey(name: "strMeal")
        String? strMeal,
        @JsonKey(name: "strMealThumb")
        String? strMealThumb,
        @JsonKey(name: "idMeal")
        String? idMeal,
    }) = _MealEntity;

    factory MealEntity.fromJson(Map<String, dynamic> json) => _$MealEntityFromJson(json);
}
