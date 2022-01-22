import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:neon/neon.dart';
import 'package:pelmeniy_czech/resources/resources.dart';
import 'package:rive/rive.dart';

class CustomAppBar extends StatelessWidget {
  const CustomAppBar({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: kToolbarHeight +40,
      child: Padding(
        padding: const EdgeInsets.only(left: 10),
        child: Row(
          children: [
            SizedBox(
              width: MediaQuery.of(context).size.width * 0.10,
            ),
            Neon(
              text: '#Пельменный цех',
              color: Colors.pink,
              flickeringText: false,
              flickeringLetters: [0, 12],
              font: NeonFont.Samarin,
              blurRadius: 20,
              fontSize: 35,
            ),
          ],
        ),
      ),
    );
  }
}
