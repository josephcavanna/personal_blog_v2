import 'package:flutter/material.dart';
import 'package:personal_blog_v2/methods/custom_scroll_behavior.dart';
import 'package:personal_blog_v2/routing/home_router_delegate.dart';
import 'package:supabase_flutter/supabase_flutter.dart';
import 'package:personal_blog_v2/api/api_key.dart';
import 'package:url_strategy/url_strategy.dart';
import 'routing/home_route_information_parser.dart';

void main() async {
  const url = 'https://fgnapsdwhjqqfoafbvzn.supabase.co';
  await Supabase.initialize(url: url, anonKey: supabaseApiKey);
  setPathUrlStrategy();
  runApp(MyApp());
}

class MyApp extends StatefulWidget {
  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  @override
  Widget build(BuildContext context) { 
    return MaterialApp.router(
      color: Color(0xFFE6D8D8),
      debugShowCheckedModeBanner: false,
      scrollBehavior: CustomScrollBehavior(),
      routerDelegate: HomeRouterDelegate(),
      routeInformationParser: HomeRouteInformationParser(),
    );
  }
}
