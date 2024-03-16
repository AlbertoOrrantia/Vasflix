import 'package:flutter/material.dart';

class Button extends StatelessWidget {
  final Color backgroundColor, foreground;
  final String text;
  final BoxBorder? border;
  final double buttonWidth, buttonHeight;
  final bool? hasIcon, hasBorder, hasImage;
  final IconData? icon;
  final double? borderRadius;
  final String? image;
  final GestureTapCallback action;

  const Button({
    super.key,
    required this.backgroundColor,
    required this.foreground,
    required this.text,
    required this.buttonHeight,
    required this.buttonWidth,
    required this.action,
    this.border,
    this.hasIcon = false,
    this.hasImage = false,
    this.borderRadius = 10,
    this.hasBorder = false,
    this.image,
    this.icon,
  });

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: action,
      child: Container(
          height: buttonHeight,
          width: buttonWidth,
          alignment: Alignment.center,
          decoration: BoxDecoration(
              color: backgroundColor,
              border:
                  hasBorder! ? border : Border.all(color: Colors.transparent),
              borderRadius: BorderRadius.circular(borderRadius!)),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Visibility(
                  visible: hasIcon! || hasImage!,
                  child: Padding(
                    padding: const EdgeInsets.only(right: 8),
                    child: hasImage!
                        ? Image.asset(
                            "assets/images/$image",
                            width: 33,
                            height: 33,
                          )
                        : Icon(
                            icon,
                            size: 33,
                          ),
                  )),
              Text(
                text,
                style: TextStyle(
                  color: foreground,
                  fontSize: 16,
                  fontWeight: FontWeight.w600,
                ),
              ),
            ],
          )),
    );
  }
}
