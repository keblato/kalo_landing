part of com.kalo.landing.views;

class MethodologyWidget extends StatelessWidget {
  const MethodologyWidget({super.key});

  static const double imageSize = 60;

  @override
  Widget build(BuildContext context) => Column(
        children: <Widget>[
          Text(
            'methodology.title'.tr(),
            style: KaloTheme.textStyle.copyWith(
              fontSize: 27,
              fontWeight: FontWeight.w700,
            ),
          ),
          const SizedBox(height: 12),
          Text(
            'methodology.description'.tr(),
            textAlign: TextAlign.center,
            style: KaloTheme.acuminTextStyle
                .copyWith(fontSize: 18, fontWeight: FontWeight.w300),
          ),
          const SizedBox(height: 140),
          Stack(
            clipBehavior: Clip.none,
            children: <Widget>[
              Image.asset(
                KaloImages.methodologyWave,
                fit: BoxFit.fitWidth,
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
                        color: KaloTheme.primaryColor,
                        blurRadius: 380,
                        spreadRadius: 30,
                      ),
                    ],
                  ),
                ),
              ),
              const Positioned(
                right: -250,
                top: -200,
                height: 300,
                width: 300,
                child: DecoratedBox(
                  decoration: BoxDecoration(
                    shape: BoxShape.circle,
                    boxShadow: <BoxShadow>[
                      BoxShadow(
                        color: KaloTheme.primaryColor,
                        blurRadius: 300,
                        spreadRadius: 20,
                      ),
                    ],
                  ),
                ),
              ),
              Positioned(
                left: 280,
                top: -30,
                child: Column(
                  children: <Widget>[
                    Image.asset(
                      KaloIcons.searchLogo,
                      height: imageSize,
                      width: imageSize,
                    ),
                    const SizedBox(height: 22),
                    Text(
                      'methodology.identify_problem'.tr(),
                      textAlign: TextAlign.center,
                      style: KaloTheme.textStyle.copyWith(
                        fontSize: 22,
                        fontWeight: FontWeight.w600,
                        color: KaloTheme.blueColor,
                      ),
                    ),
                  ],
                ),
              ),
              Positioned(
                left: -15,
                right: 0,
                top: 40,
                child: Column(
                  children: <Widget>[
                    Image.asset(
                      KaloIcons.crewLogo,
                      height: imageSize,
                      width: 90,
                    ),
                    const SizedBox(height: 22),
                    Text(
                      'methodology.build_your_tech_team'.tr(),
                      textAlign: TextAlign.center,
                      style: KaloTheme.textStyle.copyWith(
                        fontSize: 22,
                        fontWeight: FontWeight.w600,
                        color: KaloTheme.blueColor,
                      ),
                    ),
                  ],
                ),
              ),
              Positioned(
                right: 280,
                top: -30,
                child: Column(
                  children: <Widget>[
                    Image.asset(
                      KaloIcons.rocketLogo,
                      height: imageSize,
                      width: imageSize,
                    ),
                    const SizedBox(height: 22),
                    Text(
                      'methodology.start_the_proyect'.tr(),
                      textAlign: TextAlign.center,
                      style: KaloTheme.textStyle.copyWith(
                        fontSize: 22,
                        fontWeight: FontWeight.w600,
                        color: KaloTheme.blueColor,
                      ),
                    ),
                  ],
                ),
              ),
            ],
          ),
        ],
      );
}
