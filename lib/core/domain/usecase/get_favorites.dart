import 'package:dartz/dartz.dart';
import 'package:the_meals/core/data/repository/favorite/favorite_repository.dart';
import 'package:the_meals/core/failure.dart';

import '../model/meal.dart';

class GetFavorites {
  final FavoriteRepository favoriteRepository;

  GetFavorites({required this.favoriteRepository});

  Future<Either<Failure, List<Meal>>> execute() async {
    return favoriteRepository.getFavorite();
  }
}
