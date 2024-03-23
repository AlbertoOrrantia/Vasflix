import 'package:flutter/material.dart';

class LogoVasflix extends StatelessWidget {
  final double? spacingHeight, logoHeight, logoWidth, letterHeight, letterWidth;

  const LogoVasflix({
    super.key,
    this.spacingHeight = 30,
    this.logoHeight = 145,
    this.logoWidth = 145,
    this.letterHeight = 33,
    this.letterWidth = 164,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.center,
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Image.asset(
          "assets/images/vasflixLogo.png",
          height: logoHeight,
        ),
        SizedBox(
          height: spacingHeight,
        ),
        Image.asset(
          "assets/images/VasflixLetter.png",
          height: letterHeight,
          width: letterWidth,
        ),
      ],
    );
  }
}
