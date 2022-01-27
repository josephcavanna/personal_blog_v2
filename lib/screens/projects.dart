import 'package:flutter/material.dart';
import 'package:personal_blog_v2/components/projects_list.dart';

class Projects extends StatelessWidget {
  static const String id = 'projects';
  const Projects({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    ProjectsList projectsList = ProjectsList();
    final List<Widget> projects = [];
    for (var projectListItem in projectsList.projectsList) {
      projects.add(
          Padding(
            padding: const EdgeInsets.symmetric(vertical: 30.0),
            child: projectListItem,
          )
      );
    }
    return Scaffold(
      appBar: AppBar(
        title: Text('Projects', style: TextStyle(color: Colors.white),),
          leading: IconButton(
            icon: Icon(Icons.arrow_back),
            onPressed: () => Navigator.pop(context),),
        backgroundColor: Colors.blueGrey.shade500,
      ),
        body: SingleChildScrollView(
          child: Padding(
            padding: const EdgeInsets.symmetric(horizontal: 20.0, vertical: 20),
            child: Center(
              child: Column(
                  children: projects),
            ),
          ),
        ),
    );
  }
}