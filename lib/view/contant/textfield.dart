import 'package:flutter/material.dart';
Widget TextField1(dynamic context,var circular,var hintText,Icon Icon1, Function? onPressed1() ){
  return TextField(
    cursorColor: Theme.of(context).primaryColor,
    decoration: InputDecoration(
      enabledBorder: OutlineInputBorder(
        borderSide: const BorderSide(color: Colors.white),
        borderRadius: BorderRadius.circular(circular),
      ),
      focusedBorder: OutlineInputBorder(
        borderSide: BorderSide(
          color: Theme.of(context).primaryColor,
        ),
        borderRadius: BorderRadius.circular(circular),
      ),
      hintText: hintText,
      border: OutlineInputBorder(
          borderSide: BorderSide(
            color: Theme.of(context).primaryColor,
          ),
          borderRadius: BorderRadius.circular(circular)),
      prefixIcon: IconButton(
        icon: Icon1,
        color: Theme.of(context).primaryColor,
        onPressed: onPressed1,
      ),
    ),


  );

}