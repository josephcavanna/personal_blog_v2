import 'package:flutter/material.dart';
import 'package:personal_blog_v2/components/projects_list.dart';

class Projects extends StatelessWidget {
  static const String id = '/projects';
  const Projects({
    this.scrollDirection,
    Key? key,
  }) : super(key: key);
  final Axis? scrollDirection;

  @override
  Widget build(BuildContext context) {
    ProjectsList projectsList = ProjectsList();
    final List<Widget> projects = [];
    for (var projectListItem in projectsList.projectsList) {
      projects.add(projectListItem);
    }

    return SingleChildScrollView(
    scrollDirection: scrollDirection!,
      child: scrollDirection == Axis.horizontal ?
      Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: projects) :
      Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: projects),
    );
  }
}