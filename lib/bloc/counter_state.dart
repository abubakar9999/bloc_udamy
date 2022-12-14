// ignore_for_file: public_member_api_docs, sort_constructors_first
part of 'counter_bloc.dart';
@immutable
  class CounterState extends Equatable {
  int data;
  CounterState({
    required this.data,
  });
   
  
  @override
  List<Object> get props => [];
}

class CounterInitial extends CounterState {
  CounterInitial():super(data: 0);

}

