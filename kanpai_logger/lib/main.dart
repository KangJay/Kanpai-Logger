import 'package:flutter/material.dart';
import 'package:kanpailogger/pages/homepage.dart'; 
import 'package:kanpailogger/utils/kanpaiTheme.dart'; 

void main() async {
  /*
  1. First time using: Make user enter a valid email. Maybe have them authenticate themselves
  through email confirmation. This email is where the excel sheet is going to be sent. 
  2. Store credentials (Email and hash of password)
  3. Upon subsequent logins, check local storage if the credentials exist.
  4. If so, take them to the main homepage. 
  */
  runApp(MaterialApp(
    title: 'Sushi Kanpai Timelogger',
    theme: kanpaiTheme(), 
    home: new HomePage(),
    routes: <String, WidgetBuilder> {
      /*
      Build new routes like this: '/pagename' : (BuildContext context) => new pagename(), 
      */
    }
    )); //Material App 
}