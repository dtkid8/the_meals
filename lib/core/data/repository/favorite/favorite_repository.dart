import 'package:dartz/dartz.dart';
import 'package:the_meals/core/data/repository/favorite/data_source/favorite_local_data_source.dart';
import 'package:the_meals/core/data/repository/local_drift_database.dart';
import 'package:the_meals/core/domain/model/meal.dart';
import 'package:the_meals/core/failure.dart';

import '../../../exception.dart';

abstract class FavoriteRepositoryProtocol {
  Future<Either<Failure, List<Meal>>> getFavorite();
  Future<Either<Failure, bool>> addFavorite(Meal meal);
  Future<Either<Failure, bool>> deleteFavorite(String id);
  Future<Either<Failure, bool>> isFavorite(String id);
}

class FavoriteRepository extends FavoriteRepositoryProtocol {
  final FavoriteLocalDataSource localDataSource;

  FavoriteRepository({required this.localDataSource});

  @override
  Future<Either<Failure, List<Meal>>> getFavorite() async {
    try {
      final List<FavoriteEntityData> result = await localDataSource.getFavorite();
      final List<Meal> meals = result.map((e) => Meal.fromDriftEntity(e)).toList();
      return Right(meals);
    } on DatabaseException {
      return const Left(DatabaseFailure('Database Error'));
    }
  }

  @override
  Future<Either<Failure, bool>> addFavorite(Meal meal) async {
    try {
      final bool result = await localDataSource.addFavorite(meal);
      return Right(result);
    } on DatabaseException {
      return const Left(DatabaseFailure('Database Error'));
    }
  }

  @override
  Future<Either<Failure, bool>> deleteFavorite(String id) async {
    try {
      final bool result = await localDataSource.deleteFavorite(id);
      return Right(result);
    } on DatabaseException {
      return const Left(DatabaseFailure('Database Error'));
    }
  }

  @override
  Future<Either<Failure, bool>> isFavorite(String id) async {
    try {
      final bool result = await localDataSource.isFavorite(id);
      return Right(result);
    } on DatabaseException {
      return const Left(DatabaseFailure('Database Error'));
    }
  }
}
