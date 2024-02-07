import 'package:bloc_test/bloc_test.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:mocktail/mocktail.dart';
import 'package:the_meals/core/data/entity/category/categories_entity.dart';
import 'package:the_meals/core/data/entity/category/category_result_entity.dart';
import 'package:the_meals/core/domain/model/category.dart';
import 'package:the_meals/core/domain/model/meal.dart';
import 'package:the_meals/core/generic_state.dart';
import 'package:the_meals/module/categories/bloc/category_cubit.dart';
import 'package:the_meals/module/categories/bloc/category_result_cubit.dart';
import 'package:the_meals/module/categories/view/category_screen.dart';

import '../../../response.dart';

class MockCategoryCubit extends MockCubit<GenericState> implements CategoryCubit {}

class MockCategoryResultCubit extends MockCubit<GenericState> implements CategoryResultCubit {}

void main() {
  late MockCategoryCubit categoryCubit;
  late MockCategoryResultCubit categoryResultCubit;
  CategoriesEntity categoryEntity = CategoriesEntity.fromJson(responseCategory);
  List<Category> model = categoryEntity.categories?.map((e) => Category.fromEntity(e)).toList() ?? [];
  CategoryResultEntity categoryResultEntity = CategoryResultEntity.fromJson(responseCategoryResult);
  List<Meal> mealModel = categoryResultEntity.meals?.map((e) => Meal.fromEntity(e)).toList() ?? [];

  setUp(() {
    categoryCubit = MockCategoryCubit();
    categoryResultCubit = MockCategoryResultCubit();
  });

  tearDown(() {
    categoryCubit.close();
    categoryResultCubit.close();
  });

  Widget setupWidget() {
    return MultiBlocProvider(
      providers: [
        BlocProvider<CategoryCubit>.value(
          value: categoryCubit,
        ),
        BlocProvider<CategoryResultCubit>.value(
          value: categoryResultCubit,
        ),
      ],
      child: const MaterialApp(
        home: CategoryView(),
      ),
    );
  }

  testWidgets('Screen should display center circular progress when loading', (WidgetTester tester) async {
    when(() => categoryCubit.state).thenReturn(GenericLoadingState());
    when(() => categoryResultCubit.state).thenReturn(GenericInitializeState());

    final circularProgressFinder = find.byType(CircularProgressIndicator);
    final circularProgressKey = find.byKey(const Key("CategoryLoading"));

    await tester.pumpWidget(setupWidget());

    expect(circularProgressFinder, findsOneWidget);
    expect(circularProgressKey, findsOneWidget);
  });

  testWidgets('Screen should display category button when loaded', (WidgetTester tester) async {
    when(() => categoryCubit.fetchCategories()).thenAnswer((_) async {});
    when(() => categoryCubit.state).thenReturn(GenericLoadedState(model));
    when(() => categoryResultCubit.state).thenReturn(GenericInitializeState());

    final buttonFinder = find.byType(ElevatedButton);
    final buttonKey = find.byKey(const Key("CategoryButtonContainer"));

    await tester.pumpWidget(setupWidget());

    expect(buttonFinder, findsWidgets);
    expect(buttonKey, findsOneWidget);
  });

  testWidgets('Screen should display loading when category button already loaded', (WidgetTester tester) async {
    when(() => categoryCubit.fetchCategories()).thenAnswer((_) async {});
    when(() => categoryCubit.state).thenReturn(GenericLoadedState(model));
    when(() => categoryResultCubit.state).thenReturn(GenericLoadingState());

    final progressFinder = find.byType(CircularProgressIndicator);
    final progressKey = find.byKey(const Key("CategoryListLoading"));

    await tester.pumpWidget(setupWidget());

    expect(progressFinder, findsWidgets);
    expect(progressKey, findsOneWidget);
  });

  testWidgets('Screen should display list of meal card when success', (WidgetTester tester) async {
    when(() => categoryCubit.state).thenReturn(GenericLoadedState(model));
    when(() => categoryResultCubit.fetchCategoryResult(model.first.category)).thenAnswer((_) async {});
    when(() => categoryResultCubit.state).thenReturn(GenericLoadedState(mealModel));

    final cardFinder = find.byType(Card);
    final containerCardKey = find.byKey(const Key("CategoryListContainer"));

    await tester.pumpWidget(setupWidget());

    expect(cardFinder, findsWidgets);
    expect(containerCardKey, findsOneWidget);
  });
}
