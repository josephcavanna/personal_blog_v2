import 'package:flutter/material.dart';
import 'package:personal_blog_v2/methods/launch_url.dart';
import '../constants.dart';

class EmailButton extends StatefulWidget {
  const EmailButton({Key? key}) : super(key: key);

  @override
  _EmailButtonState createState() => _EmailButtonState();
}

class _EmailButtonState extends State<EmailButton> {
  @override
  Widget build(BuildContext context) {
    return Material(
      color: Constants.kProfileBackground,
      child: MaterialButton(
        color: Colors.blueGrey.shade50,
        hoverColor: Colors.blueGrey.shade100,
        shape: RoundedRectangleBorder(borderRadius: BorderRadius.all(Radius.circular(20))),
        child: Padding(
          padding: const EdgeInsets.all(10.0),
          child: Text('info@jcavanna.dev',
              style: Constants.kEmailButton),
        ),
        onPressed: () {
          setState(() {
            launchURL('mailto:<info@jcavanna.dev>?subject=&body=');
          });
        },
      ),
    );
  }
}
