import 'package:bloc_test/bloc_test.dart';
import 'package:dartz/dartz.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:mocktail/mocktail.dart';
import 'package:the_meals/core/data/entity/category/category_result_entity.dart';
import 'package:the_meals/core/domain/model/meal.dart';
import 'package:the_meals/core/domain/usecase/get_category_result.dart';
import 'package:the_meals/core/failure.dart';
import 'package:the_meals/core/generic_state.dart';
import 'package:the_meals/module/categories/bloc/category_result_cubit.dart';
import '../../response.dart';

class MockGetCategoryResult extends Mock implements GetCategoryResult {}

void main() {
  late CategoryResultCubit cubit;
  late MockGetCategoryResult getCategoryResult;
  const query = "Seafood";
  CategoryResultEntity categoryEntity = CategoryResultEntity.fromJson(responseCategoryResult);
  List<Meal> model = categoryEntity.meals?.map((e) => Meal.fromEntity(e)).toList() ?? [];

  setUp(() {
    getCategoryResult = MockGetCategoryResult();
    cubit = CategoryResultCubit(getCategoryResult: getCategoryResult);
  });

  group("Category Result Cubit Test", () {
    test('initial state should be initialize', () {
      expect(cubit.state, GenericInitializeState());
      expect(cubit.meals, []);
    });

    blocTest<CategoryResultCubit, GenericState>(
      "Should emit [Loading,Loaded] when fetch data is success",
      build: () {
        when(() => getCategoryResult.execute(query)).thenAnswer(
          (_) async => Right(
            model,
          ),
        );
        return cubit;
      },
      act: (cubit) => cubit.fetchCategoryResult(query),
      expect: () => [
        GenericLoadingState(),
        GenericLoadedState(
          model,
        )
      ],
      verify: (cubit) {
        verify(() => getCategoryResult.execute(query)).called(1);
      },
    );

    blocTest<CategoryResultCubit, GenericState>(
      "Should emit [Loading,Error] when fetch data is fail",
      build: () {
        when(() => getCategoryResult.execute(query)).thenAnswer(
          (_) async => const Left(Failure("Network Error")),
        );
        return cubit;
      },
      act: (cubit) => cubit.fetchCategoryResult(query),
      expect: () => [
        GenericLoadingState(),
        const GenericErrorState("Network Error"),
      ],
      verify: (cubit) {
        verify(() => getCategoryResult.execute(query)).called(1);
      },
    );
  });
}
