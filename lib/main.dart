import 'package:bloc_next_name/bloc/counter_bloc.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

void main() {
  runApp(const MainApp());
}

class MainApp extends StatelessWidget {
  const MainApp({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) => CounterBloc(),
      child: Scaffold(
        backgroundColor: Colors.white,
        body: Center(
          child: Text(context.read<CounterBloc>().state,style: const TextStyle(color: Colors.black),),
        ),
        floatingActionButton: FloatingActionButton(
          onPressed: () {
            context.read<CounterIncrementPressed>();
          },
          child: const Icon(Icons.arrow_forward),
        ),
      ),
    );
  }
}
