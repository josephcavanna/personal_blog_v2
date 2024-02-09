class HomeRoutePath {
  final String? pathName;
  final bool isUnknown;

  HomeRoutePath.home()
      : pathName = null,
        isUnknown = false;

  HomeRoutePath.otherPage(this.pathName) : isUnknown = false;

  HomeRoutePath.unknown()
      : pathName = null,
        isUnknown = true;

  bool get isHomePage => pathName == null;
  bool get isOtherPage => pathName != null;
}