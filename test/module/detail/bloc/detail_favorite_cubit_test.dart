import 'package:bloc_test/bloc_test.dart';
import 'package:dartz/dartz.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:mocktail/mocktail.dart';
import 'package:the_meals/core/data/entity/detail/detail_entity.dart';
import 'package:the_meals/core/domain/model/detail.dart';
import 'package:the_meals/core/domain/model/meal.dart';
import 'package:the_meals/core/domain/usecase/add_favorite.dart';
import 'package:the_meals/core/domain/usecase/delete_favorite.dart';
import 'package:the_meals/core/domain/usecase/is_favorite.dart';
import 'package:the_meals/core/failure.dart';
import 'package:the_meals/core/generic_state.dart';
import 'package:the_meals/module/detail/bloc/detail_favorite_cubit.dart';

import '../../response.dart';

class MockIsFavorite extends Mock implements IsFavorite {}

class MockAddFavorite extends Mock implements AddFavorite {}

class MockDeleteFavorite extends Mock implements DeleteFavorite {}

void main() {
  late DetailFavoriteCubit cubit;
  late MockIsFavorite isFavorite;
  late MockAddFavorite addFavorite;
  late MockDeleteFavorite deleteFavorite;
  const idMeal = "52772";
  DetailEntity detailEntity = DetailEntity.fromJson(responseDetail);
  Detail model = Detail.fromEntity(detailEntity);
  Meal meal = Meal(
    id: model.id,
    name: model.name,
    image: model.image,
  );
  setUp(() {
    isFavorite = MockIsFavorite();
    addFavorite = MockAddFavorite();
    deleteFavorite = MockDeleteFavorite();

    cubit = DetailFavoriteCubit(
      isFavorite: isFavorite,
      addFavorite: addFavorite,
      deleteFavorite: deleteFavorite,
    );
  });

  group("Detail Favorite Cubit Test", () {
    test('initial state should be initialize', () {
      expect(cubit.state, GenericInitializeState());
      expect(cubit.isCheckFavorite, false);
    });

    group("Check Status", () {
      blocTest<DetailFavoriteCubit, GenericState>(
        "Should emit [Loading,Loaded] when check status is success",
        build: () {
          when(() => isFavorite.execute(idMeal)).thenAnswer(
            (_) async => const Right(
              true,
            ),
          );
          return cubit;
        },
        act: (cubit) => cubit.checkFavorite(idMeal),
        expect: () => [
          GenericLoadingState(),
          const GenericLoadedState(
            true,
          )
        ],
        verify: (cubit) {
          verify(() => isFavorite.execute(idMeal)).called(1);
        },
      );

      blocTest<DetailFavoriteCubit, GenericState>(
        "Should emit [Loading,Error] when check status is fail",
        build: () {
          when(() => isFavorite.execute(idMeal)).thenAnswer(
            (_) async => const Left(Failure("Database Error")),
          );
          return cubit;
        },
        act: (cubit) => cubit.checkFavorite(idMeal),
        expect: () => [
          GenericLoadingState(),
          const GenericErrorState("Database Error"),
        ],
        verify: (cubit) {
          verify(() => isFavorite.execute(idMeal)).called(1);
        },
      );
    });

    group("Add Favorite", () {
      blocTest<DetailFavoriteCubit, GenericState>(
        "Should emit [Loading,Loaded] when insert is success",
        build: () {
          when(() => addFavorite.execute(meal)).thenAnswer(
            (_) async => const Right(
              true,
            ),
          );
          when(() => isFavorite.execute(meal.id)).thenAnswer(
            (_) async => const Right(
              true,
            ),
          );
          return cubit;
        },
        act: (cubit) => cubit.insertFavorite(meal),
        expect: () => [
          GenericLoadingState(),
          const GenericLoadedState(
            true,
          )
        ],
        verify: (cubit) {
          verify(() => addFavorite.execute(meal)).called(1);
          verify(() => isFavorite.execute(meal.id)).called(1);
        },
      );
      blocTest<DetailFavoriteCubit, GenericState>(
        "Should emit [Loading,Error] when both insert is fail",
        build: () {
          when(() => addFavorite.execute(meal)).thenAnswer((_) async => const Left(Failure("Database Error")));
          return cubit;
        },
        act: (cubit) => cubit.insertFavorite(meal),
        expect: () => [
          GenericLoadingState(),
          const GenericErrorState("Database Error"),
        ],
        verify: (cubit) {
          verify(() => addFavorite.execute(meal)).called(1);
        },
      );
    });

    group("Delete Favorite", () {
      blocTest<DetailFavoriteCubit, GenericState>(
        "Should emit [Loading,Loaded] when delete is success",
        build: () {
          when(() => deleteFavorite.execute(meal.id)).thenAnswer(
            (_) async => const Right(
              true,
            ),
          );
          when(() => isFavorite.execute(meal.id)).thenAnswer(
            (_) async => const Right(
              false,
            ),
          );
          return cubit;
        },
        act: (cubit) => cubit.removeFavorite(meal.id),
        expect: () => [
          GenericLoadingState(),
          const GenericLoadedState(
            false,
          )
        ],
        verify: (cubit) {
          verify(() => deleteFavorite.execute(meal.id)).called(1);
          verify(() => isFavorite.execute(meal.id)).called(1);
        },
      );
      blocTest<DetailFavoriteCubit, GenericState>(
        "Should emit [Loading,Error] when delete is fail",
        build: () {
          when(() => deleteFavorite.execute(meal.id)).thenAnswer((_) async => const Left(Failure("Database Error")));
          return cubit;
        },
        act: (cubit) => cubit.removeFavorite(meal.id),
        expect: () => [
          GenericLoadingState(),
          const GenericErrorState("Database Error"),
        ],
        verify: (cubit) {
          verify(() => deleteFavorite.execute(meal.id)).called(1);
        },
      );
    });
  });
}
