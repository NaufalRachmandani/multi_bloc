import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:multi_bloc/ui/draft_page.dart';
import 'package:multi_bloc/ui/second_page.dart';

import '../bloc/color_bloc/color_bloc.dart';
import '../bloc/counter_bloc/counter_bloc.dart';

class MainPage extends StatelessWidget {
  const MainPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<ColorBloc, ColorState>(
      builder: (context, state) {
        Color backgroundColor = Colors.black;
        if (state is ColorLoadedState) {
          backgroundColor = state.color;
        }
        return DraftPage(
            backgroundColor: backgroundColor,
            body: Center(
              child: Column(
                mainAxisSize: MainAxisSize.min,
                children: [
                  BlocBuilder<CounterBloc, CounterState>(
                      builder: (context, state) {
                    if (state is CounterLoadedState) {
                      return Text(
                        state.number.toString(),
                        style: const TextStyle(
                            fontSize: 40, fontWeight: FontWeight.bold),
                      );
                    }
                    return Container();
                  }),
                  ElevatedButton(
                    onPressed: () {
                      Navigator.push(
                          context,
                          MaterialPageRoute(
                              builder: (context) => const SecondPage()));
                    },
                    child: const Text(
                      "Click to Change",
                      style: TextStyle(color: Colors.white),
                    ),
                    style: ButtonStyle(
                        backgroundColor:
                            MaterialStateProperty.all<Color>(backgroundColor),
                        shape:
                            MaterialStateProperty.all(const StadiumBorder())),
                  )
                ],
              ),
            ));
      },
    );
  }
}
