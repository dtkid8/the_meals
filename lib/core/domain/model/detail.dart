import 'package:freezed_annotation/freezed_annotation.dart';

import '../../data/entity/detail/detail_entity.dart';

part "detail.freezed.dart";
part "detail.g.dart";

@freezed
class Detail with _$Detail {
  const Detail._();
  const factory Detail({
    @Default("") String id,
    @Default("") String name,
    @Default("") String category,
    @Default("") String description,
    @Default("") String image,
    @Default(false) bool isFavorite,
  }) = _Detail;
  factory Detail.fromEntity(DetailEntity entity) => Detail(
      id: entity.meals?.first.idMeal ?? "",
      name: entity.meals?.first.strMeal ?? "",
      category: entity.meals?.first.strCategory ?? "",
      description: entity.meals?.first.strInstructions ?? "",
      image: entity.meals?.first.strMealThumb ?? "",
      );

  factory Detail.fromJson(Map<String, dynamic> json) => _$DetailFromJson(json);
}
