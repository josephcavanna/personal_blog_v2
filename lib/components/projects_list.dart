import 'package:flutter/material.dart';
import 'package:personal_blog_v2/animations/custom_scale_transition.dart';
import 'package:personal_blog_v2/components/link_button.dart';
import 'package:personal_blog_v2/components/project_card.dart';

class ProjectsList {

  List<Widget> projectsList = [
    ProjectCard(
      title: 'Goodnight Story AI', 
      description: 'Goodnight Story AI is an app that allows you to type in a title and procedes to generate a short story for you.', 
      preview: CircleAvatar(
        backgroundImage: AssetImage('images/appstore.jpg'),
        backgroundColor: Colors.black26,
        radius: 45,
      ), 
      linkButtonArea: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            CustomScaleTransition(
              index: 2,
              child: LinkButton(
                buttonText: 'Android',
                url: 'https://play.google.com/store/apps/details?id=dev.jcavanna.bedtime_story_ai',
              ),
            ),
            SizedBox(width: 10),
            CustomScaleTransition(
              index: 3,
              child: LinkButton(
                buttonText: 'iOS',
                url: 'https://apps.apple.com/nl/app/goodnight-story-ai/id6479606469',
              ),
            ),
          ],
        ),
      index: 0, 
      keywordStrings: ['flutter', 'supabase', 'chatgpt api'],
      ),
    ProjectCard(
      index: 1,
        title: 'BabyGrowth app',
        description: 'BabyGrowth allows you to input the height and weight data of your children and create their growth charts. An easy way to make colourful charts and share it friends & family.',
        preview: CircleAvatar(
          backgroundImage: AssetImage('images/applogo.webp'),
          backgroundColor: Colors.black26,
          radius: 45,
        ),
        linkButtonArea: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            CustomScaleTransition(
              index: 2,
              child: LinkButton(
                buttonText: 'Android',
                url: 'https://play.google.com/store/apps/details?id=com.jacavanna.babygrowth_app',
              ),
            ),
            SizedBox(width: 10),
            CustomScaleTransition(
              index: 3,
              child: LinkButton(
                buttonText: 'iOS',
                url: 'https://apps.apple.com/us/app/babygrowth-create-baby-charts/id1564903293',
              ),
            ),
          ],
        ),
      keywordStrings: ['flutter', 'firebase', 'user preferences'],
    ),
    ProjectCard(
      index: 2,
      title: 'NaviBar package',
      description: 'A customizable bottom navigation bar for Flutter using simple animations and theme colors that comes with a couple of presets.',
      preview: Image.asset("images/navibar.gif", width: 360, height: 80),
      linkButtonArea: CustomScaleTransition(
        index: 4,
        child: LinkButton(
          buttonText: 'NaviBar for Flutter',
          url: 'https://pub.dev/packages/navi_bar_flutter',
        ),
      ),
      keywordStrings: ['flutter package', 'navigation bar'],
    ),
    ProjectCard(
        title: 'Personal Website',
        description: 'Newly designed personal website using the power of Flutter web',
        preview: FlutterLogo(size: 125,),
        linkButtonArea: Text(''),
        index: 3, keywordStrings: ['responsive', 'custom animations', 'flutter web', ])
  ];
}