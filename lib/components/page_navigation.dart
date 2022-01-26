import 'package:flutter/material.dart';
import 'package:personal_blog_v2/screens/about.dart';
import 'package:personal_blog_v2/screens/projects.dart';
import '../constants.dart';

class PageNavigation extends StatefulWidget {
  const PageNavigation({Key? key}) : super(key: key);

  @override
  _PageNavigationState createState() => _PageNavigationState();
}

class _PageNavigationState extends State<PageNavigation> {
  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceAround,
      children: [
        TextButton(
          child: Text('PROJECTS', style: Constants.kPageButton),
          onPressed: () {
            setState(() {
              Navigator.pushNamed(context, Projects.id);
            });
          },
        ),
        TextButton(
          child: Text('ABOUT', style: Constants.kPageButton),
          onPressed: () {
            setState(() {
              Navigator.pushNamed(context, About.id);
            });
          },
        ),
      ],
    );
  }
}
