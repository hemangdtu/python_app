import 'package:flutter/material.dart';
import 'package:curved_navigation_bar/curved_navigation_bar.dart';
import 'package:url_launcher/url_launcher.dart';

//import 'package:fluid_bottom_nav_bar/pages/search.dart';
import 'package:fluid_bottom_nav_bar/pages/youtube_list.dart';
import 'package:fluid_bottom_nav_bar/pages/examples_list.dart';
import 'package:fluid_bottom_nav_bar/pages/resources.dart';
import 'package:fluid_bottom_nav_bar/pages/home_screen.dart';

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
  int currentPage = 0;
  int selectedIndex = 2;

  //final Search _searchbarcode = Search();
  final ListBodyLayout _list = ListBodyLayout();
  final ExamplesNew _newexamples = ExamplesNew();
  final ResourceList _resourceList = ResourceList();
  final HomeScreen _newHome = HomeScreen();

  Widget _showPage = HomeScreen();

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
        //return _searchbarcode;
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
        backgroundColor: Color(0xFF2C2D95),
        title: Text("Working With Smile: Python"),
        centerTitle: true,
        iconTheme: IconThemeData(
          color: Colors.white,
        ),
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
        //color: Colors.white,
        height: MediaQuery.of(context).size.height,
        width: MediaQuery.of(context).size.width,
        child: _showPage,
      ),
      bottomNavigationBar: CurvedNavigationBar(
        color: Color(0xFF2C2D95),
        //color: Color(0xFF2C2D95),
        // backgroundColor: Colors.blue[100],
        backgroundColor: Color(0xFF7E9BE0),
        buttonBackgroundColor: Color(0xFF3538B5),
        height: 54,
        items: <Widget>[
          Icon(
            Icons.ondemand_video,
            size: 40,
            color: Colors.white,
            semanticLabel: "YouTube Video Tutorials",
          ),
          Icon(
            Icons.code,
            size: 40,
            color: Colors.white,
            semanticLabel: "Examples",
          ),
          Icon(
            Icons.apps,
            size: 40,
            color: Colors.white,
            semanticLabel: "Notes and Tutorials",
          ),
          Icon(
            Icons.assignment,
            size: 40,
            color: Colors.white,
            semanticLabel: "Questions and Answers",
          ),
          Icon(
            Icons.book,
            size: 40,
            color: Colors.white,
            semanticLabel: "Resources",
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
          milliseconds: 500,
        ),
        animationCurve: Curves.easeInToLinear, //bounceInOut elasticInOut
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
