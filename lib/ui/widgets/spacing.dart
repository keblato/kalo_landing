part of com.kalo.landing.widgets;

enum SpacingDirection { vertical, horizontal, both }

class Spacing extends StatelessWidget {
  const Spacing({
    required this.direction,
    this.web,
    this.tablet,
    this.mobile,
    super.key,
  });
  final double? web;
  final double? tablet;
  final double? mobile;
  final SpacingDirection direction;

  double? getHeight(BuildContext context) {
    bool isMobile = MediaQuery.of(context).isMobile;
    bool isTablet = MediaQuery.of(context).isTablet;
    if (direction != SpacingDirection.vertical &&
        direction != SpacingDirection.both) {
      return 0;
    }
    if (isMobile) {
      return mobile;
    }
    if (isTablet) {
      return tablet;
    }
    return web;
  }

  double? getWidth(BuildContext context) {
    bool isMobile = MediaQuery.of(context).isMobile;
    bool isTablet = MediaQuery.of(context).isTablet;
    if (direction != SpacingDirection.horizontal &&
        direction != SpacingDirection.both) {
      return 0;
    }
    if (isMobile) {
      return mobile;
    }
    if (isTablet) {
      return tablet;
    }
    return web;
  }

  @override
  Widget build(BuildContext context) => SizedBox(
        height: getHeight(context),
        width: getWidth(context),
      );
}
