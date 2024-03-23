import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:vasflix_app/screens/login_screen.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    SystemChrome.setSystemUIOverlayStyle(SystemUiOverlayStyle.light);
    return GestureDetector(
      onTap: () {
        FocusScopeNode currentFocus = FocusScope.of(context);
        if (!currentFocus.hasPrimaryFocus &&
            currentFocus.focusedChild != null) {
          currentFocus.focusedChild!.unfocus();
        }
      },
      child: const MaterialApp(
        debugShowCheckedModeBanner: false,
        home: LoginPageScreen(),
      ),
    );
  }
}
//Para el commit y apartar mi pantallaa