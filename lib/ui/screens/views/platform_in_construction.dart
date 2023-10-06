part of com.kalo.landing.views;

class PlatformInConstruction extends StatelessWidget {
  const PlatformInConstruction({super.key});

  @override
  Widget build(BuildContext context) {
    double lateralPadding = MediaQuery.of(context).size.width * 0.1;
    return Stack(
      children: <Widget>[
        Image.asset(
          KaloImages.kaloDashboard,
          width: MediaQuery.of(context).size.width * .75,
        ),
        Positioned(
          top: 76,
          right: lateralPadding,
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
                child: Text(
                  'platform_in_construction.title'.tr(),
                  style: KaloTheme.textStyle.copyWith(
                    fontSize: 42,
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ),
              const SizedBox(height: 10),
              Text(
                'platform_in_construction.follow_us'.tr(),
                style: KaloTheme.textStyle.copyWith(
                  fontSize: 18,
                  fontWeight: FontWeight.w500,
                ),
              ),
              const SizedBox(height: 20),
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
                          colors: <Color>[Color(0xFF005AE4), Color(0xFF52ACFF)],
                          begin: Alignment.centerLeft,
                          end: Alignment.centerRight,
                        ).createShader(
                          Rect.fromLTWH(0, 0, bounds.width, bounds.height),
                        ),
                        child: Text(
                          socialNetwork.title,
                          style: KaloTheme.textStyle.copyWith(
                            fontSize: 18,
                            fontWeight: FontWeight.w500,
                          ),
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
}
