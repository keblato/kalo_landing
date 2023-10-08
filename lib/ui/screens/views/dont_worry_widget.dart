part of com.kalo.landing.views;

class DontWorryWidget extends StatelessWidget {
  const DontWorryWidget({super.key});

  @override
  Widget build(BuildContext context) {
    double lateralPadding = MediaQuery.of(context).size.width * 0.1;
    bool isMobile = MediaQuery.of(context).isMobile;

    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: <Widget>[
        if (isMobile)
          SizedBox(
            width: 200,
            height: 100,
            child: ScaleText(
              text: 'dont_worry.title'.tr(),
              textStyle: KaloTheme.textStyle.copyWith(
                height: 1.2,
              ),
              fontWeight: FontWeight.bold,
              color: KaloTheme.primaryColor,
              webFontSize: 41,
              tabletFontSize: 18,
              mobileFontSize: 24,
              textAlign: TextAlign.center,
            ),
          ),
        Stack(
          children: <Widget>[
            const Align(
              alignment: Alignment.center,
              child: ScalePadding(
                paddingWeb: EdgeInsets.only(top: 50),
                paddingTablet: EdgeInsets.only(top: 40),
                paddingMobile: EdgeInsets.only(top: 40),
                child: ScaleSizedBox(
                  heightWeb: 300,
                  heightTablet: 230,
                  heightMobile: 130,
                  child: DecoratedBox(
                    decoration: BoxDecoration(
                      gradient: LinearGradient(
                        begin: Alignment.centerLeft,
                        end: Alignment.centerRight,
                        colors: <Color>[Color(0xffdff5fc), Color(0x00dff5fc)],
                      ),
                    ),
                    child: SizedBox.expand(),
                  ),
                ),
              ),
            ),
            Align(
              alignment: Alignment.topCenter,
              child: ScalePadding(
                paddingWeb:
                    EdgeInsets.symmetric(horizontal: lateralPadding * 0.8),
                paddingTablet:
                    EdgeInsets.symmetric(horizontal: lateralPadding * 0.8),
                paddingMobile: const EdgeInsets.symmetric(horizontal: 10),
                child: Column(
                  children: <Widget>[
                    Row(
                      crossAxisAlignment: isMobile
                          ? CrossAxisAlignment.center
                          : CrossAxisAlignment.start,
                      children: <Widget>[
                        const ScaleImage(
                          path: KaloImages.girlWorry,
                          heightWeb: 413,
                          heightTablet: 313,
                          heightMobile: 210,
                        ),
                        Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: <Widget>[
                            ScalePadding(
                              paddingWeb: const EdgeInsets.only(
                                top: 20,
                              ),
                              paddingTablet: const EdgeInsets.only(top: 15),
                              paddingMobile: const EdgeInsets.only(top: 15),
                              child: ChatBubble(
                                child: ScaleText(
                                  isRichText: true,
                                  text: 'dont_worry.first_message'.tr(),
                                  textStyle: KaloTheme.textStyle,
                                  //        fontWeight: FontWeight.w500,
                                  webFontSize: 15,
                                  tabletFontSize: 8,
                                  mobileFontSize: 11,
                                  color: Colors.white,
                                ),
                              ),
                            ),
                            ScalePadding(
                              paddingWeb: const EdgeInsets.only(
                                top: 27,
                                left: 70,
                              ),
                              paddingMobile: const EdgeInsets.only(
                                top: 27,
                              ),
                              paddingTablet: const EdgeInsets.only(
                                top: 20,
                                left: 30,
                              ),
                              child: ChatBubble(
                                color: KaloTheme.primaryColor,
                                width: 260,
                                height: 80,
                                child: ScaleText(
                                  isRichText: true,
                                  text: 'dont_worry.second_message'.tr(),
                                  textStyle: KaloTheme.textStyle,
                                  //        fontWeight: FontWeight.w500,
                                  webFontSize: 15,
                                  tabletFontSize: 8,
                                  mobileFontSize: 11,

                                  color: Colors.white,
                                ),
                              ),
                            ),
                            ScalePadding(
                              paddingWeb: const EdgeInsets.only(
                                top: 54,
                              ),
                              paddingMobile: const EdgeInsets.only(
                                top: 27,
                              ),
                              paddingTablet: const EdgeInsets.only(
                                top: 41,
                              ),
                              child: ChatBubble(
                                borderRadius: const BorderRadius.only(
                                  topRight: Radius.circular(16),
                                  bottomRight: Radius.circular(16),
                                  bottomLeft: Radius.circular(16),
                                ),
                                child: ScaleText(
                                  isRichText: true,
                                  text: 'dont_worry.third_message'.tr(),
                                  textStyle: KaloTheme.textStyle,
                                  mobileFontSize: 11,
                                  webFontSize: 15,
                                  tabletFontSize: 8,
                                  color: Colors.white,
                                ),
                              ),
                            ),
                          ],
                        ),
                        const Spacing(
                          direction: SpacingDirection.horizontal,
                          web: 67,
                          tablet: 60,
                          mobile: 26,
                        ),
                        if (!isMobile)
                          Expanded(
                            child: ScaleSizedBox(
                              heightWeb: 350,
                              heightTablet: 280,
                              heightMobile: 350,
                              widthWeb: 457,
                              widthTablet: 457,
                              widthMobile: 457,
                              child: Column(
                                mainAxisAlignment: MainAxisAlignment.center,
                                children: <Widget>[
                                  Flexible(
                                    child: ScaleText(
                                      text: 'dont_worry.title'.tr(),
                                      textStyle: KaloTheme.textStyle.copyWith(
                                        height: 1.2,
                                      ),
                                      fontWeight: FontWeight.bold,
                                      color: KaloTheme.primaryColor,
                                      webFontSize: 41,
                                      tabletFontSize: 18,
                                      mobileFontSize: 24,
                                    ),
                                  ),
                                  const SizedBox(height: 10),
                                  Flexible(
                                    child: ScaleText(
                                      text: 'dont_worry.description'.tr(),
                                      textAlign: TextAlign.justify,
                                      textStyle: KaloTheme.acuminTextStyle,
                                      webFontSize: 24,
                                      tabletFontSize: 12,
                                      mobileFontSize: 16,
                                    ),
                                  ),
                                ],
                              ),
                            ),
                          ),
                      ],
                    ),
                  ],
                ),
              ),
            ),
          ],
        ),
      ],
    );
  }
}
