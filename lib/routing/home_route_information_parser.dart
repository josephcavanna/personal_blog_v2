import 'package:flutter/material.dart';
import 'package:personal_blog_v2/routing/home_route_path.dart';

class HomeRouteInformationParser extends RouteInformationParser<HomeRoutePath> {
  @override
  Future<HomeRoutePath> parseRouteInformation(
      RouteInformation routeInformation) async {
    final uri = routeInformation.uri;

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
      return RouteInformation(uri: Uri.parse('/404'));
    }
    if (path.isHomePage) {
      return RouteInformation(uri: Uri.parse('/'));
    }
    if (path.isOtherPage) {
      return RouteInformation(uri: Uri.parse('/${path.pathName}'));
    }
    return RouteInformation(uri: Uri.parse('/404'));
  }
}
