import 'package:dartz/dartz.dart';
import 'package:the_meals/core/data/repository/category/category_repository.dart';

import '../../failure.dart';
import '../model/meal.dart';

class GetCategoryResult{
  final CategoryRepository repository;

  GetCategoryResult({required this.repository});

  Future<Either<Failure, List<Meal>>> execute(String query) async {
    return repository.getCategoryResult(query);
  }
}