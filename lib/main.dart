import 'package:flutter/material.dart';
import 'package:personal_blog_v2/methods/custom_scroll_behavior.dart';
import 'package:personal_blog_v2/screens/home_page.dart';
import 'package:personal_blog_v2/screens/projects.dart';
import 'package:personal_blog_v2/screens/reset_password.dart';
import 'screens/about.dart';
import 'package:url_strategy/url_strategy.dart';

void main() {
  setPathUrlStrategy();
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      scrollBehavior: CustomScrollBehavior(),
      home: HomePage(),
      routes: {
        ResetPassword.id: (context) => ResetPassword(),
        Projects.id: (context) => Projects(),
        About.id: (context) => About(),
      },
    );
  }
}