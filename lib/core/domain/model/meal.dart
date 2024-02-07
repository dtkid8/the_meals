import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:the_meals/core/data/repository/local_drift_database.dart';
import '../../data/entity/category/category_result_entity.dart';
part "meal.freezed.dart";
part "meal.g.dart";

@freezed
class Meal with _$Meal {
  const Meal._();

  const factory Meal({
    @Default("") String name,
    @Default("") String image,
    @Default("") String id,
  }) = _Meal;

  factory Meal.fromEntity(MealEntity entity) => Meal(
        id: entity.idMeal ?? "",
        image: entity.strMealThumb ?? "",
        name: entity.strMeal ?? "",
      );
  factory Meal.fromDriftEntity(FavoriteEntityData entity) => Meal(
        id: entity.id,
        image: entity.image,
        name: entity.name,
      );
  factory Meal.fromJson(Map<String, dynamic> json) => _$MealFromJson(json);
}
