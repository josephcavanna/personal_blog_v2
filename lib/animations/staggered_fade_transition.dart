import 'package:flutter/material.dart';
import 'animation_controller_state.dart';

class StaggeredFadeTransition extends StatefulWidget {
  const StaggeredFadeTransition({
    required this.child,
    required this.index,
    Key? key,
  }) : super(key: key);
  final Widget child;
  final int index;

  @override
  _StaggeredFadeTransitionState createState() => _StaggeredFadeTransitionState(const Duration(seconds: 3));
}

class _StaggeredFadeTransitionState extends AnimationControllerState<StaggeredFadeTransition> {
  _StaggeredFadeTransitionState(Duration duration) : super(duration);
  late final _curveAnimation = Tween(
    begin: 0.0,
    end: 1.0,
  ).animate(CurvedAnimation(
      parent: animationController,
      curve: Interval(
        0.1 * widget.index,
        0.5 + 0.1 * widget.index,
        curve: Curves.easeInOutCubic,
      ),
  ),
  );

  @override
  Widget build(BuildContext context) {
    return AnimatedBuilder(
        animation: _curveAnimation,
        child: widget.child,
        builder: (context, child) {
          return FadeTransition(
            opacity: _curveAnimation,
            child: child,
          );
    });
  }
}
