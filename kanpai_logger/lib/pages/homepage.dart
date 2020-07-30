import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:kanpailogger/utils/kanpaiTheme.dart'; 

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
      theme: kanpaiTheme(),
      home: buildHome(),
    );
  }

  Widget buildHome() {
    return WillPopScope(
        onWillPop: () async => false,
        child: Scaffold(
          appBar: AppBar(
            title: Image(
              image: new AssetImage(
                "assets/images/logo.jpg",
              ),
              height: 50.0, // TODO DOES THIS LOOK GOOD ON TABLET??
            ),
            centerTitle: true,
          ),
          drawer: Drawer(
            child: ListView(
              children: <Widget>[
                Divider(),
                ListTile(
                    title: Text("User"),
                    trailing: Icon(Icons.account_circle),
                    onTap: () {
                      //Navigate to user page.
                      print("Navigating to the User page");
                      Navigator.push(context,
                          MaterialPageRoute(builder: (context) => HomePage()));
                    }),
                Divider(),
                ListTile(
                    title: Text("Logout"),
                    trailing: Icon(Icons.exit_to_app),
                    onTap: () {
                      //appAuth.logout(context);
                    }),
                Divider(),
              ],
            ),
          ),
          // backgroundColor: DarkTheme.bg,
        ),
      );
  }
}
