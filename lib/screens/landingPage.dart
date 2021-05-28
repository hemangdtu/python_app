import 'package:flutter/material.dart';

import 'package:curved_navigation_bar/curved_navigation_bar.dart';
import 'package:python_app/meta/constants.dart';

import 'package:python_app/models/qna_page.dart';
import 'package:python_app/screens/aboutUs.dart';
//import 'package:python_app/screens/search.dart';
import 'package:python_app/screens/youtube_list.dart';
import 'package:python_app/screens/examples_list.dart';
import 'package:python_app/screens/resources.dart';
import 'package:python_app/screens/homeScreen.dart';
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
  final YouTubePage _list = YouTubePage();
  final ExamplesPage _newexamples = ExamplesPage();
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
              leading: Icon(Icons.mail_outline_sharp),
              title: Text("Send Us Feedback"),
              onTap: ContactUs.workingWithSmileMail,
            ),
            ListTile(
              leading: Icon(Icons.supervised_user_circle_sharp),
              title: Text("About Us"),
              onTap: () {
                Navigator.push(context, MaterialPageRoute(builder: (context) {
                  return AboutUsPage();
                }));
              },
            ),
            ListTile(
              leading: Icon(Icons.star_border_sharp),
              title: Text("Rate Us"),
            ),
            ListTile(
              leading: Icon(Icons.policy_sharp),
              title: Text("Privacy Policy"),
            ),
            ListTile(
              leading: Icon(Icons.plagiarism_sharp),
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
        color: navBarColor,
        backgroundColor: navBarBackgroundColor,
        buttonBackgroundColor: navBarButtonBackgroundColor,
        height: 54,
        items: <Widget>[
          for (int i = 0; i < navBarOptions.length; i++)
            Icon(
              navBarOptions[i][0],
              size: 40,
              color: Colors.white,
              semanticLabel: navBarOptions[i][1],
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
