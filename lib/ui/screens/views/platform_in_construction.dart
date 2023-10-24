part of com.kalo.landing.views;

class PlatformInConstruction extends StatelessWidget {
  const PlatformInConstruction({super.key});

  @override
  Widget build(BuildContext context) {
    double lateralPadding = MediaQuery.of(context).size.width * 0.1;
    bool isMobile = MediaQuery.of(context).isMobile;

    return ScalePadding(
      paddingWeb: EdgeInsets.only(top: 200, left: lateralPadding),
      paddingTablet: const EdgeInsets.only(top: 150),
      paddingMobile: const EdgeInsets.only(top: 80),
      child: isMobile
          ? SizedBox(
              height: 680,
              child: Stack(
                children: <Widget>[
                  Image.asset(
                    KaloImages.mobilePortalUnderConstruction,
                    width: MediaQuery.of(context).size.width,
                    fit: BoxFit.fitWidth,
                  ),
                  Column(
                    children: <Widget>[
                      const Spacing(
                        mobile: 300,
                        direction: SpacingDirection.vertical,
                      ),
                      ScaleText(
                        text:
                            'platform_in_construction.title'.tr().toUpperCase(),
                        textStyle: KaloTheme.textStyle,
                        webFontSize: 56,
                        tabletFontSize: 18,
                        mobileFontSize: 24,
                        fontWeight: FontWeight.bold,
                        color: Colors.white,
                      ),
                      const SizedBox(height: 10),
                      Padding(
                        padding: EdgeInsets.symmetric(
                          horizontal: MediaQuery.of(context).size.width * 0.2,
                        ),
                        child: ScaleText(
                          text: 'platform_in_construction.follow_us'.tr(),
                          textStyle: KaloTheme.textStyle,
                          webFontSize: 27,
                          tabletFontSize: 12,
                          mobileFontSize: 16,
                          fontWeight: FontWeight.w500,
                          color: Colors.white,
                          textAlign: TextAlign.center,
                        ),
                      ),
                      const Spacing(
                        mobile: 70,
                        direction: SpacingDirection.vertical,
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: <Widget>[
                          ...SocialNetworksEnum.values.map(
                            (SocialNetworksEnum socialNetwork) => Padding(
                              padding: const EdgeInsets.only(bottom: 17),
                              child: Row(
                                children: <Widget>[
                                  Image.asset(socialNetwork.image, width: 22),
                                  const SizedBox(width: 4),
                                  ScaleText(
                                    text: socialNetwork.title,
                                    textStyle: KaloTheme.textStyle,
                                    webFontSize: 26,
                                    tabletFontSize: 12,
                                    mobileFontSize: 11,
                                    color: Colors.white,
                                  ),
                                  const Spacing(
                                    mobile: 13,
                                    direction: SpacingDirection.horizontal,
                                  ),
                                ],
                              ),
                            ),
                          ),
                        ],
                      ),
                    ],
                  ),
                ],
              ),
            )
          : const _WebTabletPlatformUnderConstruction(),
    );
  }
}

class _WebTabletPlatformUnderConstruction extends StatelessWidget {
  const _WebTabletPlatformUnderConstruction();

  @override
  Widget build(BuildContext context) => Row(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: <Widget>[
          Expanded(
            child: Image.asset(
              KaloImages.kaloDashboard,
              fit: BoxFit.fitWidth,
            ),
          ),
          Expanded(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: <Widget>[
                ShaderMask(
                  blendMode: BlendMode.srcIn,
                  shaderCallback: (Rect bounds) => const LinearGradient(
                    colors: <Color>[Color(0xFF005AE4), Color(0xFF00FFA3)],
                    begin: Alignment.topLeft,
                    end: Alignment.bottomRight,
                  ).createShader(
                    Rect.fromLTWH(0, 0, bounds.width, bounds.height),
                  ),
                  child: ScaleText(
                    text: 'platform_in_construction.title'.tr(),
                    textStyle: KaloTheme.textStyle,
                    webFontSize: 56,
                    tabletFontSize: 18,
                    mobileFontSize: 18,
                    fontWeight: FontWeight.bold,
                  ),
                ),
                const SizedBox(height: 10),
                ScaleText(
                  text: 'platform_in_construction.follow_us'.tr(),
                  textStyle: KaloTheme.textStyle,
                  webFontSize: 27,
                  tabletFontSize: 12,
                  mobileFontSize: 16,
                  fontWeight: FontWeight.w500,
                ),
                const SizedBox(height: 40),
                ...SocialNetworksEnum.values.map(
                  (SocialNetworksEnum socialNetwork) => Padding(
                    padding: const EdgeInsets.only(bottom: 17),
                    child: Row(
                      children: <Widget>[
                        Image.asset(socialNetwork.image, width: 22),
                        const SizedBox(width: 8),
                        ShaderMask(
                          blendMode: BlendMode.srcIn,
                          shaderCallback: (Rect bounds) => const LinearGradient(
                            colors: <Color>[
                              Color(0xFF005AE4),
                              Color(0xFF52ACFF),
                            ],
                            begin: Alignment.centerLeft,
                            end: Alignment.centerRight,
                          ).createShader(
                            Rect.fromLTWH(0, 0, bounds.width, bounds.height),
                          ),
                          child: ScaleText(
                            text: socialNetwork.title,
                            textStyle: KaloTheme.textStyle,
                            webFontSize: 26,
                            tabletFontSize: 12,
                            mobileFontSize: 11,
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
              ],
            ),
          ),
        ],
      );
}
