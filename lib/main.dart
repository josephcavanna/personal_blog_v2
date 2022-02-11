import 'package:flutter/material.dart';
import 'package:personal_blog_v2/methods/custom_scroll_behavior.dart';
import 'package:personal_blog_v2/screens/home_page.dart';
import 'package:personal_blog_v2/screens/projects.dart';
import 'screens/about.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      scrollBehavior: CustomScrollBehavior(),
      home: HomePage(),
      routes: {
        Projects.id: (context) => Projects(),
        About.id: (context) => About(),
      },
    );
  }
}