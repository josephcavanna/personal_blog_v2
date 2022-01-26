import 'package:flutter/material.dart';
import 'package:personal_blog_v2/components/email_button.dart';
import 'package:personal_blog_v2/components/profile.dart';
import 'package:personal_blog_v2/components/projects_list.dart';
import 'package:personal_blog_v2/components/social_icons.dart';
import 'package:personal_blog_v2/screens/about.dart';

import '../constants.dart';

class TabletContent extends StatefulWidget {
  const TabletContent({
    Key? key,
  }) : super(key: key);

  @override
  _TabletContentState createState() => _TabletContentState();
}

class _TabletContentState extends State<TabletContent> {
  @override
  Widget build(BuildContext context) {
    double _width = MediaQuery.of(context).size.width;
    double _height = MediaQuery.of(context).size.height;
    ProjectsList projectsList = ProjectsList();


    final List<Widget> projects = [];
    for (var projectListItem in projectsList.projectsList) {
      projects.add(projectListItem);
    }

    return Row(
      children: [
        Expanded(
          flex: 1,
          child: Container(
            color: Colors.white,
            child: SingleChildScrollView(
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  TextButton(
                    child: Text('ABOUT', style: Constants.kPageButton),
                    onPressed: () {
                      setState(() {
                        Navigator.pushNamed(context, About.id);
                      });
                    },
                  ),
                  SizedBox(height: 25),
                  Profile(),
                  SizedBox(height: 35),
                  EmailButton(),
                  SizedBox(height: 25),
                  SocialIcons(),
                  SizedBox(height: 25),
                  Material(
                      child: Text('Built with Flutter',
                          style: Constants.kWithFlutter)),
                  Material(child: Text('© 2022',
                      style: Constants.kWithFlutter)),
                ],
              ),
            ),
          ),
        ),
        Expanded(
          flex: 2,
          child: Material(
            child: Container(
              color: Colors.blueGrey.shade50,
              child: Column(
                children: [
                  Container(
                      padding: EdgeInsets.all(40),
                      width: _width * 2/3 - 100,
                      height: _height,
                      child: SingleChildScrollView(
                        scrollDirection: Axis.vertical,
                        child: Column(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: projects),
                      )
                  )
                ],
              ),
            ),
          ),
        ),
      ],
    );
  }
}
