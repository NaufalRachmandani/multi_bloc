import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:multi_bloc/ui/draft_page.dart';

import '../bloc/color_bloc/color_bloc.dart';
import '../bloc/counter_bloc/counter_bloc.dart';

class SecondPage extends StatelessWidget {
  const SecondPage({Key? key}) : super(key: key);

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
                      return TextButton(
                        onPressed: () {
                          BlocProvider.of<CounterBloc>(context)
                              .add(IncrementEvent(number: state.number + 1));
                        },
                        child: Text(
                          state.number.toString(),
                          style: const TextStyle(
                              fontSize: 40, fontWeight: FontWeight.bold),
                        ),
                      );
                    }
                    return Container();
                  }),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      ElevatedButton(
                        onPressed: () {
                          BlocProvider.of<ColorBloc>(context)
                              .add(const ChangeColorEvent(color: Colors.pink));
                        },
                        child: null,
                        style: ButtonStyle(
                            backgroundColor:
                                MaterialStateProperty.all<Color>(Colors.pink),
                            shape: MaterialStateProperty.all(
                                const CircleBorder())),
                      ),
                      ElevatedButton(
                        onPressed: () {
                          BlocProvider.of<ColorBloc>(context)
                              .add(const ChangeColorEvent(color: Colors.amber));
                        },
                        child: null,
                        style: ButtonStyle(
                            backgroundColor:
                                MaterialStateProperty.all<Color>(Colors.amber),
                            shape: MaterialStateProperty.all(
                                const CircleBorder())),
                      ),
                      ElevatedButton(
                        onPressed: () {
                          BlocProvider.of<ColorBloc>(context)
                              .add(const ChangeColorEvent(color: Colors.purple));
                        },
                        child: null,
                        style: ButtonStyle(
                            backgroundColor:
                                MaterialStateProperty.all<Color>(Colors.purple),
                            shape: MaterialStateProperty.all(
                                const CircleBorder())),
                      ),
                    ],
                  )
                ],
              ),
            ));
      },
    );
  }
}
