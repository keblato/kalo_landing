part of com.kalo.landing.views;

class TrustedInUs extends StatelessWidget {
  const TrustedInUs({super.key});

  @override
  Widget build(BuildContext context) {
    bool isMobile = MediaQuery.of(context).isMobile;

    return ScalePadding(
      paddingWeb: const EdgeInsets.only(
        top: 240,
      ),
      paddingTablet: const EdgeInsets.only(top: 160),
      paddingMobile: const EdgeInsets.only(top: 300),
      child: Column(
        children: <Widget>[
          if (isMobile) ...<Widget>[
            Image.asset(
              KaloImages.trustUs,
              width: MediaQuery.of(context).size.width * 0.8,
            ),
            const Spacing(
              direction: SpacingDirection.vertical,
              mobile: 100,
            ),
          ],
          Stack(
            clipBehavior: Clip.none,
            children: <Widget>[
              Positioned(
                top: 100,
                right: 0,
                child: Transform.scale(
                  scaleX: -1,
                  child: const ScaleImage(
                    widthTablet: 900,
                    widthMobile: 400,
                    path: KaloImages.developersWave,
                  ),
                ),
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: <Widget>[
                  if (!isMobile)
                    Image.asset(
                      KaloImages.trustUs,
                      width: MediaQuery.of(context).size.width * 0.4,
                    ),
                  Image.asset(
                    KaloImages.companies,
                    width: isMobile
                        ? MediaQuery.of(context).size.width * 0.8
                        : MediaQuery.of(context).size.width * 0.4,
                  ),
                ],
              ),
            ],
          ),
        ],
      ),
    );
  }
}
