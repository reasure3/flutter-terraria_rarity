import 'package:flutter/material.dart';

class StrokeText extends StatelessWidget {
  final String text;
  final double strokeWidth;
  final Color strokeColor;
  final TextStyle? textStyle;
  final TextAlign? textAlign;
  final TextDirection? textDirection;
  final TextScaler? textScaler;
  final TextOverflow? overflow;
  final int? maxLines;

  const StrokeText({
    super.key,
    required this.text,
    this.strokeWidth = 1,
    this.strokeColor = Colors.black,
    this.textStyle,
    this.textAlign,
    this.textDirection,
    this.textScaler,
    this.overflow,
    this.maxLines,
  });

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        Text(
          text,
          style: textStyle?.merge(
            TextStyle(
              foreground: Paint()
                ..style = PaintingStyle.stroke
                ..strokeWidth = strokeWidth
                ..color = strokeColor,
            ),
          ),
          textAlign: textAlign,
          textDirection: textDirection,
          textScaler: textScaler,
          overflow: overflow,
          maxLines: maxLines,
        ),
        Text(
          text,
          style: textStyle,
          textDirection: textDirection,
          textScaler: textScaler,
          overflow: overflow,
          maxLines: maxLines,
        ),
      ],
    );
  }
}
