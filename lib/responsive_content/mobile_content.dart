import 'package:flutter/material.dart';
import 'package:personal_blog_v2/components/email_button.dart';
import 'package:personal_blog_v2/constants.dart';
import 'package:personal_blog_v2/components/page_navigation.dart';
import 'package:personal_blog_v2/components/social_icons.dart';
import '../components/profile.dart';

class MobileContent extends StatelessWidget {
  const MobileContent({
    Key? key
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Center(
        child: SingleChildScrollView(
          child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                SizedBox(height: 15),
                PageNavigation(),
                SizedBox(height: 30),
                Profile(),
                SizedBox(height: 35),
                EmailButton(),
                SizedBox(height: 25),
                SocialIcons(),
                SizedBox(height: 25),
                Material(
                    child: Text('Built with Flutter', style: Constants.kWithFlutter)),
                Material(child: Text('© 2022',
                    style: Constants.kWithFlutter)),
              ]),
        ),
      ),
    );
  }
}
