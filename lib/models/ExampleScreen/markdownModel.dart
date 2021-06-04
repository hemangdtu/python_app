import 'package:flutter/material.dart';
import 'package:flutter_markdown/flutter_markdown.dart';

Widget markdownContent(String data) {
  return Markdown(
    selectable: true,
    styleSheet: MarkdownStyleSheet(
      code: TextStyle(
        fontSize: 15,
        backgroundColor: Colors.grey[300],
      ),
      codeblockPadding: EdgeInsets.all(10),
      codeblockDecoration: BoxDecoration(
        color: Colors.grey[300],
        boxShadow: [
          BoxShadow(
            color: Colors.black38,
            offset: Offset(1.0, 2.0),
          ),
        ],
      ),
      h4: TextStyle(
        fontSize: 23,
        fontWeight: FontWeight.bold,
      ),
      h3: TextStyle(
        fontSize: 25,
        fontWeight: FontWeight.bold,
      ),
      h3Align: WrapAlignment.center,
      h2: TextStyle(
        fontSize: 27,
      ),
      h1: TextStyle(
        fontSize: 29,
        fontWeight: FontWeight.bold,
      ),
      listBullet: TextStyle(
        fontSize: 20,
      ),
      p: TextStyle(
        fontSize: 20,
      ),
    ),
    data: data,
  );
}
