import 'package:flutter/material.dart';

class CustomBackground extends StatelessWidget {
  const CustomBackground({super.key});

  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: Container(
        decoration: buildBoxDecoration(),

      ),
    );
  }

  BoxDecoration buildBoxDecoration() => const BoxDecoration(
    image: DecorationImage(
      image: AssetImage('img/background.png'),
      fit: BoxFit.cover,
      alignment: Alignment.centerLeft
    ),
  );
}
