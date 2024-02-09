import 'package:flutter/material.dart';
import 'package:personal_blog_v2/routing/home_route_path.dart';
import 'package:personal_blog_v2/routing/routes_name.dart';
import 'package:personal_blog_v2/screens/home_page.dart';
import 'package:personal_blog_v2/screens/reset_password.dart';

import '../screens/about.dart';
import '../screens/projects.dart';

class HomeRouterDelegate extends RouterDelegate<HomeRoutePath>
    with ChangeNotifier, PopNavigatorRouterDelegateMixin {
  String? pathName;
  bool isError = false;

  @override
  GlobalKey<NavigatorState> get navigatorKey => GlobalKey<NavigatorState>();

  @override
  HomeRoutePath get currentConfiguration {
    print('pathName is: $pathName');
    print(pathName == null);
    if (isError) {
      print('isError');
      return HomeRoutePath.unknown();
    }
    return pathName == null
        ? HomeRoutePath.home()
        : HomeRoutePath.otherPage(pathName);
  }

  @override
  Widget build(BuildContext context) {
    return Navigator(
      key: navigatorKey,
      onPopPage: (route, result) {
        if (!route.didPop(result)) {
          return false;
        }
        pathName = null;
        isError = false;
        notifyListeners();
        return true;
      },
      pages: [
        MaterialPage(
            child: HomePage(),
            key: ValueKey(RoutesName.homepage),
            name: RoutesName.homepage),
        if (pathName != null)
          MaterialPage(
            key: ValueKey(pathName),
            child: pathName == RoutesName.about
                ? About()
                : pathName == RoutesName.projects
                    ? Projects()
                    : pathName == RoutesName.resetPassword
                        ? ResetPassword()
                        : HomePage(),
            name: pathName,
          )
        else if (isError)
          MaterialPage(
              key: ValueKey('UnknownPage'),
              child: HomePage(),
              name: RoutesName.homepage)
      ],
    );
  }

  @override
  Future<void> setNewRoutePath(HomeRoutePath path) async {
    if (path.isUnknown) {
      pathName = null;
      isError = true;
      return;
    }
    if (path.isOtherPage) {
      if (path.pathName != null) {
        pathName = path.pathName;
        isError = false;
        return;
      } else {
        isError = true;
        return;
      }
    } else {
      pathName = null;
    }
  }
}
