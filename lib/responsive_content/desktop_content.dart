import 'package:flutter/material.dart';
import 'package:personal_blog_v2/components/profile.dart';
import 'package:personal_blog_v2/screens/about.dart';
import 'package:personal_blog_v2/screens/projects.dart';
import 'package:personal_blog_v2/screens/standard_content.dart';

import '../constants.dart';

class DesktopContent extends StatelessWidget {
  const DesktopContent({Key? key}) : super(key: key);
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
      child: StandardContent(
        blogPages: [
          Profile(radius: 160,),
          Projects(scrollDirection: Axis.horizontal),
          About(),
        ],
      ),
    );
  }
}
