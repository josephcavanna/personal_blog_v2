import 'package:flutter/material.dart';
import 'package:personal_blog_v2/components/profile.dart';
import 'package:personal_blog_v2/screens/about.dart';
import 'package:personal_blog_v2/screens/projects.dart';
import 'package:personal_blog_v2/screens/standard_content.dart';

import '../constants.dart';

class TabletContent extends StatelessWidget {
  const TabletContent({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        gradient: LinearGradient(
          begin: Alignment.topCenter,
          end: Alignment.bottomCenter,
          colors: [
            Constants.kGradientOne,
            Constants.kGradientTwo,
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
            Profile(radius: 150),
            Projects(scrollDirection: Axis.vertical),
            About(),
          ],
        ),
      ),
    );
  }
}
