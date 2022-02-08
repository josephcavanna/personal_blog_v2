import 'package:flutter/material.dart';
import 'package:personal_blog_v2/methods/launch_url.dart';
import '../constants.dart';

class LinkButton extends StatefulWidget {
  const LinkButton({
    required this.url,
    required this.buttonText,
    Key? key,
  }) : super(key: key);

  final String url;
  final String buttonText;

  @override
  _LinkButtonState createState() => _LinkButtonState();
}

class _LinkButtonState extends State<LinkButton> {
  @override
  Widget build(BuildContext context) {
    return Material(
      color: Colors.transparent,
      child: MaterialButton(
        color: Colors.pink.shade400,
        hoverColor: Colors.pinkAccent,
        shape: RoundedRectangleBorder(borderRadius: BorderRadius.all(Radius.circular(20))),
        child: Padding(
          padding: const EdgeInsets.all(10.0),
          child: Text(widget.buttonText,
              style: Constants.kEmailText),
        ),
        onPressed: () {
          setState(() {
            launchURL(widget.url);
          });
        },
      ),
    );
  }
}
