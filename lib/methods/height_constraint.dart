import 'package:flutter/material.dart';

class HeightConstraint extends StatelessWidget {
  final Widget? low;
  final Widget? high;
  final Widget? medium;

  const HeightConstraint({
    Key? key,
    @required this.low,
    @required this.medium,
    @required this.high
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return LayoutBuilder(
        builder: (context, constraints) {
          if (constraints.maxHeight >= 350) {
          return high!;
          } else if (constraints.maxHeight >= 172) {
            return medium!;
          } else {
            return low!;
          }
        }
    );
  }
}
