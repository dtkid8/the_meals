import 'package:bloc_test/bloc_test.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:mocktail/mocktail.dart';
import 'package:the_meals/core/data/repository/local_drift_database.dart';
import 'package:the_meals/core/domain/model/meal.dart';
import 'package:the_meals/core/generic_state.dart';
import 'package:the_meals/module/favorite/bloc/favorite_cubit.dart';
import 'package:the_meals/module/favorite/view/favorite_screen.dart';

class MockFavoriteCubit extends MockCubit<GenericState> implements FavoriteCubit {}

void main() {
  late MockFavoriteCubit favoriteCubit;
  List<Meal> model = [
    Meal.fromDriftEntity(
      const FavoriteEntityData(id: "1", name: "bakso", image: "abc.jpg"),
    )
  ];
  setUp(() {
    favoriteCubit = MockFavoriteCubit();
  });

  tearDown(() {
    favoriteCubit.close();
  });

  Widget setupWidget() {
    return MultiBlocProvider(
      providers: [
        BlocProvider<FavoriteCubit>.value(value: favoriteCubit),
      ],
      child: const MaterialApp(
        home: FavoriteView(),
      ),
    );
  }

  testWidgets('Screen should display center circular progress when loading', (WidgetTester tester) async {
    when(() => favoriteCubit.state).thenReturn(GenericLoadingState());

    final circularProgressFinder = find.byType(CircularProgressIndicator);
    final circularProgressKey = find.byKey(const Key("FavoriteLoading"));

    await tester.pumpWidget(setupWidget());

    expect(circularProgressFinder, findsOneWidget);
    expect(circularProgressKey, findsOneWidget);
  });

  testWidgets('Screen should display favorite content when loaded', (WidgetTester tester) async {
    when(() => favoriteCubit.fetchFavorites()).thenAnswer((_) async {});
    when(() => favoriteCubit.state).thenReturn(GenericLoadedState(model));

    final favoriteListContainer = find.byKey(const Key("FavoriteListContainer"));
    final cards = find.byType(Card);
    await tester.pumpWidget(setupWidget());

    expect(favoriteListContainer, findsOneWidget);
    expect(cards, findsWidgets);
  });

  testWidgets('Screen should display empty content when loaded', (WidgetTester tester) async {
    when(() => favoriteCubit.fetchFavorites()).thenAnswer((_) async {});
    when(() => favoriteCubit.state).thenReturn(const GenericLoadedState(<Meal>[]));

    final favoriteListContainer = find.byKey(const Key("FavoriteListEmpty"));
    await tester.pumpWidget(setupWidget());

    expect(favoriteListContainer, findsOneWidget);
  });
}
