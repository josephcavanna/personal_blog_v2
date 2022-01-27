import 'package:flutter/material.dart';
import 'package:personal_blog_v2/animations/animation_controller_state.dart';

class CustomScaleTransition extends StatefulWidget {
  const CustomScaleTransition({
    Key? key,
    required this.child,
    required this.index
  }) : super(key: key);

  final Widget child;
  final int index;

  @override
  _CustomScaleTransitionState createState() => _CustomScaleTransitionState(const Duration(milliseconds: 2500));
}

class _CustomScaleTransitionState
    extends AnimationControllerState<CustomScaleTransition> {
  _CustomScaleTransitionState(Duration duration) : super(duration);
  late final _scaleAnimation = Tween<double>(
    begin: 0.0,
    end: 1.0
  ).animate(
      CurvedAnimation(
          parent: animationController,
          curve: Interval(
            0.1 * widget.index,
            0.5 + 0.1 * widget.index,
            curve: Curves.easeInOutCubic
          ),
      ),
  );

  @override
  Widget build(BuildContext context) {
    return ScaleTransition(
      scale: _scaleAnimation,
      child: widget.child,
    );
  }
}
