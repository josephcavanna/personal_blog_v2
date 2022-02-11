import 'package:flutter/material.dart';
import 'package:personal_blog_v2/screens/about.dart';
import 'package:personal_blog_v2/screens/projects.dart';
import 'package:personal_blog_v2/screens/standard_content.dart';
import '../components/profile.dart';

class MobileContent extends StatelessWidget {
  const MobileContent({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        gradient: LinearGradient(
          begin: Alignment.topCenter,
          end: Alignment.bottomCenter,
          colors: [
            Colors.indigoAccent,
            Colors.redAccent,
          ],
          stops: [
            0.1,
            0.9,
          ],
        ),
      ),
      child: SingleChildScrollView(
        child: StandardContent(
          blogPages: [
            Profile(),
            Projects(scrollDirection: Axis.vertical),
            About(),
          ],
        ),
      ),
    );
  }
}