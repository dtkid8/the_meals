import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:the_meals/core/generic_state.dart';
import '../../../core/domain/model/meal.dart';
import '../../../core/domain/usecase/get_favorites.dart';

class FavoriteCubit extends Cubit<GenericState> {
  final GetFavorites getFavorites;
  List<Meal> favorite = [];

  FavoriteCubit({
    required this.getFavorites,
  }) : super(GenericInitializeState());

  void fetchFavorites() async {
    emit(GenericLoadingState());
    final result = await getFavorites.execute();
    result.fold((l) {
      emit(
        GenericErrorState(
          l.message,
        ),
      );
      return;
    }, (r) {
      favorite = r;
      emit(
        GenericLoadedState(
          favorite,
        ),
      );
    });
  }
}
