import 'package:bloc_test/bloc_test.dart';
import 'package:dartz/dartz.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:mocktail/mocktail.dart';
import 'package:the_meals/core/data/repository/local_drift_database.dart';
import 'package:the_meals/core/domain/model/meal.dart';
import 'package:the_meals/core/domain/usecase/get_favorites.dart';
import 'package:the_meals/core/failure.dart';
import 'package:the_meals/core/generic_state.dart';
import 'package:the_meals/module/favorite/bloc/favorite_cubit.dart';

class MockGetFavorites extends Mock implements GetFavorites {}

void main() {
  late FavoriteCubit cubit;
  late MockGetFavorites getFavorites;
  List<Meal> model = [
    Meal.fromDriftEntity(
      const FavoriteEntityData(id: "1", name: "bakso", image: "abc.jpg"),
    )
  ];

  setUp(() {
    getFavorites = MockGetFavorites();
    cubit = FavoriteCubit(getFavorites: getFavorites);
  });

  group("Favorite Cubit Test", () {
    test('initial state should be initialize', () {
      expect(cubit.state, GenericInitializeState());
      expect(cubit.favorite, []);
    });

    blocTest<FavoriteCubit, GenericState>(
      "Should emit [Loading,Loaded] when fetch data is success",
      build: () {
        when(() => getFavorites.execute()).thenAnswer(
          (_) async => Right(
            model,
          ),
        );
        return cubit;
      },
      act: (cubit) => cubit.fetchFavorites(),
      expect: () => [
        GenericLoadingState(),
        GenericLoadedState(
          model,
        )
      ],
      verify: (cubit) {
        verify(() => getFavorites.execute()).called(1);
      },
    );
    blocTest<FavoriteCubit, GenericState>(
      "Should emit [Loading,Error] when fetch data is fail",
      build: () {
        when(() => getFavorites.execute()).thenAnswer(
          (_) async => const Left(Failure("Database Error")),
        );
        return cubit;
      },
      act: (cubit) => cubit.fetchFavorites(),
      expect: () => [
        GenericLoadingState(),
        const GenericErrorState("Database Error"),
      ],
      verify: (cubit) {
        verify(() => getFavorites.execute()).called(1);
      },
    );
  });
}
