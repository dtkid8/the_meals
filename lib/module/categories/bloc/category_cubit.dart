import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:the_meals/core/generic_state.dart';
import '../../../core/domain/model/category.dart';
import '../../../core/domain/usecase/get_categories.dart';

class CategoryCubit extends Cubit<GenericState> {
  final GetCategories getCategories;
  List<Category> category = [];

  CategoryCubit({
    required this.getCategories,
  }) : super(GenericInitializeState());

  void fetchCategories() async {
    emit(GenericLoadingState());
    final resultCategory = await getCategories.execute();
    resultCategory.fold((l) {
      emit(
        GenericErrorState(
          l.message,
        ),
      );
      return;
    }, (r) {
      category = r;
      emit(
        GenericLoadedState(
          category,
        ),
      );
    });
  }
}
