
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:neon/neon.dart';
import 'package:pelmeniy_czech/resources/resources.dart';

class CustomAppBar extends StatelessWidget {
  const CustomAppBar({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      height: kToolbarHeight + 20,
      child: Padding(
        padding: const EdgeInsets.only(top: 20),
        child: Row(
          children: [
            IconButton(
              icon: SvgPicture.asset(AppIcons.Menu) ,
              onPressed: null,
            ),
            SizedBox(width: MediaQuery.of(context).size.width*0.05,
            ),
            Neon(
              text: '#Пельменный цех',
              color: Colors.pink,
              flickeringText: false,
              flickeringLetters: [0, 12],
              font: NeonFont.Samarin,
              blurRadius: 20,
              fontSize: 30,
            ),
          ],
        ),
      ),
    );
  }
}