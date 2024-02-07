import 'package:flutter_bloc/flutter_bloc.dart';

import '../../../core/domain/model/meal.dart';
import '../../../core/domain/usecase/get_category_result.dart';
import '../../../core/generic_state.dart';

class CategoryResultCubit extends Cubit<GenericState> {
  final GetCategoryResult getCategoryResult;
  List<Meal> meals = [];

  CategoryResultCubit({
    required this.getCategoryResult,
  }) : super(GenericInitializeState());

  void fetchCategoryResult(String query) async {
    emit(GenericLoadingState());
    final resultMeals = await getCategoryResult.execute(query);
    resultMeals.fold((l) {
      emit(
        GenericErrorState(
          l.message,
        ),
      );
    }, (r) {
      meals = r;
      emit(GenericLoadedState(meals));
    });
  }
}
