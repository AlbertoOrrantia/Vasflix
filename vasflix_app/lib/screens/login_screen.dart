import 'package:flutter/material.dart';
import 'package:vasflix_app/components/button.dart';
import 'package:vasflix_app/components/logo_vasflix.dart';
import 'package:vasflix_app/config/theme_app.dart';

class LoginPageScreen extends StatelessWidget {
  const LoginPageScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Expanded(
          child: Stack(
        fit: StackFit.expand,
        children: [
          Image.asset(
            "assets/images/backgrounLogin.jpg",
            fit: BoxFit.cover,
          ),
          Container(
            color: Colors.black.withOpacity(.70),
          ),
          const SignButtons()
        ],
      )),
    );
  }
}

class SignButtons extends StatelessWidget {
  const SignButtons({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        const LogoVasflix(),
        const SizedBox(
          height: 85,
        ),
        Button(
          action: () {},
          text: "Log in",
          backgroundColor: caribbean,
          foreground: white,
          buttonHeight: 55,
          buttonWidth: 263,
        ),
        const SizedBox(
          height: 16,
        ),
        Button(
          action: () {},
          text: "Sign Up",
          backgroundColor: navy,
          foreground: white,
          buttonHeight: 55,
          buttonWidth: 263,
          hasBorder: true,
          border: Border.all(color: caribbean, width: 2),
        ),
        const SizedBox(
          height: 16,
        ),
        const Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            ColoredBox(
              color: white,
              child: SizedBox(
                height: 1,
                width: 107,
              ),
            ),
            SizedBox(
              width: 16,
            ),
            Text(
              "or",
              style: TextStyle(color: white, fontSize: 16),
            ),
            SizedBox(
              width: 16,
            ),
            ColoredBox(
              color: white,
              child: SizedBox(
                height: 1,
                width: 107,
              ),
            ),
          ],
        ),
        const SizedBox(
          height: 30,
        ),
        Button(
          action: () {},
          text: "Sign in with Google",
          hasImage: true,
          image: "google.png",
          backgroundColor: white,
          foreground: black,
          buttonHeight: 55,
          buttonWidth: 263,
        ),
        const SizedBox(
          height: 16,
        ),
        Button(
          action: () {},
          text: "Enter as a guest",
          backgroundColor: white,
          hasIcon: true,
          icon: Icons.person,
          foreground: black,
          buttonHeight: 55,
          buttonWidth: 263,
        ),
      ],
    );
  }
}
