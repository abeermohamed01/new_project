import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

Widget defaultFormField({
  IconData suffix,
  @required String hint,
  final double width,
}) =>
    Padding(
      padding: const EdgeInsets.symmetric(vertical: 2),
      child: Container(
        width: width,
        child: TextFormField(
          decoration: InputDecoration(
            filled: false,
            suffixIcon: Icon(
              suffix,
              color: Colors.white,
            ),
            hintText: hint,
            hintStyle: TextStyle(color: Colors.white60, fontSize: 15),
            enabledBorder: UnderlineInputBorder(
              borderSide: BorderSide(color: Colors.white60)
            )
          ),
        ),
      ),
    );

