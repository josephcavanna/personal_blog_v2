import 'package:flutter/material.dart';
import 'package:personal_blog_v2/methods/responsive.dart';
import '../responsive_content/desktop_content.dart';

class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {

  @override
  Widget build(BuildContext context) {
    return Responsive(
        desktop: DesktopContent(),
        tablet: DesktopContent(),
        mobile: DesktopContent(),
    );
  }
}
