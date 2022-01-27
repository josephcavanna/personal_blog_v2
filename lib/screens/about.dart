import 'package:flutter/material.dart';
import 'package:personal_blog_v2/components/about_content.dart';

class About extends StatelessWidget {
  static const String id = 'about';
  const About({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('About', style: TextStyle(color: Colors.white),),
          leading: IconButton(
            icon: Icon(Icons.arrow_back),
            onPressed: () => Navigator.pop(context),),
        backgroundColor: Colors.blueGrey.shade500,
      ),
      body: AboutContent(),
    );
  }
}
