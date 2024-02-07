// To parse this JSON data, do
//
//     final categoriesEntity = categoriesEntityFromJson(jsonString);

// ignore_for_file: invalid_annotation_target

import 'package:freezed_annotation/freezed_annotation.dart';

part 'categories_entity.freezed.dart';
part 'categories_entity.g.dart';

// CategoriesEntity categoriesEntityFromJson(String str) => CategoriesEntity.fromJson(json.decode(str));

// String categoriesEntityToJson(CategoriesEntity data) => json.encode(data.toJson());

@freezed
class CategoriesEntity with _$CategoriesEntity {
    const factory CategoriesEntity({
        @JsonKey(name: "categories")
        List<CategoryEntity>? categories,
    }) = _CategoriesEntity;

    factory CategoriesEntity.fromJson(Map<String, dynamic> json) => _$CategoriesEntityFromJson(json);
}

@freezed
class CategoryEntity with _$CategoryEntity {
    const factory CategoryEntity({
        @JsonKey(name: "idCategory")
        String? idCategory,
        @JsonKey(name: "strCategory")
        String? strCategory,
        @JsonKey(name: "strCategoryThumb")
        String? strCategoryThumb,
        @JsonKey(name: "strCategoryDescription")
        String? strCategoryDescription,
    }) = _CategoryEntity;

    factory CategoryEntity.fromJson(Map<String, dynamic> json) => _$CategoryEntityFromJson(json);
}
