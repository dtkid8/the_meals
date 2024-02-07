import 'package:bloc_test/bloc_test.dart';
import 'package:dartz/dartz.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:mocktail/mocktail.dart';
import 'package:the_meals/core/data/entity/detail/detail_entity.dart';
import 'package:the_meals/core/domain/model/detail.dart';
import 'package:the_meals/core/domain/usecase/get_detail.dart';
import 'package:the_meals/core/failure.dart';
import 'package:the_meals/core/generic_state.dart';
import 'package:the_meals/module/detail/bloc/detail_cubit.dart';
import '../../response.dart';

class MockGetDetail extends Mock implements GetDetail {}

void main() {
  late DetailCubit cubit;
  late MockGetDetail getDetail;
  const idMeal = "52772";
  DetailEntity detailEntity = DetailEntity.fromJson(responseDetail);
  Detail model = Detail.fromEntity(detailEntity);

  setUp(() {
    getDetail = MockGetDetail();
    cubit = DetailCubit(getDetail: getDetail);
  });

  group("Detail Cubit Test", () {
    test('initial state should be initialize', () {
      expect(cubit.state, GenericInitializeState());
    });

    blocTest<DetailCubit, GenericState>(
      "Should emit [Loading,Loaded] when fetch data is success",
      build: () {
        when(() => getDetail.execute(idMeal)).thenAnswer(
          (_) async => Right(
            model,
          ),
        );
        return cubit;
      },
      act: (cubit) => cubit.fetchDetail(idMeal),
      expect: () => [
        GenericLoadingState(),
        GenericLoadedState(
          model,
        )
      ],
      verify: (cubit) {
        verify(() => getDetail.execute(idMeal)).called(1);
      },
    );

    blocTest<DetailCubit, GenericState>(
      "Should emit [Loading,Error] when fetch data is fail",
      build: () {
        when(() => getDetail.execute(idMeal)).thenAnswer(
          (_) async => const Left(Failure("Network Error")),
        );
        return cubit;
      },
      act: (cubit) => cubit.fetchDetail(idMeal),
      expect: () => [
        GenericLoadingState(),
        const GenericErrorState("Network Error"),
      ],
      verify: (cubit) {
        verify(() => getDetail.execute(idMeal)).called(1);
      },
    );
  });
}
