import 'package:flutter/material.dart';
import 'package:personal_blog_v2/components/link_button.dart';
import 'package:personal_blog_v2/constants.dart';

class Profile extends StatelessWidget {
  static const String id = 'profile';
  const Profile({
    required this.radius,
    Key? key,
  }) : super(key: key);

  final double radius;

  @override
  Widget build(BuildContext context) {
    return Material(
      color: Colors.transparent,
      child: Container(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Container(
                decoration: BoxDecoration(
                  shape: BoxShape.circle,
                  boxShadow: [
                    BoxShadow(
                        blurRadius:15 ,
                        color: Colors.black26,
                        spreadRadius: 2,
                        offset: Offset(5, 5),
                    ),
                  ]
                ),
                child: CircleAvatar(
                    backgroundImage: AssetImage('images/profilePhoto.webp'),
                    backgroundColor: Colors.white,
                    radius: radius),
              ),
              SizedBox(height: 25),
              Text('FLUTTER DEVELOPER', style: Constants.kJobTitle),
              SizedBox(height: 15),
              Text(
                'Joseph Cavanna',
                style: Constants.kProfileTitle,
              ),
              SizedBox(height: 25),
              LinkButton(
                buttonText: 'info@jcavanna.dev',
                url: 'mailto:<info@jcavanna.dev>?subject=&body=',
              )
            ],
          ),
      ),
    );
  }
}
