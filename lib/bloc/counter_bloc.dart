import 'package:bloc/bloc.dart';
import 'package:equatable/equatable.dart';
import 'package:flutter/widgets.dart';

part 'counter_event.dart';
part 'counter_state.dart';

class CounterBloc extends Bloc<CounterEvent, CounterState> {
  CounterBloc() : super(CounterInitial()) {
    on<IncrementEvent>((event, emit) {
      print("IIIIIIIIIIIIIIIII");
      emit(CounterState(data: state.data+1));
    
    });

    on<DecrementEvent>((event, emit) {
      print("ddddddddddddddd");

      emit(CounterState(data: state.data-1));

    } );
  }
}
