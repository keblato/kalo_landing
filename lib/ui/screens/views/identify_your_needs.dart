part of com.kalo.landing.views;

class IdentifyYourNeeds extends StatelessWidget {
  const IdentifyYourNeeds({super.key});

  @override
  Widget build(BuildContext context) {
    bool isMobile = MediaQuery.of(context).isMobile;
    bool isTablet = MediaQuery.of(context).isTablet;

    return ScalePadding(
      paddingWeb: const EdgeInsets.only(top: 335),
      paddingTablet: const EdgeInsets.only(top: 200),
      paddingMobile: const EdgeInsets.only(top: 200),
      child: Stack(
        clipBehavior: Clip.none,
        children: <Widget>[
          const Positioned(
            right: -50,
            top: 100,
            height: 300,
            width: 300,
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
          const Positioned(
            left: -250,
            top: 0,
            height: 300,
            width: 300,
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
          Center(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.center,
              children: <Widget>[
                ShaderMask(
                  blendMode: BlendMode.srcIn,
                  shaderCallback: (Rect bounds) => const LinearGradient(
                    colors: <Color>[Color(0xFF2C91D5), Color(0xFF005AE4)],
                    stops: <double>[0, 0.7],
                    begin: Alignment.topLeft,
                    end: Alignment.bottomRight,
                  ).createShader(
                    Rect.fromLTWH(0, 0, bounds.width, bounds.height),
                  ),
                  child: ScaleText(
                    text: 'identify_your_needs.not_sure_how_move_forward'.tr(),
                    textStyle: KaloTheme.textStyle,
                    webFontSize: 30,
                    tabletFontSize: 14,
                    mobileFontSize: 16,
                    fontWeight: FontWeight.w700,
                  ),
                ),
                ShaderMask(
                  blendMode: BlendMode.srcIn,
                  shaderCallback: (Rect bounds) => const LinearGradient(
                    colors: <Color>[
                      Color(0xFF0323E5),
                      Color(0xFF15ABFF),
                    ],
                    stops: <double>[0, 1],
                    begin: Alignment.topLeft,
                    end: Alignment.bottomRight,
                  ).createShader(
                    Rect.fromLTWH(0, 0, bounds.width, bounds.height),
                  ),
                  child: ScaleText(
                    text: 'identify_your_needs.identify_your_needs'.tr(),
                    textStyle: KaloTheme.textStyle,
                    webFontSize: 120,
                    tabletFontSize: 51,
                    mobileFontSize: 38,
                    fontWeight: FontWeight.w700,
                    textAlign: TextAlign.center,
                  ),
                ),
                const SizedBox(height: 30),
                ScaleText(
                  text: 'identify_your_needs.we_have_expert_consultants'.tr(),
                  textStyle: KaloTheme.acuminTextStyle,
                  webFontSize: 30,
                  tabletFontSize: 12,
                  mobileFontSize: 16,
                  fontWeight: FontWeight.w500,
                  textAlign: TextAlign.center,
                ),
                const Spacing(
                  direction: SpacingDirection.vertical,
                  web: 111,
                  mobile: 70,
                  tablet: 84,
                ),
                Stack(
                  clipBehavior: Clip.none,
                  children: <Widget>[
                    const Positioned(
                      top: -80,
                      right: -60,
                      child: ScaleImage(
                        path: KaloIcons.arrow,
                        heightWeb: 85,
                        heightTablet: 66,
                        heightMobile: 66,
                        fit: BoxFit.fitHeight,
                      ),
                    ),
                    GestureDetector(
                      onTap: () async {
                        Uri url = Uri.parse(
                          'https://calendly.com/kalomeetings/kalo-meetings-room',
                        );
                        await launchUrl(url);
                      },
                      child: DecoratedBox(
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(10),
                          gradient: const LinearGradient(
                            colors: <Color>[
                              Color(0xFF0323E5),
                              Color(0xFF15ABFF),
                            ],
                            stops: <double>[0, 1],
                            begin: Alignment.topCenter,
                            end: Alignment.bottomCenter,
                          ),
                        ),
                        child: ScalePadding(
                          paddingWeb: const EdgeInsets.symmetric(
                            vertical: 18,
                            horizontal: 26,
                          ),
                          paddingTablet: const EdgeInsets.symmetric(
                            vertical: 9,
                            horizontal: 12,
                          ),
                          paddingMobile: const EdgeInsets.symmetric(
                            vertical: 8,
                            horizontal: 12,
                          ),
                          child: ScaleText(
                            text: 'identify_your_needs.book_now'.tr(),
                            textStyle: KaloTheme.textStyle,
                            webFontSize: 30,
                            tabletFontSize: 14,
                            mobileFontSize: 13,
                            fontWeight: FontWeight.w600,
                            color: Colors.white,
                          ),
                        ),
                      ),
                    ),
                    Positioned(
                      top: isMobile || isTablet ? -25 : -45,
                      left: isMobile || isTablet ? -35 : -70,
                      child: Transform.rotate(
                        angle: -0.5,
                        child: DecoratedBox(
                          decoration: BoxDecoration(
                            color: Colors.white,
                            borderRadius: BorderRadius.circular(10),
                            boxShadow: <BoxShadow>[
                              BoxShadow(
                                color: Colors.black.withOpacity(0.1),
                                blurRadius: 10,
                                offset: const Offset(0, 10),
                              ),
                            ],
                          ),
                          child: ScalePadding(
                            paddingWeb: const EdgeInsets.symmetric(
                              vertical: 15,
                              horizontal: 21,
                            ),
                            paddingTablet: const EdgeInsets.symmetric(
                              vertical: 7,
                              horizontal: 10,
                            ),
                            paddingMobile: const EdgeInsets.symmetric(
                              vertical: 7,
                              horizontal: 10,
                            ),
                            child: ScaleText(
                              text: 'identify_your_needs.free'.tr(),
                              textStyle: KaloTheme.textStyle,
                              fontWeight: FontWeight.w600,
                              color: const Color(0xFFDB2020),
                              mobileFontSize: 12,
                              tabletFontSize: 11,
                              webFontSize: 24,
                            ),
                          ),
                        ),
                      ),
                    ),
                  ],
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
