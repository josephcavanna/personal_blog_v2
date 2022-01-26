import 'package:flutter/material.dart';
import 'package:personal_blog_v2/animations/custom_scale_transition.dart';
import 'package:personal_blog_v2/animations/staggered_slide_transition.dart';
import 'package:personal_blog_v2/components/about_content.dart';
import 'package:personal_blog_v2/components/email_button.dart';
import 'package:personal_blog_v2/components/profile.dart';
import 'package:personal_blog_v2/components/projects_list.dart';
import 'package:personal_blog_v2/components/social_icons.dart';
import 'package:personal_blog_v2/constants.dart';
import 'package:personal_blog_v2/methods/height_constraint.dart';


class DesktopContent extends StatelessWidget {
  const DesktopContent({
    Key? key,
  }) : super(key: key);

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
            child: SingleChildScrollView(
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
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
              color: Constants.kProjectsBackground,
              child: Column(
                children: [
                  Container(
                    padding: EdgeInsets.symmetric(horizontal: 15),
                    width: _width * 3/4,
                    height: _height * 2/3,
                    child: SingleChildScrollView(
                      scrollDirection: Axis.horizontal,
                      child: Padding(
                        padding: const EdgeInsets.symmetric(horizontal: 20.0),
                        child: Row(
                            children: projects),
                      ),
                    )
                    ),
                  StaggeredSlideTransition(
                    index: 5,
                    width: _width * 3/4,
                    child: Container(
                      height: _height * 1/3,
                      width: _width * 3/4,
                      color: Colors.blueGrey.shade100,
                      child: Center(
                        child: HeightConstraint(low: Text('About', style: Constants.kProfileTitle),medium: AboutContent(), high: AboutContent(),),
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ),
        ),
      ],
    );
  }
}

