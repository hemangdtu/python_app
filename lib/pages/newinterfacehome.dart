import 'package:flutter/material.dart';
//import 'customIcons.dart';
import 'dart:math';
import 'newdata.dart';

class NewHome extends StatefulWidget {
  @override
  _NewHomeState createState() => new _NewHomeState();
}

var cardAspectRatio = 12.0 / 16.0;
var widgetAspectRatio = cardAspectRatio * 1.2;

class _NewHomeState extends State<NewHome> {
  var currentPage = titleBasics.length - 1.0;

  @override
  Widget build(BuildContext context) {
    PageController controller = PageController(initialPage: titleBasics.length - 1);
    controller.addListener(() {
      setState(() {
        currentPage = controller.page;
      });
    });

    return Container(
      decoration: BoxDecoration(
        gradient: LinearGradient(
          colors: [
            Colors.blue[100],
            Colors.blue[300],
          ],
          begin: Alignment.bottomCenter,
          end: Alignment.topCenter,
          tileMode: TileMode.clamp,
        ),
      ),
      child: Scaffold(
        backgroundColor: Colors.transparent,
        body: SingleChildScrollView(
          child: Column(
            children: <Widget>[
              /*Padding(
                padding: const EdgeInsets.only(
                    left: 12.0, right: 12.0, top: 30.0, bottom: 8.0),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: <Widget>[
                    IconButton(
                      icon: Icon(
                        Icons.menu,
                        color: Colors.white,
                        size: 30.0,
                      ),
                      onPressed: () {},
                    ),
                    IconButton(
                      icon: Icon(
                        Icons.search,
                        color: Colors.white,
                        size: 30.0,
                      ),
                      onPressed: () {},
                    )
                  ],
                ),
              ),*/
              Padding(
                padding: EdgeInsets.only(
                  top: 20.0,
                  left: 20.0,
                  bottom: 0.0,
                ),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: <Widget>[
                    Text(
                      "Tutorials",
                      style: TextStyle(
                        color: Colors.black54,
                        fontSize: 46.0,
                        fontFamily: "Calibre-Semibold",
                        letterSpacing: 1.0,
                      ),
                    ),
                    /*IconButton(
                      icon: Icon(
                        CustomIcons.option,
                        //Icons.done_outline,
                        size: 30.0,
                        color: Colors.white,
                      ),
                      onPressed: () {},
                    )*/
                  ],
                ),
              ),
              /*Padding(
                padding: const EdgeInsets.only(left: 20.0),
                child: Row(
                  children: <Widget>[
                    Container(
                      decoration: BoxDecoration(
                        color: Color(0xFFff6e6e),
                        borderRadius: BorderRadius.circular(20.0),
                      ),
                      child: Center(
                        child: Padding(
                          padding: EdgeInsets.symmetric(
                              horizontal: 22.0, vertical: 6.0),
                          child: Text("Animated",
                              style: TextStyle(color: Colors.white)),
                        ),
                      ),
                    ),
                    SizedBox(
                      width: 15.0,
                    ),
                    Text("25+ Stories",
                        style: TextStyle(color: Colors.blueAccent))
                  ],
                ),
              ),*/
              Stack(
                children: <Widget>[
                  CardScrollWidgetBasic(currentPage),
                  Positioned.fill(
                    child: PageView.builder(
                      itemCount: titleBasics.length,
                      controller: controller,
                      reverse: true,
                      itemBuilder: (context, index) {
                        return Container();
                      },
                    ),
                  )
                ],
              ),















//////////////////////////////////////////////////////////////






              







              









            ],
          ),
        ),
      ),
    );
  }
}

class CardScrollWidgetBasic extends StatelessWidget {
  var currentPage;
  var padding = 20.0;
  var verticalInset = 20.0;

  CardScrollWidgetBasic(this.currentPage);

  @override
  Widget build(BuildContext context) {
    return new AspectRatio(
      aspectRatio: widgetAspectRatio,
      child: LayoutBuilder(builder: (context, contraints) {
        var width = contraints.maxWidth;
        var height = contraints.maxHeight;

        var safeWidth = width - 2 * padding;
        var safeHeight = height - 2 * padding;

        var heightOfPrimaryCard = safeHeight;
        var widthOfPrimaryCard = heightOfPrimaryCard * cardAspectRatio;

        var primaryCardLeft = safeWidth - widthOfPrimaryCard;
        var horizontalInset = primaryCardLeft / 2;

        List<Widget> cardList = new List();

        for (var i = 0; i < titleBasics.length; i++) {
          var delta = i - currentPage;
          bool isOnRight = delta > 0;

          var start = padding +
              max(
                  primaryCardLeft -
                      horizontalInset * -delta * (isOnRight ? 15 : 1),
                  0.0);

          var cardItem = Positioned.directional(
            top: padding + verticalInset * max(-delta, 0.0),
            bottom: padding + verticalInset * max(-delta, 0.0),
            start: start,
            textDirection: TextDirection.rtl,
            child: ClipRRect(
              borderRadius: BorderRadius.circular(16.0),
              child: Container(
                decoration: BoxDecoration(
                  color: Colors.white,
                  boxShadow: [
                    BoxShadow(
                        color: Colors.black12,
                        offset: Offset(3.0, 6.0),
                        blurRadius: 10.0)
                  ],
                ),
                child: AspectRatio(
                  aspectRatio: cardAspectRatio,
                  child: Stack(
                    fit: StackFit.expand,
                    children: <Widget>[
                      Image.asset(
                        images[0],
                        fit: BoxFit.cover,
                      ),
                      Align(
                        alignment: Alignment.bottomLeft,
                        child: Column(
                          mainAxisSize: MainAxisSize.min,
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: <Widget>[
                            Padding(
                              padding: EdgeInsets.symmetric(
                                horizontal: 25.0,
                                vertical: 18.0,
                              ),
                              child: Text(
                                titleBasics[i],
                                style: TextStyle(
                                  color: Colors.deepPurple[200],
                                  fontSize: 25.0,
                                  fontFamily: "SF-Pro-Text-Regular",
                                ),
                              ),
                            ),
                            SizedBox(
                              height: 1.0,
                            ),
                            Padding(
                              padding: const EdgeInsets.only(
                                left: 25.0,
                                bottom: 18.0,
                              ),
                              child: Container(
                                padding: EdgeInsets.symmetric(
                                  horizontal: 8.0,
                                  vertical: 6.0,
                                ),
                                child: RaisedButton(
                                  colorBrightness: Brightness.light,
                                  color: Colors.blue[200],
                                  shape: RoundedRectangleBorder(
                                    borderRadius:
                                        new BorderRadius.circular(35.0),
                                    side: BorderSide(
                                      color: Colors.white70,
                                    ),
                                  ),
                                  padding: const EdgeInsets.all(15.0),
                                  child: Text(
                                    'Read Now',
                                    style: TextStyle(
                                      fontSize: 15.0,
                                    ),
                                    textAlign: TextAlign.center,
                                  ),
                                  onPressed: () {},
                                ),
                                /*Text(
                                  "Read Now",
                                  style: TextStyle(
                                    color: Colors.white,
                                  ),
                                ),*/
                              ),
                            ),
                          ],
                        ),
                      )
                    ],
                  ),
                ),
              ),
            ),
          );
          cardList.add(cardItem);
        }
        return Stack(
          children: cardList,
        );
      }),
    );
  }
}








