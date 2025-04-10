import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:personal_blog_v2/constants.dart';
import 'package:url_launcher/url_launcher.dart';

class UrlTextWidget extends StatelessWidget {
  final String? preText;
  final String hyperlinkText;
  final String url;
  final String? postText;
  const UrlTextWidget(
      {this.preText,
      required this.hyperlinkText,
      required this.url,
      this.postText,
      Key? key})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return RichText(
      textAlign: TextAlign.center,
      text: TextSpan(
        text: preText,
        style: Constants.kAboutStyle,
        children: [
          TextSpan(
            text: hyperlinkText,
            style: Constants.kAboutStyle
                .copyWith(decoration: TextDecoration.underline),
            recognizer: TapGestureRecognizer()
              ..onTap = () async {
                if (await canLaunch(url)) {
                  await launch(url);
                } else {
                  throw 'Could not launch $url';
                }
              },
          ),
          TextSpan(
            text: postText,
          ),
        ],
      ),
    );
  }
}
