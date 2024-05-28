import 'package:flutter/material.dart';
import 'package:personal_blog_v2/animations/staggered_slide_transition.dart';

import '../constants.dart';

class ProjectCard extends StatelessWidget {
  const ProjectCard({
    required this.title,
    required this.description,
    required this.preview,
    required this.linkButtonArea,
    required this.index,
    required this.keywordStrings,
    Key? key,
  }) : super(key: key);

  final String title;
  final String description;
  final Widget preview;
  final Widget linkButtonArea;
  final int index;
  final List<String>? keywordStrings;

  @override
  Widget build(BuildContext context) {
    final List<Widget> keywords = [];
    for (var keywordString in keywordStrings!) {
      keywords.add(Padding(
        padding: const EdgeInsets.symmetric(horizontal: 8.0),
        child: Text(keywordString.toUpperCase(), style: TextStyle(color: Constants.kProjectKeywordsColor, fontSize: 12, letterSpacing: -0.5), ),
      ));
    }
    return StaggeredSlideTransition(
      index: index,
      width: 1,
      child: Padding(
        padding: const EdgeInsets.all(18.0),
        child: Container(
          width: 390,
          height: 375,
          child: Material(
            color: Colors.white54,
            borderRadius: BorderRadius.all(Radius.circular(15)),
            child: Padding(
              padding: const EdgeInsets.symmetric(vertical: 10.0, horizontal: 30),
              child: Stack(
                children: [
                  Positioned(
                    top: 15,
                      left: 15,
                      right: 15,
                      child: Text(title.toUpperCase(), style: Constants.kProjectTitle)),
                  Positioned(
                    top: 50,
                      left: 15,
                      right: 15,
                      child: Text(description, textAlign: TextAlign.left, style: Constants.kProjectText,)),
                  Positioned(
                    top: 150,
                      left: 1,
                      right: 1,
                      child: Container(child: Center(child: preview),),
                  ),
                  Positioned(
                    left: 1,
                      right: 1,
                      bottom: 60,
                      child: linkButtonArea),
                  Positioned(
                    bottom: 15,
                      child: SingleChildScrollView(
                        scrollDirection: Axis.horizontal,
                          child: Row(children: keywords),
                      ),
                  ),
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}
