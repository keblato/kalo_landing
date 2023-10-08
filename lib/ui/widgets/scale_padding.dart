part of com.kalo.landing.widgets;

class ScalePadding extends StatelessWidget {
  const ScalePadding({
    required this.child,
    this.paddingWeb,
    this.paddingTablet,
    this.paddingMobile,
    super.key,
  });
  final EdgeInsetsGeometry? paddingWeb;
  final EdgeInsetsGeometry? paddingTablet;
  final EdgeInsetsGeometry? paddingMobile;
  final Widget child;

  EdgeInsetsGeometry getPadding(BuildContext context) {
    bool isMobile = MediaQuery.of(context).isMobile;
    bool isTablet = MediaQuery.of(context).isTablet;

    if (isMobile) {
      return paddingMobile ?? EdgeInsets.zero;
    }
    if (isTablet) {
      return paddingTablet ?? EdgeInsets.zero;
    }
    return paddingWeb ?? EdgeInsets.zero;
  }

  @override
  Widget build(BuildContext context) => Padding(
        padding: getPadding(context),
        child: child,
      );
}
