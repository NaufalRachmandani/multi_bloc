
import 'package:bloc/bloc.dart';
import 'package:equatable/equatable.dart';

part 'counter_event.dart';

part 'counter_state.dart';

class CounterBloc extends Bloc<CounterEvent, CounterState> {
  CounterBloc() : super(const CounterLoadedState()) {
    on<IncrementEvent>(_incrementNumber);
  }

  void _incrementNumber(IncrementEvent event, Emitter<CounterState> emit) {
    emit(CounterLoadedState(number: event.number));
  }
}
