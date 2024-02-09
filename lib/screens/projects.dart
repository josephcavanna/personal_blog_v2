import 'package:flutter/material.dart';
import 'package:personal_blog_v2/components/projects_list.dart';
import 'package:personal_blog_v2/routing/routes_name.dart';

class Projects extends StatefulWidget {
  static const String id = RoutesName.projects;

  const Projects({
    this.scrollDirection,
    Key? key,
  }) : super(key: key);
  final Axis? scrollDirection;

  @override
  State<Projects> createState() => _ProjectsState();
}

class _ProjectsState extends State<Projects> {
  @override
  Widget build(BuildContext context) {
    ProjectsList projectsList = ProjectsList();
    final List<Widget> projects = [];
    for (var projectListItem in projectsList.projectsList) {
      projects.add(projectListItem);
    }

    return SingleChildScrollView(
    scrollDirection: widget.scrollDirection!,
      child: widget.scrollDirection == Axis.horizontal ?
      Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: projects) :
      Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: projects),
    );
  }
}