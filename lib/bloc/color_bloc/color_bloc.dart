import 'dart:async';

import 'package:bloc/bloc.dart';
import 'package:equatable/equatable.dart';
import 'package:flutter/material.dart';

part 'color_event.dart';
part 'color_state.dart';

class ColorBloc extends Bloc<ColorEvent, ColorState> {
  ColorBloc() : super(const ColorLoadedState()) {
    on<ChangeColorEvent>(_changeColorEvent);
  }

  void _changeColorEvent(ChangeColorEvent event, Emitter<ColorState> emit) {
    emit(ColorLoadedState(color: event.color));
  }
}
