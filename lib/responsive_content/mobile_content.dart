import 'package:flutter/material.dart';
import 'package:personal_blog_v2/animations/animation_controller_state.dart';
import 'package:personal_blog_v2/screens/about.dart';
import 'package:personal_blog_v2/screens/projects.dart';
import 'package:personal_blog_v2/screens/standard_content.dart';
import '../components/profile.dart';

class MobileContent extends StatefulWidget {
  const MobileContent({
    Key? key
  }) : super(key: key);

  @override
  State<MobileContent> createState() => _MobileContentState(Duration(milliseconds: 1800));
}

class _MobileContentState extends AnimationControllerState<MobileContent> {
  _MobileContentState(Duration duration) : super(duration);
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
            Colors.deepPurple.shade700,
          ],
          stops: [
            0.1 * animationController.value,
            1000.0 * animationController.value,
            2000.0 * animationController.value,
          ],
        ),
      ),
      duration: animationDuration,
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
