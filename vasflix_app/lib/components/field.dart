import 'package:flutter/material.dart';
import 'package:vasflix_app/config/theme_app.dart';

class CustomField extends StatefulWidget {
  final String label;
  final String? hintLabel;
  final double? labelSize;
  final FontWeight labelWeight;
  final Color labelColor, hintLabelColor;
  final Color? iconColor;
  final Widget? suffixIcon;
  final bool? isPassword;
  final TextInputType? keyboardType;
  final TextEditingController? controller;
  const CustomField(
      {super.key,
      required this.label,
      this.hintLabel = "",
      this.labelSize = 16,
      required this.labelWeight,
      required this.labelColor,
      required this.hintLabelColor,
      this.iconColor = black,
      this.suffixIcon,
      this.isPassword = false,
      this.keyboardType = TextInputType.text,
      this.controller});

  @override
  State<CustomField> createState() => _CustomFieldState();
}

class _CustomFieldState extends State<CustomField> {
  @override
  Widget build(BuildContext context) {
    // final height = MediaQuery.of(context).size.height;
    final width = MediaQuery.of(context).size.width;
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          widget.label,
          textAlign: TextAlign.left,
          style: TextStyle(
              fontSize: widget.labelSize,
              color: widget.labelColor,
              fontWeight: FontWeight.normal),
        ),
        const SizedBox(
          height: 5,
        ),
        Container(
          width: width,
          height: 50,
          alignment: Alignment.center,
          padding: const EdgeInsets.symmetric(horizontal: 15),
          decoration: BoxDecoration(
            color: white,
            borderRadius: BorderRadius.circular(10),
          ),
          child: TextFormField(
            controller: widget.controller,
            decoration: InputDecoration(
                border: InputBorder.none,
                hintText: widget.hintLabel,
                hintStyle: TextStyle(
                  color: widget.hintLabelColor,
                ),
                suffixIcon: widget.suffixIcon),
            keyboardType: widget.keyboardType,
            obscureText: widget.isPassword!,
            textAlignVertical: TextAlignVertical.center,
          ),
        ),
      ],
    );
  }
}
