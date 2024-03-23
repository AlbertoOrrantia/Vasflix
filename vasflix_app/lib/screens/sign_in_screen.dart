import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:vasflix_app/components/button.dart';
import 'package:vasflix_app/components/field.dart';
import 'package:vasflix_app/components/logo_vasflix.dart';
import 'package:vasflix_app/config/theme_app.dart';

class SignInScreen extends StatelessWidget {
  const SignInScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final height = MediaQuery.of(context).size.height;
    final width = MediaQuery.of(context).size.width;
    bool isBigPhone = width >= 430 && height >= 800;
    return Scaffold(
      resizeToAvoidBottomInset: false,
      backgroundColor: navy,
      body: FormSignIn(
        width: width,
        height: height,
        isBigPhone: isBigPhone,
      ),
    );
  }
}

class FormSignIn extends StatefulWidget {
  const FormSignIn(
      {super.key, required this.width, required this.height, this.isBigPhone});

  final double width;
  final double height;
  final bool? isBigPhone;

  @override
  State<FormSignIn> createState() => _FormSignInState();
}

class _FormSignInState extends State<FormSignIn> {
  bool hidePassword = true;
  bool isVisible = false;
  @override
  void initState() {
    super.initState();
    SystemChannels.textInput.invokeMethod('TextInput.hide');
  }

  Widget showPassword() {
    return IconButton(
      icon: Icon(
        hidePassword ? Icons.visibility_off : Icons.visibility,
        color: hidePassword ? black.withOpacity(.60) : black,
      ),
      onPressed: () {
        setState(() {
          hidePassword = !hidePassword;
        });
      },
    );
  }

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.only(
          left: widget.width * 0.1,
          right: widget.width * 0.1,
          top: widget.height * 0.090),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          const Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              LogoVasflix(
                logoHeight: 120,
                logoWidth: 120,
                letterHeight: 40,
                letterWidth: 120,
                spacingHeight: 16,
              ),
            ],
          ),
          SizedBox(
            height: widget.isBigPhone!
                ? widget.height * 0.055
                : widget.height * 0.03,
          ),
          Text(
            "Welcome Back!",
            textAlign: TextAlign.center,
            style: TextStyle(
              fontSize: widget.isBigPhone! ? 40 : 30,
              color: white,
              fontWeight: FontWeight.bold,
            ),
          ),
          const Text(
            "Please Inter your details.",
            textAlign: TextAlign.center,
            style: TextStyle(
                fontSize: 16, color: white, fontWeight: FontWeight.normal),
          ),
          SizedBox(
            height: widget.isBigPhone!
                ? widget.height * 0.095
                : widget.height * 0.05,
          ),
          CustomField(
            label: "Email",
            labelColor: white,
            labelSize: 16,
            hintLabel: "example@domain.com",
            hintLabelColor: black.withOpacity(.40),
            labelWeight: FontWeight.normal,
            keyboardType: TextInputType.emailAddress,
          ),
          const SizedBox(
            height: 25,
          ),
          CustomField(
            label: "Password",
            labelColor: white,
            labelSize: 16,
            hintLabel: "Eneter your password",
            hintLabelColor: black.withOpacity(.40),
            labelWeight: FontWeight.normal,
            suffixIcon: showPassword(),
            isPassword: hidePassword,
          ),
          const SizedBox(
            height: 16,
          ),
          const Row(
            mainAxisAlignment: MainAxisAlignment.end,
            children: [
              Text(
                "Forgot your password?",
                textAlign: TextAlign.end,
                style: TextStyle(
                    fontSize: 16, color: white, fontWeight: FontWeight.normal),
              ),
            ],
          ),
          SizedBox(
            height: widget.height * 0.080,
          ),
          Button(
            action: () => {},
            text: "Log in",
            backgroundColor: caribbean,
            foreground: white,
            buttonHeight: 55,
            buttonWidth: 263,
          ),
        ],
      ),
    );
  }
}
