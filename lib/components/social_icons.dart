import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:personal_blog_v2/animations/staggered_fade_transition.dart';
import 'package:personal_blog_v2/constants.dart';
import '../methods/launch_url.dart';

class SocialIcons extends StatelessWidget {
  const SocialIcons({
    // required this.iconOneKey,
    // required this.iconTwoKey,
    // required this.iconThreeKey,
    Key? key
  }) : super(key: key);

  // final GlobalKey<IconAnimatorState> iconOneKey;
  // final GlobalKey<IconAnimatorState> iconTwoKey;
  // final GlobalKey<IconAnimatorState> iconThreeKey;

  @override
  Widget build(BuildContext context) {
    double _iconSize = 20;
    return Material(
      child: Container(
        child: Padding(
          padding: const EdgeInsets.all(20.0),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              StaggeredFadeTransition(
                // key: iconOneKey,
                index: 0,
                child: IconButton(
                  icon: Icon(FontAwesomeIcons.twitter),
                  iconSize: _iconSize,
                  color: Constants.kSocialIconColor,
                  onPressed: () => launchURL('https://twitter.com/josephcavanna'),
                ),
              ),
              SizedBox(width: 30),
              StaggeredFadeTransition(
                index: 1,
                // key: iconTwoKey,
                child: IconButton(
                  icon: Icon(FontAwesomeIcons.github),
                  iconSize: _iconSize,
                  color: Constants.kSocialIconColor,
                  onPressed: () => launchURL('https://github.com/josephcavanna'),
                ),
              ),
              SizedBox(width: 30),
              StaggeredFadeTransition(
                index: 2,
                // key: iconThreeKey,
                child: IconButton(
                    icon: Icon(
                      FontAwesomeIcons.youtube,
                    ),
                    iconSize: _iconSize,
                    color: Constants.kSocialIconColor,
                    onPressed: () => launchURL(
                        'https://www.youtube.com/channel/UCqTsvkGTcNZWgkX_NsLPEBQ')),
              )
            ],
          ),
        ),
      ),
    );
  }
}
