import 'package:flutter/material.dart';
import 'package:personal_blog_v2/animations/custom_scale_transition.dart';
import 'package:personal_blog_v2/methods/launch_url.dart';
import '../constants.dart';

class ProjectsList {

  List<Widget> projectsList = [
    Container(
      width: 400,
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Text('BabyGrowth app', style: Constants.kProjectTitle),
          SizedBox(height: 10),
          Text('BabyGrowth allows you to input the height and weight data of your children and create their growth charts. An easy way to make colourful charts and share it friends & family.', textAlign: TextAlign.center, style: Constants.kProjectText,),
          SizedBox(height: 25),
          CircleAvatar(
            backgroundImage: AssetImage('images/applogo.webp'),
            backgroundColor: Colors.black26,
            radius: 45,
          ),
          SizedBox(height: 20),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              CustomScaleTransition(
                index: 2,
                child: MaterialButton(
                  child: Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Text('Android', style: TextStyle(color: Colors.blueGrey),),
                  ),
                  onPressed: () => launchURL('https://play.google.com/store/apps/details?id=com.jacavanna.babygrowth_app'),
                  color: Colors.blueGrey.shade100,
                  hoverColor: Colors.blueGrey.shade200,
                  shape: RoundedRectangleBorder(borderRadius: BorderRadius.all(Radius.circular(20))),
                ),
              ),
              SizedBox(width: 10),
              CustomScaleTransition(
                index: 3,
                child: MaterialButton(
                  child: Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Text('iOS', style: TextStyle(color: Colors.blueGrey)),
                  ),
                  onPressed: () => launchURL('https://apps.apple.com/us/app/babygrowth-create-baby-charts/id1564903293'),
                  color: Colors.blueGrey.shade100,
                  hoverColor: Colors.blueGrey.shade200,
                  shape: RoundedRectangleBorder(borderRadius: BorderRadius.all(Radius.circular(20))),
                                ),
              ),
            ],
          ),
        ],
      ),
    ),
    Container(
      width: 400,
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Text('NaviBar flutter package', style: Constants.kProjectTitle),
          SizedBox(height: 15),
          Text('A customizable bottom navigation bar using simple animations and theme colors that comes with a couple of presets.', textAlign: TextAlign.center, style: Constants.kProjectText,),
          SizedBox(height: 25),
          Image.asset("images/navibar.gif", width: 400, height: 85),
          SizedBox(height: 30),
          CustomScaleTransition(
            index: 5,
            child: MaterialButton(
              child: Padding(
                padding: const EdgeInsets.all(8.0),
                child: Text('NaviBar for Flutter', style: TextStyle(color: Colors.blueGrey)),
              ),
              onPressed: () => launchURL('https://pub.dev/packages/navi_bar_flutter'),
              color: Colors.blueGrey.shade100,
              hoverColor: Colors.blueGrey.shade200,
              shape: RoundedRectangleBorder(borderRadius: BorderRadius.all(Radius.circular(20))),
            ),
          ),
        ],
      ),
    ),
  ];
}