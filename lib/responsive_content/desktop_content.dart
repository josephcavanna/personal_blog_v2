import 'package:flutter/material.dart';
import 'package:personal_blog_v2/components/profile.dart';
import 'package:personal_blog_v2/screens/about.dart';
import 'package:personal_blog_v2/screens/projects.dart';
import 'package:personal_blog_v2/screens/standard_content.dart';

class DesktopContent extends StatelessWidget {
  const DesktopContent({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        gradient: LinearGradient(
          begin: Alignment.topRight,
          end: Alignment.bottomLeft,
          colors: [
            Colors.pink,
            Colors.orangeAccent,
            Colors.deepPurple,
          ],
          stops: [
            0.1,
            1000,
            2000,
          ],
        ),
      ),
      child: StandardContent(
        blogPages: [
          Profile(),
          Projects(scrollDirection: Axis.horizontal),
          About(),
        ],
      ),
    );
  }
}
