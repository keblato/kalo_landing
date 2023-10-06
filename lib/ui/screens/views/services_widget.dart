part of com.kalo.landing.views;

class ServicesWidget extends StatelessWidget {
  const ServicesWidget({super.key});

  @override
  Widget build(BuildContext context) {
    double lateralPadding = MediaQuery.of(context).size.width * 0.1;
    return Container(
      height: 500,
      padding: EdgeInsets.symmetric(horizontal: lateralPadding),
      child: LayoutBuilder(
        builder: (BuildContext context, BoxConstraints constraints) {
          double width = constraints.maxWidth;
          return Row(
            children: <Widget>[
              SizedBox(
                height: 500,
                width: width * 0.6,
                child: _ImageInfo(
                  imgPath: KaloImages.features1,
                  title: 'services.build_teams'.tr(),
                  showSeeMore: true,
                ),
              ),
              const SizedBox(width: 20),
              SizedBox(
                height: 500,
                width: width * 0.4 - 20,
                child: Column(
                  children: <Widget>[
                    SizedBox(
                      height: 240,
                      child: _ImageInfo(
                        imgPath: KaloImages.features2,
                        title:
                            'services.project_manager_keeps_you_informed'.tr(),
                      ),
                    ),
                    const SizedBox(height: 20),
                    SizedBox(
                      height: 240,
                      child: _ImageInfo(
                        imgPath: KaloImages.features3,
                        title: 'services.guarantees_you_deserve'.tr(),
                      ),
                    ),
                  ],
                ),
              ),
            ],
          );
        },
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
                child: Image.asset(imgPath, fit: BoxFit.cover),
              ),
              Positioned(
                bottom: showSeeMore ? 32 : 18,
                left: showSeeMore ? 32 : 21,
                width: constraints.maxWidth * 0.6,
                child: Column(
                  mainAxisSize: MainAxisSize.min,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: <Widget>[
                    Text(
                      title,
                      style: KaloTheme.textStyle.copyWith(
                        color: Colors.white,
                        fontSize: showSeeMore ? 28 : 18,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                    if (showSeeMore) ...<Widget>[
                      const SizedBox(height: 5),
                      Text(
                        'common.see_more'.tr(),
                        style: KaloTheme.textStyle.copyWith(
                          color: Colors.white,
                          fontSize: 18,
                          fontWeight: FontWeight.w500,
                          decoration: TextDecoration.underline,
                        ),
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