import 'package:flutter/material.dart';

// ignore: must_be_immutable
class MyButton extends StatelessWidget {
  final String text;
  VoidCallback onPressed;
  final Color? backgroundColor; 

  MyButton({
    super.key,
    required this.text,
    required this.onPressed,
    required this.backgroundColor,
    });

  @override
  Widget build(BuildContext context) {
    return MaterialButton(
      onPressed: onPressed,
      color: backgroundColor ?? Theme.of(context).primaryColor,
      child: Text(text),
    );
  }
}