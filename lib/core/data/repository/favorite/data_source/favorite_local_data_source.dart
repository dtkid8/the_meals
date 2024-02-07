import 'package:drift/drift.dart';
import 'package:the_meals/core/data/repository/local_drift_database.dart';
import '../../../../domain/model/meal.dart';
import '../../../../exception.dart';

abstract class FavoriteLocalDataSourceProtocol {
  Future<List<FavoriteEntityData>> getFavorite();
  Future<bool> isFavorite(String id);
  Future<bool> addFavorite(Meal meal);
  Future<bool> deleteFavorite(String id);
}

class FavoriteLocalDataSource extends FavoriteLocalDataSourceProtocol {
  final LocalDriftDatabase database;
  FavoriteLocalDataSource({required this.database});
  @override
  Future<List<FavoriteEntityData>> getFavorite() async {
    try {
      final response = await database.allFavorite;
      return response;
    } catch (e) {
      throw DatabaseException("Database Error");
    }
  }

  @override
  Future<bool> addFavorite(Meal meal) async {
    try {
      final response = await database.addFavorite(FavoriteEntityCompanion(
        id: Value(meal.id),
        image: Value(meal.image),
        name: Value(meal.name),
      ));
      return response > 0 ? true : false;
    } catch (e) {
      throw DatabaseException("Database Error");
    }
  }

  @override
  Future<bool> deleteFavorite(String id) async {
    try {
      final response = await database.deleteFavorite(id);
      return response > 0 ? true : false;
    } catch (e) {
      throw DatabaseException("Database Error");
    }
  }

  @override
  Future<bool> isFavorite(String id) async {
    try {
      final response = await database.isFavorite(id);
      return response != null ? true : false;
    } catch (e) {
      throw DatabaseException("Database Error");
    }
  }
}
