import 'package:flutter/material.dart';
import 'package:personal_blog_v2/components/url_text_widget.dart';
import 'package:personal_blog_v2/constants.dart';

class AboutContent extends StatelessWidget {
  const AboutContent({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(18.0),
      child: Container(
        height: 375,
        width: 390,
        child: Center(
          child: Material(
            color: Colors.white54,
            borderRadius: BorderRadius.all(Radius.circular(15)),
            child: Padding(
              padding: const EdgeInsets.all(20.0),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text(
                    'ABOUT',
                    style: Constants.kProjectTitle,
                  ),
                  SizedBox(
                    height: 15,
                  ),
                  Text(
                    'Joseph is a Spanish/Australian Flutter developer living in the Netherlands. His journey started with Flutter & Dart in October 2020, learning to code in his spare time. This led him to build his first app with Flutter: BabyGrowth.',
                    textAlign: TextAlign.center,
                    style: Constants.kAboutStyle,
                  ),
                  SizedBox(
                    height: 15,
                  ),
                 UrlTextWidget(preText: 'Joseph is currently working as an App Developer at ', hyperlinkText: 'SportBit Manager.', url: 'https://www.sportbitmanager.nl'),
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}
