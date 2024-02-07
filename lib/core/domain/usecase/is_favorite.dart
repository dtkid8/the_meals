import 'package:dartz/dartz.dart';
import 'package:the_meals/core/data/repository/favorite/favorite_repository.dart';
import 'package:the_meals/core/failure.dart';

class IsFavorite{
  final FavoriteRepository favoriteRepository;

  IsFavorite({required this.favoriteRepository});

  Future<Either<Failure, bool>> execute(String id) async {
    return favoriteRepository.isFavorite(id);
  }
}