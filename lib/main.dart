import 'package:flutter/material.dart';
import 'package:curved_navigation_bar/curved_navigation_bar.dart';
import 'package:url_launcher/url_launcher.dart';

import 'package:fluid_bottom_nav_bar/pages/search.dart';
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

  //final DialogsExample _listexamples = DialogsExample();
  final Search _searchbarcode = Search();
  final ListBodyLayout _list = ListBodyLayout();
  final ExamplesNew _newexamples = ExamplesNew();
  final ResourceList _resourceList = ResourceList();
  //final NewHome _newHome = NewHome();
  final HrList _newHome = HrList();
  //final TestApp _testApp = TestApp();

  //Widget _showPage = NewHome();
  Widget _showPage = HrList();

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

      /*
      bottomNavigationBar: FFNavigationBar(
        theme: FFNavigationBarTheme(
          barBackgroundColor: Colors.white,
          selectedItemBorderColor: Colors.transparent,
          selectedItemBackgroundColor: Colors.green,
          selectedItemIconColor: Colors.white,
          selectedItemLabelColor: Colors.black,
          showSelectedItemShadow: false,
          barHeight: 70,
        ),
        selectedIndex: selectedIndex,
        onSelectTab: (index) {
          setState(() {
            selectedIndex = index;
            _showPage = _pageChooser(index);
          });
        },
        items: [
          FFNavigationBarItem(
            iconData: Icons.ondemand_video,
            label: 'YouTube',
            itemWidth: 20.0,
            selectedBackgroundColor: Colors.red,
            animationDuration: Duration(milliseconds: 100,),
          ),
          FFNavigationBarItem(
            iconData: Icons.code,
            label: 'Practice Problems',
            itemWidth: 20.0,
            animationDuration: Duration(milliseconds: 100,),
            selectedBackgroundColor: Colors.orange,
          ),
          FFNavigationBarItem(
            iconData: Icons.featured_play_list,
            label: 'Tutorials',
            itemWidth: 20.0,
            animationDuration: Duration(milliseconds: 100,),
            selectedBackgroundColor: Colors.purple,
          ),
          FFNavigationBarItem(
            iconData: Icons.note,
            label: 'Q/A',
            itemWidth: 20.0,
            animationDuration: Duration(milliseconds: 100,),
            selectedBackgroundColor: Colors.black87,
          ),
          FFNavigationBarItem(
            iconData: Icons.book,
            label: 'Resources',
            itemWidth: 20.0,            
            animationDuration: Duration(milliseconds: 100,),
            selectedBackgroundColor: Colors.blue,
          ),
        ],
      ),
      */

      /*
      bottomNavigationBar: FancyBottomNavigation(
        tabs: [
          TabData(
            iconData: Icons.subscriptions,
            title: "YouTube",
          ),
          TabData(
            iconData: Icons.code,
            title: "Practice Problems",
          ),
          TabData(
            iconData: Icons.home,
            title: "Home",
            onclick: () {NewHome();},
          ),
          TabData(
            iconData: Icons.search,
            title: "Search",
          ),
          
        ],
        initialSelection: 2,
        onTabChangedListener: (position) {
        setState(() {
          currentPage = position;
        });
    },
      ),
*/

      bottomNavigationBar: CurvedNavigationBar(
        // color: Colors.blue[400],
        color: Color(0xFF2C2D95),
        // backgroundColor: Colors.blue[100],
        backgroundColor: Color(0xFF2C2D95),
        // buttonBackgroundColor: Colors.blue[400],
        height: 54,
        items: <Widget>[
          Icon(
            Icons.ondemand_video,
            size: 40,
            color: Colors.white,
            semanticLabel: "YouTube",
          ),
          Icon(
            Icons.code,
            size: 50,
            color: Colors.white,
          ),
          Icon(
            Icons.featured_play_list,
            size: 50,
            color: Colors.white,
          ),
          Icon(
            Icons.search,
            size: 50,
            color: Colors.white,
          ),
          Icon(
            Icons.book,
            size: 50,
            color: Colors.white,
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
