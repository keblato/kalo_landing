part of com.kalo.landing.views;

class MethodologyWidget extends StatelessWidget {
  const MethodologyWidget({super.key});

  @override
  Widget build(BuildContext context) {
    bool isMobile = MediaQuery.of(context).isMobile;
    bool isTablet = MediaQuery.of(context).isTablet;
    return Column(
      children: <Widget>[
        const Spacing(
          direction: SpacingDirection.vertical,
          web: 140,
          tablet: 100,
          mobile: 17,
        ),
        ScaleText(
          text: 'methodology.title'.tr(),
          textStyle: KaloTheme.textStyle,
          webFontSize: 36,
          tabletFontSize: 18,
          mobileFontSize: 24,
          fontWeight: FontWeight.bold,
        ),
        const Spacing(
          direction: SpacingDirection.vertical,
          web: 16,
          tablet: 9,
          mobile: 17,
        ),
        ScaleText(
          text: 'methodology.description'.tr(),
          textAlign: TextAlign.center,
          textStyle: KaloTheme.acuminTextStyle,
          webFontSize: 24,
          tabletFontSize: 12,
          mobileFontSize: 16,
        ),
        const Spacing(
          direction: SpacingDirection.vertical,
          web: 116,
          tablet: 56,
          mobile: 109,
        ),
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: <Widget>[
            const ScaleSizedBox(
              heightTablet: 200,
              heightWeb: 300,
              heightMobile: 100,
              child: DecoratedBox(
                decoration: BoxDecoration(
                  shape: BoxShape.circle,
                  boxShadow: <BoxShadow>[
                    BoxShadow(
                      color: Color.fromARGB(91, 46, 154, 255),
                      blurRadius: 500,
                      spreadRadius: 80,
                    ),
                  ],
                ),
              ),
            ),
            ScaleSizedBox(
              widthWeb: 1200,
              widthTablet: 760,
              widthMobile: 400,
              child: LayoutBuilder(
                builder: (_, BoxConstraints constraints) {
                  double imageSize = 60;

                  double searchXPos = 250;
                  double searchYPos = 145;

                  double crewXPos = 550;
                  double crewYPos = 70;

                  double rocketXPos = 750;
                  double rocketYPos = 135;
                  if (isTablet) {
                    imageSize = 37;

                    searchXPos = 170;
                    searchYPos = 110;

                    crewXPos = 350;
                    crewYPos = 60;

                    rocketXPos = 500;
                    rocketYPos = 110;
                  }
                  if (isMobile) {
                    imageSize = 31;

                    searchXPos = 80;
                    searchYPos = 45;

                    crewXPos = 165;
                    crewYPos = 20;

                    rocketXPos = 260;
                    rocketYPos = 45;
                  }

                  return Stack(
                    clipBehavior: Clip.none,
                    children: <Widget>[
                      Image.asset(
                        KaloImages.methodologyWave,
                        fit: BoxFit.fitWidth,
                      ),
                      Positioned(
                        bottom: searchYPos,
                        left: searchXPos,
                        child: Column(
                          children: <Widget>[
                            Image.asset(
                              KaloIcons.searchLogo,
                              height: imageSize,
                              width: imageSize,
                            ),
                            const Spacing(
                              direction: SpacingDirection.horizontal,
                              web: 29,
                              tablet: 16,
                              mobile: 14,
                            ),
                            ScaleText(
                              text: 'methodology.identify_problem'.tr(),
                              textAlign: TextAlign.center,
                              textStyle: KaloTheme.textStyle,
                              fontWeight: FontWeight.w600,
                              color: KaloTheme.blueColor,
                              webFontSize: 29,
                              tabletFontSize: 12,
                              mobileFontSize: 10,
                            ),
                          ],
                        ),
                      ),
                      Positioned(
                        bottom: crewYPos,
                        left: crewXPos,
                        // width: width / 4,
                        child: Column(
                          children: <Widget>[
                            Image.asset(
                              KaloIcons.crewLogo,
                              height: imageSize,
                              width: 90,
                            ),
                            const Spacing(
                              direction: SpacingDirection.horizontal,
                              web: 29,
                              tablet: 16,
                              mobile: 14,
                            ),
                            ScaleText(
                              text: 'methodology.build_your_tech_team'.tr(),
                              textAlign: TextAlign.center,
                              textStyle: KaloTheme.textStyle,
                              fontWeight: FontWeight.w600,
                              color: KaloTheme.blueColor,
                              webFontSize: 29,
                              tabletFontSize: 12,
                              mobileFontSize: 10,
                            ),
                          ],
                        ),
                      ),
                      Positioned(
                        bottom: rocketYPos,
                        left: rocketXPos,
                        child: Column(
                          children: <Widget>[
                            Image.asset(
                              KaloIcons.rocketLogo,
                              height: imageSize,
                              width: imageSize,
                            ),
                            const Spacing(
                              direction: SpacingDirection.horizontal,
                              web: 29,
                              tablet: 16,
                              mobile: 14,
                            ),
                            ScaleText(
                              text: 'methodology.start_the_proyect'.tr(),
                              textAlign: TextAlign.center,
                              textStyle: KaloTheme.textStyle,
                              fontWeight: FontWeight.w600,
                              color: KaloTheme.blueColor,
                              webFontSize: 29,
                              tabletFontSize: 12,
                              mobileFontSize: 10,
                            ),
                          ],
                        ),
                      ),
                    ],
                  );
                },
              ),
            ),
            const ScaleSizedBox(
              heightTablet: 200,
              heightWeb: 300,
              heightMobile: 50,
              child: DecoratedBox(
                decoration: BoxDecoration(
                  shape: BoxShape.circle,
                  boxShadow: <BoxShadow>[
                    BoxShadow(
                      color: Color.fromARGB(91, 46, 154, 255),
                      blurRadius: 500,
                      spreadRadius: 80,
                      offset: Offset(-35, 3),
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
