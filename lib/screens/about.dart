import 'package:flutter/material.dart';
import 'package:personal_blog_v2/animations/staggered_slide_transition.dart';
import 'package:personal_blog_v2/components/about_content.dart';

class About extends StatelessWidget {
  static const String id = '/about';
  const About({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return StaggeredSlideTransition(index: 0,
    width: 1,
    child: AboutContent());
  }
}
