import 'package:flutter/material.dart';
import 'package:flutter/scheduler.dart';
import 'package:terraria_rarity/colors/animate_color.dart';
import 'package:terraria_rarity/widgets/stroke_text.dart';

class RarityText extends StatelessWidget {
  const RarityText(
      {super.key, required this.tier, required this.text, required this.color});

  final String tier;
  final String text;
  final Color color;

  @override
  Widget build(BuildContext context) {
    return Row(
      textBaseline: TextBaseline.alphabetic,
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Flexible(
          fit: FlexFit.tight,
          flex: 5,
          child: Text(
            '$tier:',
            style: Theme.of(context).textTheme.bodySmall,
            textAlign: TextAlign.end,
          ),
        ),
        const SizedBox(width: 25),
        Flexible(
          fit: FlexFit.tight,
          flex: 8,
          child: StrokeText(
            text: text,
            textStyle: Theme.of(context).textTheme.bodyMedium?.apply(
                  color: color,
                ),
            strokeWidth: 3.5,
          ),
        ),
      ],
    );
  }
}

class AnimateRarityText extends StatefulWidget {
  const AnimateRarityText(
      {super.key,
      required this.tier,
      required this.text,
      required this.animColor});

  final String tier;
  final String text;
  final AnimateColor animColor;

  @override
  State<AnimateRarityText> createState() => _AnimateRarityTextState();
}

class _AnimateRarityTextState extends State<AnimateRarityText>
    with SingleTickerProviderStateMixin {
  late final Ticker _ticker;
  Duration _lastUpdateTick = Duration.zero;

  @override
  void initState() {
    super.initState();
    _ticker = createTicker(onTick)..start();
  }

  void onTick(Duration elasped) {
    if (elasped.inMilliseconds - _lastUpdateTick.inMilliseconds >= 50) {
      _lastUpdateTick = elasped;
      setState(() {
        widget.animColor.updateColor();
      });
    }
  }

  @override
  Widget build(BuildContext context) {
    return RarityText(
      tier: widget.tier,
      text: widget.text,
      color: widget.animColor.curColor,
    );
  }

  @override
  void dispose() {
    _ticker.dispose();
    super.dispose();
  }
}
