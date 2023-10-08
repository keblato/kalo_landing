part of com.kalo.landing.widgets;

class ScaleSizedBox extends StatelessWidget {
  const ScaleSizedBox({
    this.child,
    this.heightMobile,
    this.heightTablet,
    this.heightWeb,
    this.widthMobile,
    this.widthTablet,
    this.widthWeb,
    super.key,
  });

  final double? widthWeb;
  final double? widthTablet;
  final double? widthMobile;

  final double? heightWeb;
  final double? heightTablet;
  final double? heightMobile;
  final Widget? child;

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
  Widget build(BuildContext context) => SizedBox(
        height: getHeight(context),
        width: getWidth(context),
        child: child,
      );
}
