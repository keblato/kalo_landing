part of com.kalo.landing.widgets;

class ScaleImage extends StatelessWidget {
  const ScaleImage({
    required this.path,
    this.widthWeb,
    this.heightMobile,
    this.heightTablet,
    this.heightWeb,
    this.widthMobile,
    this.widthTablet,
    this.fit,
    super.key,
  });
  final String path;
  final BoxFit? fit;

  final double? widthWeb;
  final double? widthTablet;
  final double? widthMobile;

  final double? heightWeb;
  final double? heightTablet;
  final double? heightMobile;

  double? getWidth(BuildContext context) {
    bool isMobile = MediaQuery.of(context).isMobile;
    bool isTablet = MediaQuery.of(context).isTablet;

    if (isMobile) {
      return widthMobile;
    }
    if (isTablet) {
      return widthTablet;
    }
    return widthWeb;
  }

  double? getHeight(BuildContext context) {
    bool isMobile = MediaQuery.of(context).isMobile;
    bool isTablet = MediaQuery.of(context).isTablet;

    if (isMobile) {
      return heightMobile;
    }
    if (isTablet) {
      return heightTablet;
    }
    return heightWeb;
  }

  @override
  Widget build(BuildContext context) => Image.asset(
        path,
        height: getHeight(context),
        width: getWidth(context),
      );
}
