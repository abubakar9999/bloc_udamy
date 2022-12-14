import 'package:counter_me/bloc/counter_bloc.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class HomePage extends StatelessWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("AppBar"),),
      body: Center(
        child: Column(
          children: <Widget>[

            BlocBuilder<CounterBloc,CounterState>(
              builder: (context,state){
                return Text(state.data.toString());
              }),

              ElevatedButton.icon(onPressed: (){
                context.read<CounterBloc>().add(IncrementEvent());

              }, icon: Icon(Icons.add), label: Text("Add")),
              ElevatedButton.icon(onPressed: (){
                context.read<CounterBloc>().add(DecrementEvent());
              }, icon: Icon(Icons.remove), label: Text("remove")),
            
            
          ],
        ),
      ),
    );
  }
}