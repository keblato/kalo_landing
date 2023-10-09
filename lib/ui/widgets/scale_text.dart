part of com.kalo.landing.widgets;

class ScaleText extends StatelessWidget {
  const ScaleText({
    required this.text,
    required this.textStyle,
    this.fontWeight,
    this.color,
    this.height,
    this.webFontSize,
    this.tabletFontSize,
    this.mobileFontSize,
    this.textAlign,
    this.textHeightBehavior,
    this.isRichText = false,
    super.key,
  });

  final String text;
  final TextStyle textStyle;
  final FontWeight? fontWeight;
  final Color? color;
  final double? height;
  final double? webFontSize;
  final double? tabletFontSize;
  final double? mobileFontSize;
  final TextAlign? textAlign;
  final bool isRichText;
  final TextHeightBehavior? textHeightBehavior;

  double? getFontSize(BuildContext context) {
    bool isMobile = MediaQuery.of(context).isMobile;
    bool isTablet = MediaQuery.of(context).isTablet;
    if (isMobile) {
      return mobileFontSize;
    }
    if (isTablet) {
      return tabletFontSize;
    }

    return webFontSize;
  }

  @override
  Widget build(BuildContext context) => isRichText
      ? SimpleRichText(
          text,
          style: textStyle.copyWith(
            fontSize: getFontSize(context),
            fontWeight: fontWeight,
            color: color,
            height: height,
          ),
          textAlign: textAlign,
        )
      : Text(
          text,
          style: textStyle.copyWith(
            fontSize: getFontSize(context),
            fontWeight: fontWeight,
            color: color,
            height: height,
          ),
          textAlign: textAlign,
          textHeightBehavior: textHeightBehavior,
        );
}
