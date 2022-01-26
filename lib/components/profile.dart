import 'package:flutter/material.dart';
import 'package:personal_blog_v2/constants.dart';

class Profile extends StatelessWidget {
  static const String id = 'profile';
  const Profile({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Material(
      color: Constants.kProfileBackground,
      child: Container(
          child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          CircleAvatar(
              backgroundImage: AssetImage('images/profilePhoto.webp'),
              backgroundColor: Colors.white,
              radius: 125
          ),
          SizedBox(height: 35),
          Text('FLUTTER DEVELOPER', style: Constants.kJobTitle),
          SizedBox(height: 15),
          Text(
            'Joseph Cavanna',
            style: Constants.kProfileTitle,
          ),
        ],
      )),
    );
  }
}
