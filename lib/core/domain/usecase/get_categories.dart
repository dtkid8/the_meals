import 'package:dartz/dartz.dart';
import 'package:the_meals/core/data/repository/category/category_repository.dart';

import '../../../../core/failure.dart';
import '../model/category.dart';

class GetCategories {
  final CategoryRepository categoryRepository;

  GetCategories({required this.categoryRepository});

  Future<Either<Failure, List<Category>>> execute() async {
    return categoryRepository.getCategories();
  }
}
