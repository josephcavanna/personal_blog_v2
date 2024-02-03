import 'package:flutter/material.dart';
import 'package:personal_blog_v2/methods/custom_scroll_behavior.dart';
import 'package:personal_blog_v2/screens/home_page.dart';
import 'package:personal_blog_v2/screens/projects.dart';
import 'package:personal_blog_v2/screens/reset_password.dart';
import 'package:supabase_flutter/supabase_flutter.dart';
import 'screens/about.dart';
import 'package:url_strategy/url_strategy.dart';
import 'package:personal_blog_v2/api/api_key.dart';

void main() async {
  const url = 'https://fgnapsdwhjqqfoafbvzn.supabase.co';
  setPathUrlStrategy();
   await Supabase.initialize(url: url, anonKey: supabaseApiKey);
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      scrollBehavior: CustomScrollBehavior(),
      home: HomePage(),
      onGenerateRoute: (settings) {
        if (settings.name == ResetPassword.id) {
          return MaterialPageRoute(builder: (context) => ResetPassword());
        }
        if (settings.name == Projects.id) {
          return MaterialPageRoute(builder: (context) => Projects());
        }
        if (settings.name == About.id) {
          return MaterialPageRoute(builder: (context) => About());
        }
        return null;
      },
      routes: {
        ResetPassword.id: (context) => ResetPassword(),
        Projects.id: (context) => Projects(),
        About.id: (context) => About(),
        HomePage.id: (context) => HomePage(),
      },
    );
  }
}