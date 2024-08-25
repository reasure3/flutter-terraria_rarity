import 'dart:math';

import 'package:flutter/material.dart';

enum RainbowState {
  increaseGreen,
  decreaseRed,
  increaseBlue,
  decreaseGreen,
  increaseRed,
  decreaseeBlue;

  RainbowState operator +(int other) {
    int result = index + other;
    result %= 6;
    return RainbowState.values[result];
  }
}

enum FieryRedState {
  increaseGreen,
  decreaseGreen;

  FieryRedState operator +(int other) {
    int result = index + other;
    result %= 2;
    return FieryRedState.values[result];
  }
}

class RainbowColor extends AnimateColor {
  RainbowState _rainbowSate = RainbowState.increaseGreen;

  RainbowColor({super.startColor = const Color(0xFFFF0000)});

  @override
  Color updateColor() {
    int red = _color.red;
    int green = _color.green;
    int blue = _color.blue;
    switch (_rainbowSate) {
      case RainbowState.increaseGreen:
        green = min(green + 21, 255);
        if (green == 255) _rainbowSate++;
      case RainbowState.decreaseRed:
        red = max(red - 21, 0);
        if (red == 0) _rainbowSate++;
      case RainbowState.increaseBlue:
        blue = min(blue + 21, 255);
        if (blue == 255) _rainbowSate++;
      case RainbowState.decreaseGreen:
        green = max(green - 21, 0);
        if (green == 0) _rainbowSate++;
      case RainbowState.increaseRed:
        red = min(red + 21, 255);
        if (red == 255) _rainbowSate++;
      case RainbowState.decreaseeBlue:
        blue = max(blue - 21, 0);
        if (blue == 0) _rainbowSate++;
    }
    _color = Color.fromARGB(255, red, green, blue);
    return _color;
  }
}

class FieryColor extends AnimateColor {
  FieryRedState _fieryRedState = FieryRedState.increaseGreen;

  FieryColor({super.startColor = const Color(0xFFFF0000)});

  @override
  Color updateColor() {
    int green = _color.green;
    switch (_fieryRedState) {
      case FieryRedState.increaseGreen:
        green = min(green + 30, 200);
        if (green == 200) _fieryRedState++;
      case FieryRedState.decreaseGreen:
        green = max(green - 30, 0);
        if (green == 0) _fieryRedState++;
    }
    _color = Color.fromARGB(255, 255, green, 0);
    return _color;
  }
}

abstract class AnimateColor {
  Color _color;
  Color get curColor => _color;

  AnimateColor({Color startColor = const Color(0xFF000000)})
      : _color = startColor;

  Color updateColor();
}
