import 'package:the_meals/core/failure.dart';
import 'package:dartz/dartz.dart';
import 'package:the_meals/core/data/repository/category/data_source/category_remote_data_source.dart';
import '../../entity/category/categories_entity.dart';
import '../../entity/category/category_result_entity.dart';
import '../../../domain/model/category.dart';
import '../../../domain/model/meal.dart';
import '../../../exception.dart';


abstract class CategoryRepositoryProtocol {
  Future<Either<Failure, List<Category>>> getCategories();
  Future<Either<Failure, List<Meal>>> getCategoryResult(String query);
}

class CategoryRepository extends CategoryRepositoryProtocol {
  final CategoryRemoteDataSource remoteDataSource;
  CategoryRepository({required this.remoteDataSource});

  @override
  Future<Either<Failure, List<Category>>> getCategories() async {
    try {
      final CategoriesEntity result = await remoteDataSource.getCategories();
      return Right(result.categories?.map((e) => Category.fromEntity(e)).toList() ?? []);
    } on ServerException {
      return const Left(ServerFailure('Network Error'));
    }
  }
  
  @override
  Future<Either<Failure, List<Meal>>> getCategoryResult(String query) async {
      try {
      final CategoryResultEntity result = await remoteDataSource.getCategoryResult(query);
      return Right(result.meals?.map((e) => Meal.fromEntity(e)).toList() ?? []);
    } on ServerException {
      return const Left(ServerFailure('Network Error'));
    }
  }
}
