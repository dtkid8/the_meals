import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:the_meals/core/domain/usecase/add_favorite.dart';
import 'package:the_meals/core/domain/usecase/delete_favorite.dart';
import 'package:the_meals/core/domain/usecase/is_favorite.dart';

import '../../../core/domain/model/meal.dart';
import '../../../core/generic_state.dart';

class DetailFavoriteCubit extends Cubit<GenericState> {
  final IsFavorite isFavorite;
  final AddFavorite addFavorite;
  final DeleteFavorite deleteFavorite;

  bool _isCheckFavorite = false;
  bool get isCheckFavorite => _isCheckFavorite;

  DetailFavoriteCubit({
    required this.isFavorite,
    required this.addFavorite,
    required this.deleteFavorite,
  }) : super(GenericInitializeState());

  void checkFavorite(String id) async {
    emit(GenericLoadingState());
    final result = await isFavorite.execute(id);
    result.fold((l) {
      emit(
        GenericErrorState(
          l.message,
        ),
      );
    }, (r) {
      _isCheckFavorite = r;
      emit(GenericLoadedState(_isCheckFavorite));
    });
  }

  void insertFavorite(Meal meal) async {
    emit(GenericLoadingState());
    final result = await addFavorite.execute(meal);
    result.fold((l) {
      emit(
        GenericErrorState(
          l.message,
        ),
      );
      return;
    }, (r) {
      _isCheckFavorite = r;
      checkFavorite(meal.id);
    });
  }

  void removeFavorite(String id) async {
    emit(GenericLoadingState());
    final result = await deleteFavorite.execute(id);
    result.fold((l) {
      emit(
        GenericErrorState(
          l.message,
        ),
      );
      return;
    }, (r) {
      _isCheckFavorite = r;
      checkFavorite(id);
    });
  }
}
