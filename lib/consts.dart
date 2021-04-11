import 'package:flutter/material.dart';

const kSendButtonTextStyle = TextStyle(
  color: Colors.lightBlueAccent,
  fontWeight: FontWeight.bold,
  fontSize: 18.0,
);

const kMessageTextFieldDecoration = InputDecoration(
  contentPadding: EdgeInsets.symmetric(vertical: 10.0, horizontal: 20.0),
  hintText: 'Type your message here...',
  border: InputBorder.none,
);

const kMessageContainerDecoration = BoxDecoration(
  border: Border(
    top: BorderSide(color: Colors.lightBlueAccent, width: 2.0),
  ),
);

const kDecoration = InputDecoration(
  hintText: 'Enter your password.',
  contentPadding: EdgeInsets.symmetric(vertical: 10.0, horizontal: 20.0),
  border: OutlineInputBorder(
    borderRadius: BorderRadius.only(
        topLeft: Radius.circular(32.0),
        topRight: Radius.zero,
        bottomRight: Radius.circular(32.0),
        bottomLeft: Radius.zero),
  ),
  enabledBorder: OutlineInputBorder(
    borderSide: BorderSide(color: Colors.lightBlueAccent, width: 1.0),
    borderRadius: BorderRadius.only(
        topLeft: Radius.circular(32.0),
        topRight: Radius.zero,
        bottomRight: Radius.circular(32.0),
        bottomLeft: Radius.zero),
  ),
  focusedBorder: OutlineInputBorder(
    borderSide: BorderSide(color: Colors.lightBlueAccent, width: 2.0),
    borderRadius: BorderRadius.only(
        topLeft: Radius.circular(32.0),
        topRight: Radius.zero,
        bottomRight: Radius.circular(32.0),
        bottomLeft: Radius.zero),
  ),
);
