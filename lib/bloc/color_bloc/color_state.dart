part of 'color_bloc.dart';

abstract class ColorState extends Equatable {
  const ColorState();
}

class ColorLoadedState extends ColorState {
  final Color color;

  const ColorLoadedState({this.color = Colors.pink});

  @override
  List<Object?> get props => [color];
}

