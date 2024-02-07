import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:the_meals/core/domain/usecase/get_detail.dart';

import '../../../core/generic_state.dart';

class DetailCubit extends Cubit<GenericState> {
  final GetDetail getDetail;
  DetailCubit({
    required this.getDetail,
  }) : super(GenericInitializeState());

  void fetchDetail(String id) async {
    emit(GenericLoadingState());
    final resultDetail = await getDetail.execute(id);
    resultDetail.fold((l) {
      emit(
        GenericErrorState(
          l.message,
        ),
      );
      return;
    }, (r) {
      emit(
        GenericLoadedState(
          r,
        ),
      );
    });
  }
}
