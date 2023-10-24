part of com.kalo.landing.views;

class ServicesWidget extends StatelessWidget {
  const ServicesWidget({super.key});

  @override
  Widget build(BuildContext context) {
    bool isMobile = MediaQuery.of(context).isMobile;

    double lateralPadding = MediaQuery.of(context).size.width * 0.1;
    double width = MediaQuery.of(context).size.width * 0.8;
    double height = width * 0.55;

    return Padding(
      padding: EdgeInsets.symmetric(horizontal: lateralPadding),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        children: <Widget>[
          const Spacing(
            direction: SpacingDirection.vertical,
            web: 190,
            tablet: 80,
            mobile: 85,
          ),
          if (isMobile)
            SizedBox(
              height: 730,
              child: MasonryGridView.count(
                crossAxisCount: 1,
                mainAxisSpacing: 20,
                itemCount: 3,
                itemBuilder: (BuildContext context, int index) => SizedBox(
                  height: ServicesCardEnum.values[index].height,
                  child: _ImageInfo(
                    image: ServicesCardEnum.values[index].image,
                    title: ServicesCardEnum.values[index].title.tr(),
                  ),
                ),
              ),
            )
          else
            SizedBox(
              height: height,
              child: MasonryGridView.count(
                crossAxisCount: 2,
                mainAxisSpacing: 4,
                crossAxisSpacing: 4,
                itemCount: 3,
                itemBuilder: (BuildContext context, int index) => SizedBox(
                  height: index == 0 ? height : height / 2,
                  child: _ImageInfo(
                    image: ServicesCardEnum.values[index].image,
                    title: ServicesCardEnum.values[index].title.tr(),
                  ),
                ),
              ),
            ),
        ],
      ),
    );
  }
}

class _ImageInfo extends StatelessWidget {
  const _ImageInfo({
    required this.image,
    required this.title,
    this.showSeeMore = false,
  });

  final String image;
  final String title;
  final bool showSeeMore;

  @override
  Widget build(BuildContext context) {
    bool isMobile = MediaQuery.of(context).isMobile;
    return LayoutBuilder(
      builder: (BuildContext context, BoxConstraints constraints) => Stack(
        children: <Widget>[
          Positioned(
            top: 0,
            left: 0,
            bottom: 0,
            right: 0,
            child: ClipRRect(
              borderRadius: const BorderRadius.all(Radius.circular(12)),
              child: Image.asset(
                image,
                fit: isMobile ? BoxFit.fitWidth : BoxFit.cover,
              ),
            ),
          ),
          Positioned(
            width: constraints.maxWidth * 0.6,
            bottom: showSeeMore ? 32 : 18,
            left: showSeeMore ? 32 : 28,
            child: Column(
              mainAxisSize: MainAxisSize.min,
              crossAxisAlignment: CrossAxisAlignment.center,
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
    );
  }
}
