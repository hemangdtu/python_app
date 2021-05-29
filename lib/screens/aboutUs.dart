import 'package:flutter/material.dart';
import 'package:python_app/meta/constants.dart';

class AboutUsPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        appBar: AppBar(
          leading: IconButton(
            icon: Icon(
              Icons.arrow_back,
            ),
            onPressed: () {
              Navigator.pop(context);
            },
          ),
          backgroundColor: Color(0xFF2C2D95),
          title: Text("Working With Smile: Python"),
          centerTitle: true,
          iconTheme: IconThemeData(
            color: Colors.white,
          ),
        ),
        body: Container(
          decoration: gradientSet,
          padding: EdgeInsets.all(20),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Image(image: AssetImage("assets/workingwithsmilelogo.png")),
              Text(
                '''We work hard in designing informative contents, making concepts easy to learn and give you hands-on experience to excel in the subject.\n\nWe also offer our learners creative assignments, self assessment worksheets and much more. We are confident of our method of delivering the information in an effective & efficient way.\n\nKeep learning with smile as we are working with smile for YOU.''',
                textAlign: TextAlign.center,
                style: TextStyle(
                  fontSize: 20,
                  fontFamily: "SF-Pro-Text-Bold",
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
