import 'package:flutter/material.dart';
import 'package:personal_blog_v2/constants.dart';

class AboutContent extends StatelessWidget {
  const AboutContent({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Padding(
        padding: const EdgeInsets.symmetric(vertical: 20.0, horizontal: 40),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Container(
              child: Text(
                'Joseph is a Spanish/Australian flutter developer living in Finland. His journey with Flutter & Dart started in October 2020, learning to code in his spare time. This led him to building his first app with Flutter: BabyGrowth.',
                textAlign: TextAlign.center,
                style: Constants.kAboutStyle,
              ),
            ),
            SizedBox(height: 15,),
            Container(
              child: Text(
                'He is currently pursuing a career in app development, as he continues to learn and build things with Flutter. He will soon be sharing the things he learns with others on his youtube channel.',
                textAlign: TextAlign.center,
                style: Constants.kAboutStyle,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
