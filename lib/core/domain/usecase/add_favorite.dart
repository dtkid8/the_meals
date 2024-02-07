import 'package:dartz/dartz.dart';
import 'package:the_meals/core/data/repository/favorite/favorite_repository.dart';
import 'package:the_meals/core/failure.dart';

import '../model/meal.dart';

class AddFavorite{
  final FavoriteRepository favoriteRepository;

  AddFavorite({required this.favoriteRepository});

  Future<Either<Failure, bool>> execute(Meal meal) async {
    return favoriteRepository.addFavorite(meal);
  }
}