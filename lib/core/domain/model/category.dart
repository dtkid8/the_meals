import 'package:freezed_annotation/freezed_annotation.dart';

import '../../data/entity/category/categories_entity.dart';


part "category.freezed.dart";
part "category.g.dart";

@freezed
class Category with _$Category {
    const Category._();
    const factory Category({
        @Default("") String idCategory,
        @Default("") String category,
        @Default("") String categoryThumb,
        @Default("") String categoryDescription,
    }) = _Category;
    factory Category.fromEntity(CategoryEntity entity) => Category(
      idCategory: entity.idCategory ?? "",
      category: entity.strCategory ?? "",
      categoryThumb: entity.strCategoryThumb ?? "",
      categoryDescription:  entity.strCategoryDescription ?? "",
    );

    factory Category.fromJson(Map<String, dynamic> json) => _$CategoryFromJson(json);
}