import 'package:flutter/material.dart';

class LogoVasflix extends StatelessWidget {
  const LogoVasflix({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.center,
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Image.asset("assets/images/vasflixLogo.png"),
        const SizedBox(
          height: 30,
        ),
        Image.asset("assets/images/VasflixLetter.png"),
      ],
    );
  }
}
