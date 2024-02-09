import 'package:flutter/material.dart';
import 'package:personal_blog_v2/routing/home_route_path.dart';

class HomeRouteInformationParser extends RouteInformationParser<HomeRoutePath> {
  @override
  Future<HomeRoutePath> parseRouteInformation(
      RouteInformation routeInformation) async {
    final uri = routeInformation.uri;
    print('uri: ${uri.pathSegments.length}');

    if (uri.pathSegments.length == 0) {
      return HomeRoutePath.home();
    }

    if (uri.pathSegments.length == 1) {
      final pathName = uri.pathSegments.elementAt(0);
      return HomeRoutePath.otherPage(pathName);
    }
    return HomeRoutePath.unknown();
  }

  @override
  RouteInformation restoreRouteInformation(HomeRoutePath path) {
    if (path.isUnknown) {
      print('path is unknown');
      return RouteInformation(uri: Uri.parse('/404'));
    }
    if (path.isHomePage) {
      print('path is home');
      return RouteInformation(uri: Uri.parse('/'));
    }
    if (path.isOtherPage) {
      print('path is other page');
      print(path.pathName);
      return RouteInformation(uri: Uri.parse('/${path.pathName}'));
    }
    print('path is 4th option');
    return RouteInformation(uri: Uri.parse('/404'));
  }
}
