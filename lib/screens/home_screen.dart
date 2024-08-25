import 'package:flutter/material.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';
import 'package:terraria_rarity/colors/animate_color.dart';
import 'package:terraria_rarity/widgets/rarity_text.dart';

class MyHomePage extends StatelessWidget {
  const MyHomePage({super.key});
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Theme.of(context).colorScheme.primary,
        title: Text(
          AppLocalizations.of(context)!.appBarLabel,
          style: Theme.of(context).primaryTextTheme.titleLarge,
        ),
      ),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: [
          const RarityText(
            tier: "-1",
            text: "Gray",
            color: Color(0xFF828282),
          ),
          const RarityText(
            tier: "0",
            text: "White",
            color: Color(0xFFFFFFFF),
          ),
          const RarityText(
            tier: "1",
            text: "Blue",
            color: Color(0xFF9696FF),
          ),
          const RarityText(
            tier: "2",
            text: "Green",
            color: Color(0xFF96FF96),
          ),
          const RarityText(
            tier: "3",
            text: "Orange",
            color: Color(0xFFFFC896),
          ),
          const RarityText(
            tier: "4",
            text: "Light Red",
            color: Color(0xFFFF9696),
          ),
          const RarityText(
            tier: "5",
            text: "Pink",
            color: Color(0xFFFF96FF),
          ),
          const RarityText(
            tier: "6",
            text: "Light Purple",
            color: Color(0xFFD2A0FF),
          ),
          const RarityText(
            tier: "7",
            text: "Lime",
            color: Color(0xFF96FF0A),
          ),
          const RarityText(
            tier: "8",
            text: "Yellow",
            color: Color(0xFFFFFF0A),
          ),
          const RarityText(
            tier: "9",
            text: "Cyan",
            color: Color(0xFF05C8FF),
          ),
          const RarityText(
            tier: "10",
            text: "Red",
            color: Color(0xFFFF2864),
          ),
          const RarityText(
            tier: "11",
            text: "Purple",
            color: Color(0xFFB428FF),
          ),
          AnimateRarityText(
            tier: "Expert (-12)",
            text: "Rainbow",
            animColor: RainbowColor(),
          ),
          AnimateRarityText(
            tier: "Master (-13)",
            text: "Fiery Red",
            animColor: FieryColor(),
          ),
          const RarityText(
            tier: "Quest (-11)",
            text: "Amber",
            color: Color(0xFFFFAF00),
          ),
        ],
      ),
    );
  }
}
