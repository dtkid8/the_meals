import 'package:bloc_test/bloc_test.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:mocktail/mocktail.dart';
import 'package:the_meals/core/data/entity/detail/detail_entity.dart';
import 'package:the_meals/core/domain/model/detail.dart';
import 'package:the_meals/core/generic_state.dart';
import 'package:the_meals/module/detail/bloc/detail_cubit.dart';
import 'package:the_meals/module/detail/bloc/detail_favorite_cubit.dart';
import 'package:the_meals/module/detail/view/detail_screen.dart';

import '../../response.dart';

class MockDetailCubit extends MockCubit<GenericState> implements DetailCubit {}

class MockDetailFavoriteCubit extends MockCubit<GenericState> implements DetailFavoriteCubit {}

void main() {
  late MockDetailCubit detailCubit;
  late MockDetailFavoriteCubit detailFavoriteCubit;
  const idMeal = "52772";
  DetailEntity detailEntity = DetailEntity.fromJson(responseDetail);
  Detail model = Detail.fromEntity(detailEntity);

  setUp(() {
    detailCubit = MockDetailCubit();
    detailFavoriteCubit = MockDetailFavoriteCubit();
  });

  tearDown(() {
    detailCubit.close();
    detailFavoriteCubit.close();
  });

  Widget setupWidget() {
    return MultiBlocProvider(
      providers: [
        BlocProvider<DetailCubit>.value(value: detailCubit),
        BlocProvider<DetailFavoriteCubit>.value(value: detailFavoriteCubit),
      ],
      child: const MaterialApp(
        home: DetailView(id: idMeal),
      ),
    );
  }

  testWidgets('Screen should display center circular progress when loading', (WidgetTester tester) async {
    when(() => detailCubit.state).thenReturn(GenericLoadingState());
    when(() => detailFavoriteCubit.state).thenReturn(GenericInitializeState());

    final circularProgressFinder = find.byType(CircularProgressIndicator);
    final circularProgressKey = find.byKey(const Key("DetailLoading"));

    await tester.pumpWidget(setupWidget());

    expect(circularProgressFinder, findsOneWidget);
    expect(circularProgressKey, findsOneWidget);
  });

  testWidgets('Screen should display detail content when loaded', (WidgetTester tester) async {
    when(() => detailCubit.fetchDetail(idMeal)).thenAnswer((_) async {});
    when(() => detailCubit.state).thenReturn(GenericLoadedState(model));
    when(() => detailFavoriteCubit.checkFavorite(idMeal)).thenAnswer((_) async {});
    when(() => detailFavoriteCubit.isCheckFavorite).thenReturn(false);
    when(() => detailFavoriteCubit.state).thenReturn(const GenericLoadedState(false));

    final detailContainer = find.byKey(const Key("DetailContainer"));
    final likeButton = find.byKey(const Key("DetailLikeButton"));
    await tester.pumpWidget(setupWidget());

    expect(likeButton, findsOneWidget);
    expect(detailContainer, findsOneWidget);
  });
}
