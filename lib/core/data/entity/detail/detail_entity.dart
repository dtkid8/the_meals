// To parse this JSON data, do
//
//     final detailEntity = detailEntityFromJson(jsonString);

// ignore_for_file: invalid_annotation_target

import 'package:freezed_annotation/freezed_annotation.dart';

part 'detail_entity.freezed.dart';
part 'detail_entity.g.dart';

// DetailEntity detailEntityFromJson(String str) => DetailEntity.fromJson(json.decode(str));

// String detailEntityToJson(DetailEntity data) => json.encode(data.toJson());

@freezed
class DetailEntity with _$DetailEntity {
    const factory DetailEntity({
        @JsonKey(name: "meals")
        List<MealEntity>? meals,
    }) = _DetailEntity;

    factory DetailEntity.fromJson(Map<String, dynamic> json) => _$DetailEntityFromJson(json);
}

@freezed
class MealEntity with _$MealEntity {
    const factory MealEntity({
        @JsonKey(name: "idMeal")
        String? idMeal,
        @JsonKey(name: "strMeal")
        String? strMeal,
        @JsonKey(name: "strDrinkAlternate")
        dynamic strDrinkAlternate,
        @JsonKey(name: "strCategory")
        String? strCategory,
        @JsonKey(name: "strArea")
        String? strArea,
        @JsonKey(name: "strInstructions")
        String? strInstructions,
        @JsonKey(name: "strMealThumb")
        String? strMealThumb,
        @JsonKey(name: "strTags")
        String? strTags,
        @JsonKey(name: "strYoutube")
        String? strYoutube,
        @JsonKey(name: "strIngredient1")
        String? strIngredient1,
        @JsonKey(name: "strIngredient2")
        String? strIngredient2,
        @JsonKey(name: "strIngredient3")
        String? strIngredient3,
        @JsonKey(name: "strIngredient4")
        String? strIngredient4,
        @JsonKey(name: "strIngredient5")
        String? strIngredient5,
        @JsonKey(name: "strIngredient6")
        String? strIngredient6,
        @JsonKey(name: "strIngredient7")
        String? strIngredient7,
        @JsonKey(name: "strIngredient8")
        String? strIngredient8,
        @JsonKey(name: "strIngredient9")
        String? strIngredient9,
        @JsonKey(name: "strIngredient10")
        String? strIngredient10,
        @JsonKey(name: "strIngredient11")
        String? strIngredient11,
        @JsonKey(name: "strIngredient12")
        String? strIngredient12,
        @JsonKey(name: "strIngredient13")
        String? strIngredient13,
        @JsonKey(name: "strIngredient14")
        String? strIngredient14,
        @JsonKey(name: "strIngredient15")
        String? strIngredient15,
        @JsonKey(name: "strIngredient16")
        dynamic strIngredient16,
        @JsonKey(name: "strIngredient17")
        dynamic strIngredient17,
        @JsonKey(name: "strIngredient18")
        dynamic strIngredient18,
        @JsonKey(name: "strIngredient19")
        dynamic strIngredient19,
        @JsonKey(name: "strIngredient20")
        dynamic strIngredient20,
        @JsonKey(name: "strMeasure1")
        String? strMeasure1,
        @JsonKey(name: "strMeasure2")
        String? strMeasure2,
        @JsonKey(name: "strMeasure3")
        String? strMeasure3,
        @JsonKey(name: "strMeasure4")
        String? strMeasure4,
        @JsonKey(name: "strMeasure5")
        String? strMeasure5,
        @JsonKey(name: "strMeasure6")
        String? strMeasure6,
        @JsonKey(name: "strMeasure7")
        String? strMeasure7,
        @JsonKey(name: "strMeasure8")
        String? strMeasure8,
        @JsonKey(name: "strMeasure9")
        String? strMeasure9,
        @JsonKey(name: "strMeasure10")
        String? strMeasure10,
        @JsonKey(name: "strMeasure11")
        String? strMeasure11,
        @JsonKey(name: "strMeasure12")
        String? strMeasure12,
        @JsonKey(name: "strMeasure13")
        String? strMeasure13,
        @JsonKey(name: "strMeasure14")
        String? strMeasure14,
        @JsonKey(name: "strMeasure15")
        String? strMeasure15,
        @JsonKey(name: "strMeasure16")
        dynamic strMeasure16,
        @JsonKey(name: "strMeasure17")
        dynamic strMeasure17,
        @JsonKey(name: "strMeasure18")
        dynamic strMeasure18,
        @JsonKey(name: "strMeasure19")
        dynamic strMeasure19,
        @JsonKey(name: "strMeasure20")
        dynamic strMeasure20,
        @JsonKey(name: "strSource")
        dynamic strSource,
        @JsonKey(name: "strImageSource")
        dynamic strImageSource,
        @JsonKey(name: "strCreativeCommonsConfirmed")
        dynamic strCreativeCommonsConfirmed,
        @JsonKey(name: "dateModified")
        dynamic dateModified,
    }) = _MealEntity;

    factory MealEntity.fromJson(Map<String, dynamic> json) => _$MealEntityFromJson(json);
}
