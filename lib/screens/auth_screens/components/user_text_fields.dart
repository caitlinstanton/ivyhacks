import 'package:flutter/material.dart';
import 'package:ivyhack/models/text.dart';

Widget userTextField(
    {String hint,
    BorderRadius borderRadius,
    void Function(String) onChanged,
    bool isObscureText}) {
  return ClipRRect(
    borderRadius: borderRadius,
    child: TextFormField(
      decoration: InputDecoration(
        hintText: hint,
        hintStyle:
            sen(color: Colors.grey, fontSize: 15, fontWeight: FontWeight.bold),
        fillColor: Colors.white.withOpacity(0.9),
        filled: true,
        // enabledBorder: OutlineInputBorder(
        //   borderSide: BorderSide(
        //     color: Colors.white,
        //     width: 1.0,
        //   ),
        // ),
      ),
      textAlign: TextAlign.center,
      onChanged: onChanged,
      obscureText: isObscureText ?? false,
    ),
  );
}
