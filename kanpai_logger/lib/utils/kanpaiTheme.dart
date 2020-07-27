import 'package:flutter/material.dart'; 

ThemeData kanpaiTheme() {
  final ThemeData base = ThemeData.dark(); 
  return base.copyWith(
    accentColor: Color(0xff67CC1E),
    backgroundColor: Color(0xff292929),
    appBarTheme: AppBarTheme(
      color: Color(0xff333333),
    ),
    buttonColor: Colors.grey[700],
    buttonTheme: ButtonThemeData(buttonColor: Colors.grey[700]),
    textTheme: base.textTheme.copyWith(
      title: TextStyle(
        color: Color(0xffBCBCBC),
        fontSize: 22.0,
        fontWeight: FontWeight.bold,
      ),
      body1: TextStyle(
        // color: Colors.blue,
        fontSize: 20,
      ),
    ),
  );
}
