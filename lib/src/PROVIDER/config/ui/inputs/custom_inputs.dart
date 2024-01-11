import 'package:flutter/material.dart';


class CustomInputsDecoration{
    InputDecoration authInputDecoration({
    required String hint,
    required String label,
    required IconData icon,
  }) {
    return  InputDecoration(

                  enabled: true,
                  focusedBorder:  const OutlineInputBorder(
                    borderSide: BorderSide(color: Colors.orange),
                  ),
                  border: const OutlineInputBorder(
                    borderSide: BorderSide(color: Colors.grey),
                  ),

                  enabledBorder:  const UnderlineInputBorder(
                    borderSide: BorderSide(color: Colors.grey),
                  ),
                  hintText: hint,
                  labelText: label,
                  prefixIcon: Icon(icon, color: Colors.orange),
                  hintStyle: const TextStyle(color: Colors.grey),
                  labelStyle: const TextStyle(color: Colors.grey),
                );
  }
}
