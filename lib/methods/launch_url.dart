import 'package:url_launcher/url_launcher.dart';

void launchURL(String socialMediaURL) async {
  String url = socialMediaURL;
  if (await canLaunch(url)) {
    await launch(url);
  } else {
    throw 'Could not launch $url';
  }
}