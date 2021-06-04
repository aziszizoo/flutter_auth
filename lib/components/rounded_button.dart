import 'package:flutter/material.dart';
import 'package:flutter_auth/constans.dart';

class RoundedButton extends StatelessWidget {

  const RoundedButton({
    Key? key,
    required this.text,
    required this.press,
    this.color = kPrimaryColor,
    this.textColor = Colors.white,
    this.padding = const EdgeInsets.all(kDefaultPadding * 0.75)
  }) : super(key: key);

  final String text;
  final VoidCallback press;
  final Color color, textColor;
  final EdgeInsets padding;
  
  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;

    return MaterialButton(
      shape: const RoundedRectangleBorder(
        borderRadius: BorderRadius.all(Radius.circular(40)),
      ),
      padding: padding,
      color: color,
      minWidth: size.width * 0.5,
      onPressed: press,
      child: Text(
        text,
        style: TextStyle(color: textColor),
      ),
    );
  }
}