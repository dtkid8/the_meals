import 'package:bloc_test/bloc_test.dart';
import 'package:dartz/dartz.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:mocktail/mocktail.dart';
import 'package:the_meals/core/data/entity/category/categories_entity.dart';
import 'package:the_meals/core/domain/model/category.dart';
import 'package:the_meals/core/domain/usecase/get_categories.dart';
import 'package:the_meals/core/failure.dart';
import 'package:the_meals/core/generic_state.dart';
import 'package:the_meals/module/categories/bloc/category_cubit.dart';

import '../../response.dart';

class MockGetCategories extends Mock implements GetCategories {}

void main() {
  late CategoryCubit cubit;
  late MockGetCategories getCategories;
  CategoriesEntity categoryEntity = CategoriesEntity.fromJson(responseCategory);
  List<Category> model = categoryEntity.categories?.map((e) => Category.fromEntity(e)).toList() ?? [];
  
  setUp(() {
    getCategories = MockGetCategories();
    cubit = CategoryCubit(getCategories: getCategories);
  });

  group("Category Cubit Test", () {
    test('initial state should be initialize', () {
      expect(cubit.state, GenericInitializeState());
      expect(cubit.category, []);
    });

    blocTest<CategoryCubit, GenericState>(
      "Should emit [Loading,Loaded] when fetch data is success",
      build: () {
        when(() => getCategories.execute()).thenAnswer(
          (_) async => Right(
            model,
          ),
        );
        return cubit;
      },
      act: (cubit) => cubit.fetchCategories(),
      expect: () => [
        GenericLoadingState(),
        GenericLoadedState(
          model,
        )
      ],
      verify: (cubit) {
        verify(() => getCategories.execute()).called(1);
      },
    );
    blocTest<CategoryCubit, GenericState>(
      "Should emit [Loading,Error] when fetch data is fail",
      build: () {
        when(() => getCategories.execute()).thenAnswer(
          (_) async => const Left(Failure("Network Error")),
        );
        return cubit;
      },
      act: (cubit) => cubit.fetchCategories(),
      expect: () => [
        GenericLoadingState(),
        const GenericErrorState("Network Error"),
      ],
      verify: (cubit) {
        verify(() => getCategories.execute()).called(1);
      },
    );
  });
}
