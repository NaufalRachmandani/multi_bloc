part of 'counter_bloc.dart';

abstract class CounterState extends Equatable {
  const CounterState();
}

class CounterLoadedState extends CounterState {
  final int number;

  const CounterLoadedState({this.number = 0});

  @override
  List<Object?> get props => [number];
}
