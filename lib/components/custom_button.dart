import 'package:flutter/material.dart';

class CustomButtonLight extends StatelessWidget {
  final String text;
  final VoidCallback onPressed;

  const CustomButtonLight({
    super.key,
    required this.text,
    required this.onPressed
  });

  @override
  Widget build(BuildContext context) {
    return FilledButton(
      onPressed: onPressed,
      style: ButtonStyle(
        minimumSize: WidgetStateProperty.all(const Size(double.infinity, 50)),
      ),
      child: Text(text, style: TextStyle(fontSize: 18),),
    );
  }
}