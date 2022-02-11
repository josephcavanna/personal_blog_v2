import 'package:flutter/material.dart';
import 'package:personal_blog_v2/animations/animation_controller_state.dart';

class StaggeredSlideTransition extends StatefulWidget {
  const StaggeredSlideTransition(
      {Key? key, required this.index, required this.child, required this.width})
      : super(key: key);
  final int index;
  final Widget child;
  final double width;

  @override
  StaggeredSlideTransitionState createState() =>
      StaggeredSlideTransitionState(const Duration(milliseconds: 3800));
}

class StaggeredSlideTransitionState
    extends AnimationControllerState<StaggeredSlideTransition> {
  StaggeredSlideTransitionState(Duration duration) : super(duration);
  late final Animation<Offset> _offsetAnimation = Tween<Offset>(
    begin: Offset(widget.width, 0),
    end: Offset.zero,
  ).animate(
    CurvedAnimation(
      parent: animationController,
      curve: Interval(
        0.1 * widget.index,
        0.5 + 0.1 * widget.index,
        curve: Curves.easeInOutCubicEmphasized,
      ),
    ),
  );

  @override
  Widget build(BuildContext context) {
    return SlideTransition(
            position: _offsetAnimation,
            child: widget.child,
          );
  }
}
