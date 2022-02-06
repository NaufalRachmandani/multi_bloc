import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:multi_bloc/bloc/color_bloc/color_bloc.dart';
import 'package:multi_bloc/bloc/counter_bloc/counter_bloc.dart';
import 'package:multi_bloc/ui/main_page.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MultiBlocProvider(
      providers: [
        BlocProvider(
            create: (context) =>
                CounterBloc()..add(const IncrementEvent(number: 5))),
        BlocProvider(
            create: (context) =>
                ColorBloc()..add(const ChangeColorEvent(color: Colors.blueAccent))),
      ],
      child: const MaterialApp(
        debugShowCheckedModeBanner: false,
        home: MainPage(),
      ),
    );
  }
}