class CardScrollWidgetTut2 extends StatelessWidget {
  var currentPage;
  var padding = 20.0;
  var verticalInset = 20.0;

  CardScrollWidgetTut2(this.currentPage);

  @override
  Widget build(BuildContext context) {
    return new AspectRatio(
      aspectRatio: widgetAspectRatio,
      child: LayoutBuilder(builder: (context, contraints) {
        var width = contraints.maxWidth;
        var height = contraints.maxHeight;

        var safeWidth = width - 2 * padding;
        var safeHeight = height - 2 * padding;

        var heightOfPrimaryCard = safeHeight;
        var widthOfPrimaryCard = heightOfPrimaryCard * cardAspectRatio;

        var primaryCardLeft = safeWidth - widthOfPrimaryCard;
        var horizontalInset = primaryCardLeft / 2;

        List<Widget> cardList = new List();

        for (var i = 0; i < titleTut2.length; i++) {
          var delta = i - currentPage;
          bool isOnRight = delta > 0;

          var start = padding +
              max(
                  primaryCardLeft -
                      horizontalInset * -delta * (isOnRight ? 15 : 1),
                  0.0);

          var cardItem = Positioned.directional(
            top: padding + verticalInset * max(-delta, 0.0),
            bottom: padding + verticalInset * max(-delta, 0.0),
            start: start,
            textDirection: TextDirection.rtl,
            child: ClipRRect(
              borderRadius: BorderRadius.circular(16.0),
              child: Container(
                decoration: BoxDecoration(
                  color: Colors.white,
                  boxShadow: [
                    BoxShadow(
                        color: Colors.black12,
                        offset: Offset(3.0, 6.0),
                        blurRadius: 10.0)
                  ],
                ),
                child: AspectRatio(
                  aspectRatio: cardAspectRatio,
                  child: Stack(
                    fit: StackFit.expand,
                    children: <Widget>[
                      Image.asset(
                        images[0],
                        fit: BoxFit.cover,
                      ),
                      Align(
                        alignment: Alignment.bottomLeft,
                        child: Column(
                          mainAxisSize: MainAxisSize.min,
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: <Widget>[
                            Padding(
                              padding: EdgeInsets.symmetric(
                                horizontal: 25.0,
                                vertical: 18.0,
                              ),
                              child: Text(
                                titleTut2[i],
                                style: TextStyle(
                                  color: Colors.deepPurple[200],
                                  fontSize: 25.0,
                                  fontFamily: "SF-Pro-Text-Regular",
                                ),
                              ),
                            ),
                            SizedBox(
                              height: 1.0,
                            ),
                            Padding(
                              padding: const EdgeInsets.only(
                                left: 25.0,
                                bottom: 18.0,
                              ),
                              child: Container(
                                padding: EdgeInsets.symmetric(
                                  horizontal: 8.0,
                                  vertical: 6.0,
                                ),
                                child: RaisedButton(
                                  colorBrightness: Brightness.light,
                                  color: Colors.blue[200],
                                  shape: RoundedRectangleBorder(
                                    borderRadius:
                                        new BorderRadius.circular(35.0),
                                    side: BorderSide(
                                      color: Colors.white70,
                                    ),
                                  ),
                                  padding: const EdgeInsets.all(15.0),
                                  child: Text(
                                    'Read Now',
                                    style: TextStyle(
                                      fontSize: 15.0,
                                    ),
                                    textAlign: TextAlign.center,
                                  ),
                                  onPressed: () {},
                                ),
                                /*Text(
                                  "Read Now",
                                  style: TextStyle(
                                    color: Colors.white,
                                  ),
                                ),*/
                              ),
                            ),
                          ],
                        ),
                      )
                    ],
                  ),
                ),
              ),
            ),
          );
          cardList.add(cardItem);
        }
        return Stack(
          children: cardList,
        );
      }),
    );
  }
}