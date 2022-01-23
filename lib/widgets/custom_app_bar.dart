import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:neon/neon.dart';
import 'package:pelmeniy_czech/resources/resources.dart';
import 'package:rive/rive.dart';

class CustomAppBar extends StatelessWidget {
  final String text;

  const CustomAppBar({
    this.text = '#Пельменный цех',
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: kToolbarHeight + 40,
      child: Center(
        child: Neon(
          text: text,
          color: Colors.pink,
          flickeringText: false,
          flickeringLetters: [0, 12],
          font: NeonFont.Samarin,
          blurRadius: 20,
          fontSize: 35,
        ),
      ),
    );
  }
}
