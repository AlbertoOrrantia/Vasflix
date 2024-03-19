import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:vasflix_app/config/theme_app.dart';

class SignUpScreen extends StatelessWidget {
  const SignUpScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        systemOverlayStyle: SystemUiOverlayStyle.light,
        backgroundColor: navy,
        iconTheme: const IconThemeData(color: white),
      ),
      backgroundColor: navy,
    );
  }
}
