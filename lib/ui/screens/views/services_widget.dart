part of com.kalo.landing.views;

class ServicesWidget extends StatelessWidget {
  const ServicesWidget({super.key});

  @override
  Widget build(BuildContext context) {
    bool isMobile = MediaQuery.of(context).isMobile;

    double lateralPadding = MediaQuery.of(context).size.width * 0.1;
    double width = MediaQuery.of(context).size.width * 0.38;
    double height = width * 1.2;
    return Padding(
      padding: EdgeInsets.symmetric(horizontal: lateralPadding),
      child: Column(
        children: <Widget>[
          const Spacing(
            direction: SpacingDirection.vertical,
            web: 190,
            tablet: 80,
            mobile: 85,
          ),
          if (isMobile)
            Column(
              children: <Widget>[
                Padding(
                  padding: const EdgeInsets.only(
                    bottom: 30,
                  ),
                  child: SizedBox(
                    height: 459,
                    child: _ImageInfo(
                      imgPath: KaloImages.features1,
                      title: 'services.build_teams'.tr(),
                      showSeeMore: true,
                    ),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.only(
                    bottom: 30,
                  ),
                  child: SizedBox(
                    height: 459,
                    child: _ImageInfo(
                      imgPath: KaloImages.features2,
                      title: 'services.project_manager_keeps_you_informed'.tr(),
                    ),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.only(
                    bottom: 30,
                  ),
                  child: SizedBox(
                    height: 459,
                    child: _ImageInfo(
                      imgPath: KaloImages.features3,
                      title: 'services.guarantees_you_deserve'.tr(),
                    ),
                  ),
                ),
              ],
            )
          else
            Row(
              children: <Widget>[
                SizedBox(
                  height: height,
                  width: width,
                  child: _ImageInfo(
                    imgPath: KaloImages.features1,
                    title: 'services.build_teams'.tr(),
                    showSeeMore: true,
                  ),
                ),
                const SizedBox(width: 20),
                SizedBox(
                  height: height,
                  width: width,
                  child: Column(
                    children: <Widget>[
                      SizedBox(
                        height: (height / 2) - 10,
                        child: _ImageInfo(
                          imgPath: KaloImages.features2,
                          title: 'services.project_manager_keeps_you_informed'
                              .tr(),
                        ),
                      ),
                      const SizedBox(height: 20),
                      SizedBox(
                        height: (height / 2) - 10,
                        child: _ImageInfo(
                          imgPath: KaloImages.features3,
                          title: 'services.guarantees_you_deserve'.tr(),
                        ),
                      ),
                    ],
                  ),
                ),
              ],
            ),
        ],
      ),
    );
  }
}

class _ImageInfo extends StatelessWidget {
  const _ImageInfo({
    required this.imgPath,
    required this.title,
    this.showSeeMore = false,
  });

  final String imgPath;
  final String title;
  final bool showSeeMore;

  @override
  Widget build(BuildContext context) => LayoutBuilder(
        builder: (BuildContext context, BoxConstraints constraints) =>
            ClipRRect(
          borderRadius: const BorderRadius.all(Radius.circular(12)),
          child: Stack(
            children: <Widget>[
              Positioned(
                top: 0,
                left: 0,
                bottom: 0,
                right: 0,
                child: Image.asset(imgPath, fit: BoxFit.fitHeight),
              ),
              Positioned(
                bottom: showSeeMore ? 32 : 18,
                left: showSeeMore ? 32 : 21,
                width: constraints.maxWidth * 0.6,
                child: Column(
                  mainAxisSize: MainAxisSize.min,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: <Widget>[
                    ScaleText(
                      text: title,
                      textStyle: KaloTheme.textStyle.copyWith(),
                      webFontSize: showSeeMore ? 41 : 26,
                      tabletFontSize: showSeeMore ? 16 : 10,
                      mobileFontSize: showSeeMore ? 21 : 19,
                      fontWeight: FontWeight.bold,
                      color: Colors.white,
                    ),
                    if (showSeeMore) ...<Widget>[
                      const SizedBox(height: 5),
                      ScaleText(
                        text: 'common.see_more'.tr(),
                        textStyle: KaloTheme.textStyle.copyWith(
                          decoration: TextDecoration.underline,
                        ),
                        webFontSize: 26,
                        tabletFontSize: 10,
                        mobileFontSize: 14,
                        fontWeight: FontWeight.w500,
                        color: Colors.white,
                      ),
                    ],
                  ],
                ),
              ),
            ],
          ),
        ),
      );
}
