part of 'counter_bloc.dart';

abstract class CounterEvent extends Equatable {
  const CounterEvent();
}

class IncrementEvent extends CounterEvent {
  final int number;

  const IncrementEvent({this.number = 0});

  @override
  List<Object?> get props => [number];
}