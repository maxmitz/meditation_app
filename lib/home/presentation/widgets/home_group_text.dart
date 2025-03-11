import 'package:flutter/material.dart';

class HomeGroupText extends StatelessWidget {
  const HomeGroupText({
    required this.text,
    super.key,
  });

  final String text;

  @override
  Widget build(BuildContext context) => Text(
        text,
        style: const TextStyle(
          fontSize: 20,
          color: Color.fromARGB(255, 212, 212, 212),
          fontWeight: FontWeight.w300,
        ),
      );
}
