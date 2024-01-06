import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class DefaultTextField extends StatelessWidget {

  const DefaultTextField({
    super.key,
    required this.label,
    required this.icon,
    required this.onChanged,
    this.obscureText = false,
  });

  final String label;
  final IconData icon;
  final Function (String text) onChanged;
  final bool obscureText;

  @override
  Widget build(BuildContext context) {
    return TextField(
     onChanged:(text){
       onChanged(text);
     },
     style: TextStyle(color: Colors.white),
     obscureText: obscureText,
     decoration: InputDecoration(
       labelStyle: GoogleFonts.outfit(color: Colors.white),
       hintText: label,
       border: OutlineInputBorder(borderSide: BorderSide(color: Colors.white)),
       label: Text(label,style: TextStyle(color: Colors.white)),
       suffixIcon: Icon(icon, color: Colors.white,),
       enabledBorder: OutlineInputBorder(
         borderSide: BorderSide(color: Colors.white),
       ),
       focusedBorder: OutlineInputBorder(
         borderSide: BorderSide(color: Colors.white),
       ),
     ),
   );
  }
}
