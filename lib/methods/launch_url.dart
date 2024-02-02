import 'package:url_launcher/url_launcher.dart';

void launchURL(String? socialMediaURL) async {
  String? url = socialMediaURL;
  if (await canLaunchUrl(Uri.parse(url!))) {
    await launchUrl(Uri.parse(url));
  } else {
    throw 'Could not launch $url';
  }
}