import 'package:dio/dio.dart';
import 'package:the_meals/core/endpoint.dart';
import 'package:the_meals/core/exception.dart';
import '../../../entity/category/categories_entity.dart';
import '../../../entity/category/category_result_entity.dart';

abstract class CategoryRemoteDataSourceProtocol {
  Future<CategoriesEntity> getCategories();
  Future<CategoryResultEntity> getCategoryResult(String query);
}

class CategoryRemoteDataSource extends CategoryRemoteDataSourceProtocol {
  final Dio client;
  CategoryRemoteDataSource({required this.client});

  @override
  Future<CategoriesEntity> getCategories() async {
    try {
      final response = await client.get(Endpoint.category);
      if (response.statusCode == 200) {
        return CategoriesEntity.fromJson(response.data);
      }
      throw ServerException();
    } catch (e) {
      throw ServerException();
    }
  }

  @override
  Future<CategoryResultEntity> getCategoryResult(String query) async {
    try {
      final response = await client.get(Endpoint.filter, queryParameters: {
        "c": query,
      });
      if (response.statusCode == 200) {
        return CategoryResultEntity.fromJson(response.data);
      }
      throw ServerException();
    } catch (e) {
      throw ServerException();
    }
  }
}
