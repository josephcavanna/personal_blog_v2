import 'package:flutter/material.dart';
import 'package:personal_blog_v2/animations/animation_controller_state.dart';
import 'package:personal_blog_v2/components/profile.dart';
import 'package:personal_blog_v2/screens/about.dart';
import 'package:personal_blog_v2/screens/projects.dart';
import 'package:personal_blog_v2/screens/standard_content.dart';

class DesktopContent extends StatefulWidget {
  const DesktopContent({Key? key}) : super(key: key);

  @override
  State<DesktopContent> createState() => _DesktopContentState(Duration(milliseconds: 1800));
}

class _DesktopContentState extends AnimationControllerState<DesktopContent> {
  _DesktopContentState(Duration duration) : super(duration);

  @override
  Widget build(BuildContext context) {
    return AnimatedContainer(
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
            0.1 * animationController.value,
            1000.0 * animationController.value,
            2000.0 * animationController.value,
          ],
        ),
      ),
      duration: animationDuration,
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
