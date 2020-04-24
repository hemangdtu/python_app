import 'package:flutter/material.dart';
import 'package:curved_navigation_bar/curved_navigation_bar.dart';
import 'package:fluid_bottom_nav_bar/pages/examples.dart';
import 'package:fluid_bottom_nav_bar/pages/search.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Working With Smile: Python App',
      home: MyHomePage(),
    );
  }
}

class MyHomePage extends StatefulWidget {
  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  int pageindex = 0;

  final DialogsExample _listexamples = DialogsExample();
  final Search _searchbarcode = Search();

  Widget _showPage = DialogsExample();

  Widget _pageChooser(int page) {
    switch (page) {
      case 1:
        return _listexamples;
        break;
      case 3:
        return _searchbarcode;
        break;
      default:
        return new Container(
          child: Center(
            child: new Text("No Page Found!"),
          ),
        );
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.blue[400],
        title: Center(
          child: Text("Working With Smile: Python"),
        ),
        actions: <Widget>[
          PopupMenuButton(
            itemBuilder: (BuildContext context) {
              return [
                PopupMenuItem(
                  child: Text("Send Us Feedback"),
                ),
                PopupMenuItem(
                  child: Text("Terms & Conditions"),
                ),
                PopupMenuItem(
                  child: Text("Privacy Policy"),
                ),
                PopupMenuItem(
                  child: Text("Rate Us"),
                ),
                PopupMenuItem(
                  child: Text("About Us"),
                ),
              ];
            },
            icon: Icon(Icons.supervised_user_circle, color: Colors.white),
          ),
        ],
      ),
      body: Container(
        color: Colors.white,
        height: MediaQuery.of(context).size.height,
        width: MediaQuery.of(context).size.width,
        child: _showPage,
      ),
      bottomNavigationBar: CurvedNavigationBar(
        color: Colors.blue[400],
        backgroundColor: Colors.white,
        buttonBackgroundColor: Colors.blue[100],
        height: 55,
        items: <Widget>[
          Icon(
            Icons.blur_linear,
            size: 40,
            color: Colors.black,
          ),
          Icon(
            Icons.linear_scale,
            size: 40,
            color: Colors.black,
          ),
          Icon(
            Icons.home,
            size: 40,
            color: Colors.black,
          ),
          Icon(
            Icons.search,
            size: 40,
            color: Colors.black,
          ),
          Icon(
            Icons.favorite,
            size: 40,
            color: Colors.black,
          ),
        ],
        onTap: (int tappedIndex) {
          setState(
            () {
              _showPage = _pageChooser(tappedIndex);
            },
          );
        },
        index: 2,
        animationDuration: Duration(
          milliseconds: 200,
        ),
        animationCurve: Curves.bounceInOut,
      ),
    );
  }
}
