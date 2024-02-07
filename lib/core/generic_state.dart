import 'package:equatable/equatable.dart';

abstract class GenericState extends Equatable {
  const GenericState();

  @override
  List<Object> get props => [];
}

class GenericInitializeState extends GenericState {}

class GenericLoadingState extends GenericState {}

class GenericErrorState extends GenericState {
  final String message;

  const GenericErrorState(this.message);

  @override
  List<Object> get props => [message];
}

class GenericLoadedState<T> extends GenericState {
  final T data;
  const GenericLoadedState(this.data);

  @override
  List<Object> get props => [data as Object];
}
