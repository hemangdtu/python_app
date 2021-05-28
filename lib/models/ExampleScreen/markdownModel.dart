import 'package:flutter/material.dart';
import 'package:flutter_markdown/flutter_markdown.dart';

Widget markdownContent(String data) {
  return Markdown(
    selectable: true,
    styleSheet: MarkdownStyleSheet(
      code: TextStyle(
        fontSize: 15,
      ),
      h3: TextStyle(
        fontSize: 20,
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
