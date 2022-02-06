part of 'color_bloc.dart';

abstract class ColorEvent extends Equatable {
  const ColorEvent();
}

class ChangeColorEvent extends ColorEvent {
  final Color color;

  const ChangeColorEvent({this.color = Colors.pink});

  @override
  List<Object?> get props => [color];
}
