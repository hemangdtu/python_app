import 'package:flutter/material.dart';

import 'package:curved_navigation_bar/curved_navigation_bar.dart';

import 'package:python_app/screens/qna_page.dart';
//import 'package:python_app/screens/search.dart';
import 'package:python_app/screens/youtube_list.dart';
import 'package:python_app/screens/examples_list.dart';
import 'package:python_app/screens/resources.dart';
import 'package:python_app/screens/home_screen.dart';
import 'package:python_app/meta/hyperlinks.dart';

class LandingPage extends StatefulWidget {
  @override
  _LandingPageState createState() => _LandingPageState();
}

class _LandingPageState extends State<LandingPage> {
  int pageindex = 0;
  int currentPage = 0;
  int selectedIndex = 2;

  final ContentPage _searchbarcode = ContentPage();
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
              onTap: ContactUs.workingWithSmileMail,
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
        height: MediaQuery.of(context).size.height,
        width: MediaQuery.of(context).size.width,
        child: _showPage,
      ),
      bottomNavigationBar: CurvedNavigationBar(
        color: Color(0xFF2C2D95),
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
        animationCurve: Curves.easeInToLinear,
      ),
    );
  }
}
