import 'package:flutter/material.dart';
import 'package:personal_blog_v2/components/profile.dart';
import 'package:personal_blog_v2/screens/about.dart';
import 'package:personal_blog_v2/screens/projects.dart';
import 'package:personal_blog_v2/screens/standard_content.dart';

class TabletContent extends StatelessWidget {
  const TabletContent({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return StandardContent(
        blogPages: [
          Profile(),
          Projects(scrollDirection: Axis.horizontal),
          About(),
        ],);
  }
}
