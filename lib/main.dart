import 'package:flutter/material.dart';
import 'package:curved_navigation_bar/curved_navigation_bar.dart';
import 'package:url_launcher/url_launcher.dart';
import 'package:fluid_bottom_nav_bar/pages/home.dart';
import 'package:fluid_bottom_nav_bar/pages/search.dart';
import 'package:fluid_bottom_nav_bar/pages/list.dart';
import 'package:fluid_bottom_nav_bar/pages/examplefile.dart';
import 'package:fluid_bottom_nav_bar/pages/resources.dart';

import 'package:fluid_bottom_nav_bar/pages/newinterfacehome.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Working With Smile: Python App',
      home: MyHomePage(),
      debugShowCheckedModeBanner: false,
    );
  }
}

class MyHomePage extends StatefulWidget {
  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  int pageindex = 0;

  //final DialogsExample _listexamples = DialogsExample();
  final Search _searchbarcode = Search();
  final ListBodyLayout _list = ListBodyLayout();
  final ExamplesNew _newexamples = ExamplesNew();
  final ResourceList _resourceList = ResourceList();

  final NewHome _newHome = NewHome();

  Widget _showPage = DialogsExample();

  Widget _pageChooser(int page) {
    switch (page) {
      case 0:
        return _list;
        break;
      case 1:
        return _newexamples;
        break;
      case 2:
        return _newHome;
        break;
      case 3:
        return _searchbarcode;
        break;
      case 4:
        return _resourceList;
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
        /*
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
        ],*/
      ),
      drawer: new Drawer(
        child: ListView(
          children: <Widget>[
            ListTile(
              leading: Icon(Icons.photo_library),
              title: Text("Send Us Feedback"),
              onTap: _mailto,
            ),
            ListTile(
              leading: Icon(Icons.library_add),
              title: Text("About Us"),
            ),
            ListTile(
              leading: Icon(Icons.library_music),
              title: Text("Rate Us"),
            ),
            ListTile(
              leading: Icon(Icons.video_library),
              title: Text("Privacy Policy"),
            ),
            ListTile(
              leading: Icon(Icons.local_library),
              title: Text("Terms & Conditions"),
            ),
          ],
        ),
      ),
      body: Container(
        color: Colors.white,
        height: MediaQuery.of(context).size.height,
        width: MediaQuery.of(context).size.width,
        child: _showPage,
      ),
      bottomNavigationBar: CurvedNavigationBar(
        color: Colors.blue[400],
        backgroundColor: Colors.blue[100],
        buttonBackgroundColor: Colors.blue[400],
        height: 55,
        items: <Widget>[
          Icon(
            Icons.ondemand_video,
            size: 40,
            color: Colors.black,
            semanticLabel: "YouTube",
          ),
          Icon(
            Icons.code,
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
            Icons.book,
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

_mailto() async {
  const url = 'mailto:workingwithsmile@gmail.com?subject=App Feedback';
  if (await canLaunch(url)) {
    await launch(
      url,
      forceWebView: false,
    );
  } else {
    throw 'Could not launch $url';
  }
}
