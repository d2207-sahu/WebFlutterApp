import 'package:flutter/material.dart';

const initialRoute = "/";
const homeRoute = "/Home";
const joinUsRoute = '/joinus';

const textInputDecoration = InputDecoration(
  fillColor: Colors.black12,
  filled: true,
  labelStyle: TextStyle(color: Colors.black54),
  focusColor: Colors.limeAccent,
  focusedBorder: OutlineInputBorder(
    borderSide: BorderSide(color: Colors.black, width: 4),
  ),
  enabledBorder: OutlineInputBorder(
    borderSide: BorderSide(color: Colors.black12, width: 4),
  ),
);

Widget LessSpace() {
  return const SizedBox(
    height: 20,
  );
}
