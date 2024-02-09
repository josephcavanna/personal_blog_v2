import 'package:flutter/material.dart';
import 'package:personal_blog_v2/animations/staggered_slide_transition.dart';
import 'package:personal_blog_v2/components/about_content.dart';
import 'package:personal_blog_v2/routing/routes_name.dart';

class About extends StatefulWidget {
  static const String id = RoutesName.about;
  const About({Key? key}) : super(key: key);

  @override
  State<About> createState() => _AboutState();
}

class _AboutState extends State<About> {
  @override
  Widget build(BuildContext context) {
    return StaggeredSlideTransition(index: 0,
    width: 1,
    child: AboutContent());
  }
}
