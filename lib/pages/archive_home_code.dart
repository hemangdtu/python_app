import 'package:flutter/material.dart';

class DialogsExample extends StatelessWidget {
  const DialogsExample({Key key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return ListView(
      padding: EdgeInsets.all(15.0),
      children: <Widget>[
        //////////////////////Hello, World!//////////////////////
        RaisedButton(
          colorBrightness: Brightness.light,
          color: Colors.blue[200],
          shape: RoundedRectangleBorder(
            borderRadius: new BorderRadius.circular(35.0),
            side: BorderSide(color: Colors.white70),
          ),
          padding: const EdgeInsets.all(20.0),
          child: Text(
            '"Hello, World!"',
            style: TextStyle(
              fontSize: 30.0,
            ),
            textAlign: TextAlign.center,
          ),
          onPressed: () {
            Navigator.push(context, _PageTwo());
          },
        ),

        RaisedButton(
          colorBrightness: Brightness.light,
          color: Colors.blue[200],
          shape: RoundedRectangleBorder(
            borderRadius: new BorderRadius.circular(35.0),
            side: BorderSide(color: Colors.white70),
          ),
          padding: const EdgeInsets.all(20.0),
          child: Text(
            'Sum of Two Numbers',
            style: TextStyle(
              fontSize: 30.0,
            ),
            textAlign: TextAlign.center,
          ),
          onPressed: () {
            Navigator.push(context, _PageTwo());
          },
        ),
        RaisedButton(
          colorBrightness: Brightness.light,
          color: Colors.blue[200],
          shape: RoundedRectangleBorder(
            borderRadius: new BorderRadius.circular(35.0),
            side: BorderSide(color: Colors.white70),
          ),
          padding: const EdgeInsets.all(20.0),
          child: Text(
            'Sum of Two Numbers',
            style: TextStyle(
              fontSize: 30.0,
            ),
            textAlign: TextAlign.center,
          ),
          onPressed: () {
            Navigator.push(context, _PageTwo());
          },
        ),
        ////// Date Picker Dialog.
        RaisedButton(
          colorBrightness: Brightness.light,
          color: Colors.blue[200],
          shape: RoundedRectangleBorder(
            borderRadius: new BorderRadius.circular(35.0),
            side: BorderSide(color: Colors.white70),
          ),
          padding: const EdgeInsets.all(20.0),
          child: Text(
            'Sum of Two Numbers',
            style: TextStyle(
              fontSize: 30.0,
            ),
            textAlign: TextAlign.center,
          ),
          onPressed: () {
            Navigator.push(context, _PageTwo());
          },
        ),

        ////// Bottom Sheet Dialog.
        RaisedButton(
          colorBrightness: Brightness.light,
          color: Colors.blue[200],
          shape: RoundedRectangleBorder(
            borderRadius: new BorderRadius.circular(35.0),
            side: BorderSide(color: Colors.white70),
          ),
          padding: const EdgeInsets.all(20.0),
          child: Text(
            'Sum of Two Numbers',
            style: TextStyle(
              fontSize: 30.0,
            ),
            textAlign: TextAlign.center,
          ),
          onPressed: () {
            Navigator.push(context, _PageTwo());
          },
        ),
      ]
          .map(
            (Widget button) => Container(
              padding: EdgeInsets.symmetric(vertical: 8.0),
              child: button,
            ),
          )
          .toList(),
    );
  }
}

class RoutesExample extends StatelessWidget {
  const RoutesExample({Key key}) : super(key: key);

  // Route name is useful for navigating between routes.
  static const kRouteName = '/RoutesExample';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        automaticallyImplyLeading: false,
        title: Text('Page 1'),
      ),
      body: Center(
        child: RaisedButton(
          child: Text('Go to page two'),
          onPressed: () {
            // Navigator maintains a stack-like structure of pages. Jumping
            // between routes is by push/pop of Navigator.
            Navigator.push(context, _PageTwo());
          },
        ),
      ),
    );
  }
}

// <Null> means this route returns nothing.
class _PageTwo extends MaterialPageRoute<Null>
{
  _PageTwo() : super(
          builder: (BuildContext context) {
            return Scaffold(
              appBar: AppBar(
                title: Center(
                  child: Text(
                    "Hello, World!",
                    style: TextStyle(
                      color: Colors.black,
                      fontFamily: "PlayfairDisplay",
                    ),
                  ),
                ),
                backgroundColor: Color(0xfffdd998),
              ),
              body: Center(
                child: DefaultTabController(
                  length: 3,
                  child: Builder(
                    builder: (BuildContext context) => Padding(
                      padding: const EdgeInsets.all(25.0),
                      child: Column(
                        children: <Widget>[
                          TabPageSelector(),
                          Expanded(
                            child: Text(
                              "A \"Hello, World!\" program is a simple program that displays Hello, World! on the screen. Since it's a very simple program thus it is often used to introduce programming language to beginners.",
                              style: TextStyle(
                                fontSize: 32,
                              ),
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
                ),
              ),
            );
          },
        );
}
