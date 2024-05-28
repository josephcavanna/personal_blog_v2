import 'package:flutter/material.dart';
import 'package:personal_blog_v2/methods/launch_url.dart';
import '../constants.dart';

class LinkButton extends StatefulWidget {
  const LinkButton({
    required this.url,
    required this.buttonText,
    this.backgroundColor,
    this.hoverColor,
    this.radius,
    this.padding,
    Key? key,
  }) : super(key: key);

  final String url;
  final String buttonText;
  final Color? backgroundColor;
  final Color? hoverColor;
  final double? radius;
  final double? padding;

  @override
  _LinkButtonState createState() => _LinkButtonState();
}

class _LinkButtonState extends State<LinkButton> {
  @override
  Widget build(BuildContext context) {
    return Material(
      color: Colors.transparent,
      child: MaterialButton(
        minWidth: 125,
        color: widget.backgroundColor ?? Constants.kButtonBackground,
        hoverColor: widget.hoverColor ?? Constants.kButtonBackgroundHover,
        shape: RoundedRectangleBorder(borderRadius: BorderRadius.all(Radius.circular(widget.radius ?? 20))),
        child: Padding(
          padding: EdgeInsets.all(widget.padding ?? 10.0),
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
