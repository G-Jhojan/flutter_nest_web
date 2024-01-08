import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class NoColorButton extends StatelessWidget {
  const NoColorButton({
    super.key,
    required this.text,
    required this.onPressed
    });

  final String text;
  final Function() onPressed;

  @override
  Widget build(BuildContext context) {
    return TextButton(
      onPressed: () {
         onPressed();
       },
       style: TextButton.styleFrom(
         foregroundColor: Color.fromRGBO(128, 0, 32, 100)
        ),
       child:  Text(text, style: GoogleFonts.outfit(fontSize: 15, fontWeight: FontWeight.w600, color: Color.fromRGBO(228, 102, 124, 100))),
     );
  }
}
