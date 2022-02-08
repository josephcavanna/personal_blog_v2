import 'package:flutter/material.dart';
import 'package:personal_blog_v2/animations/staggered_fade_transition.dart';
import 'package:personal_blog_v2/animations/staggered_slide_transition.dart';
import 'package:personal_blog_v2/components/social_icons.dart';
import '../constants.dart';

class StandardContent extends StatefulWidget {
  const StandardContent({
    required this.blogPages,
    Key? key,
  }) : super(key: key);

  final List<Widget> blogPages;

  @override
  _StandardContentState createState() => _StandardContentState();
}

class _StandardContentState extends State<StandardContent> {
  int pageIndex = 0;
  final double wordSpacing = 40;

  @override
  Widget build(BuildContext context) {
    return Column(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Padding(
            padding: const EdgeInsets.all(30.0),
            child: Material(
              color: Colors.transparent,
              child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  StaggeredFadeTransition(
                    index: 1,
                    child: TextButton(
                      onPressed: () {
                        setState(() {
                          pageIndex = 0;
                        });
                      },
                      child: Text(
                        'HOME',
                        style: Constants.kHomePageText,
                      ),
                    ),
                  ),
                  SizedBox(
                    width: wordSpacing,
                  ),
                  StaggeredFadeTransition(
                    index: 2,
                    child: TextButton(
                      onPressed: () {
                        setState(() {
                          pageIndex = 1;
                        });
                      },
                      child: Text(
                        'PROJECTS',
                        style: Constants.kHomePageText,
                      ),
                    ),
                  ),
                  SizedBox(
                    width: wordSpacing,
                  ),
                  StaggeredFadeTransition(
                    index: 3,
                    child: TextButton(
                      onPressed: () {
                        setState(() {
                          pageIndex = 2;
                        });
                      },
                      child: Text(
                        'ABOUT',
                        style: Constants.kHomePageText,
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ),
          StaggeredFadeTransition(
            index: 4,
            child: StaggeredSlideTransition(
                index: 3,
                child: widget.blogPages[pageIndex],
                width: 1),
          ),
          StaggeredFadeTransition(
            index: 4,
            child: Material(
              color: Colors.transparent,
              child: Padding(
                padding:  const EdgeInsets.only(top: 20.0, bottom: 40),
                child: Column(
                  children: [
                    SocialIcons(),
                    Text('Built with Flutter', style: Constants.kWithFlutter),
                    Text('© 2022', style: Constants.kWithFlutter),
                  ],
                ),
              ),),
          ),
        ],
      );
  }
}
