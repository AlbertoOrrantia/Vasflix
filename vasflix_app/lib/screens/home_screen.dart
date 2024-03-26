import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:vasflix_app/components/button.dart';
import 'package:vasflix_app/config/theme_app.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  void signUserOut() async {
    await FirebaseAuth.instance.signOut();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      resizeToAvoidBottomInset: false,
      appBar: AppBar(
        systemOverlayStyle: SystemUiOverlayStyle.light,
        backgroundColor: navy,
        iconTheme: const IconThemeData(color: white),
      ),
      backgroundColor: navy,
      body: Center(
        child: Button(
          action: () => signUserOut(),
          text: "Log in",
          backgroundColor: caribbean,
          foreground: white,
          buttonHeight: 55,
          buttonWidth: 263,
        ),
      ),
    );
  }
}
