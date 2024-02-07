import 'package:dio/dio.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:the_meals/core/data/repository/detail/data_source/detail_remote_data_source.dart';
import 'package:the_meals/core/data/repository/detail/detail_repository.dart';
import 'package:the_meals/core/data/repository/favorite/favorite_repository.dart';
import 'package:the_meals/core/data/repository/local_drift_database.dart';
import 'package:the_meals/core/domain/usecase/add_favorite.dart';
import 'package:the_meals/core/domain/usecase/delete_favorite.dart';
import 'package:the_meals/core/domain/usecase/get_category_result.dart';
import 'package:the_meals/core/domain/usecase/get_detail.dart';
import 'package:the_meals/core/domain/usecase/get_favorites.dart';
import 'package:the_meals/core/domain/usecase/is_favorite.dart';
import 'package:the_meals/core/data/repository/category/category_repository.dart';
import 'package:the_meals/core/data/repository/category/data_source/category_remote_data_source.dart';
import 'package:the_meals/module/home/home_screen.dart';
import 'core/data/repository/favorite/data_source/favorite_local_data_source.dart';
import 'core/domain/usecase/get_categories.dart';

void main() {
  WidgetsFlutterBinding.ensureInitialized();
  
  final Dio client = Dio();
  final LocalDriftDatabase database = LocalDriftDatabase();

  final CategoryRemoteDataSource categoryRemoteDataSource = CategoryRemoteDataSource(client: client);
  final CategoryRepository categoryRepository = CategoryRepository(remoteDataSource: categoryRemoteDataSource);

  final DetailRemoteDataSource detailRemoteDataSource = DetailRemoteDataSource(client: client);
  final DetailRepository detailRepository = DetailRepository(remoteDataSource: detailRemoteDataSource);

  final FavoriteLocalDataSource favoriteLocalDataSource = FavoriteLocalDataSource(database: database);
  final FavoriteRepository favoriteRepository = FavoriteRepository(localDataSource: favoriteLocalDataSource);

  final GetDetail getDetail = GetDetail(detailRepository: detailRepository);
  final GetCategories getCategories = GetCategories(categoryRepository: categoryRepository);
  final GetCategoryResult getCategoryResult = GetCategoryResult(repository: categoryRepository);
  final GetFavorites getFavorites = GetFavorites(favoriteRepository: favoriteRepository);
  final IsFavorite isFavorite = IsFavorite(favoriteRepository: favoriteRepository);
  final AddFavorite addFavorite = AddFavorite(favoriteRepository: favoriteRepository);
  final DeleteFavorite deleteFavorite = DeleteFavorite(favoriteRepository: favoriteRepository);

  runApp(MultiRepositoryProvider(
    providers: [
      RepositoryProvider(
        create: (_) => getCategories,
      ),
      RepositoryProvider(
        create: (_) => getCategoryResult,
      ),
      RepositoryProvider(
        create: (_) => getDetail,
      ),
      RepositoryProvider(
        create: (_) => getFavorites,
      ),
      RepositoryProvider(
        create: (_) => isFavorite,
      ),
      RepositoryProvider(
        create: (_) => addFavorite,
      ),
      RepositoryProvider(
        create: (_) => deleteFavorite,
      ),
    ],
    child: const MyApp(),
  ));
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'The Meals App',
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
        useMaterial3: true,
      ),
      home: const HomeScreen(),
    );
  }
}
