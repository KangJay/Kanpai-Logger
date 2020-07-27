import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart'; 

class HomePage extends StatefulWidget {
  @override
  _homepageState createState() => new _homepageState();
}

class _homepageState extends State<HomePage> {
  final accentColor = const Color(0xff67CC1E);
  final barColor = const Color(0xff333333);
  final bgColor = const Color(0xff292929);
  final fontColor = const Color(0xffBCBCBC);

//body: _pageOptions[_selectedPage]
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home : Scaffold(
        backgroundColor: bgColor,
        appBar: AppBar(
            title: Image(
              image: new AssetImage(
                "assets/images/mSETlogo.png",
              ),
            ),
            backgroundColor: barColor, //Colors.teal[300],
            centerTitle: true,
          leading: new IconButton(
            icon: new Icon(Icons.arrow_back, color: Colors.white),
            onPressed: (){
              print("Going back");
              Navigator.of(context).pop();
            }
          )
        ),
        body: Align(
          alignment: Alignment.center,
          child: RichText(
            text: TextSpan(
              text: 'Settings Page',
              style: TextStyle(
                  color: fontColor,
                fontSize: 30
              ),
            )
          )
        )
      ),
    );
  }
}
