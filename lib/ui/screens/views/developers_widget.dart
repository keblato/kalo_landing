part of com.kalo.landing.views;

class DevelopersWidget extends StatefulWidget {
  const DevelopersWidget({super.key});

  @override
  State<DevelopersWidget> createState() => _DevelopersWidgetState();
}

class _DevelopersWidgetState extends State<DevelopersWidget> {
  final ScrollController _scrollController = ScrollController();
  Timer? _timer;

  @override
  void initState() {
    //Infinite scroll
    _timer = Timer.periodic(const Duration(milliseconds: 500), (Timer timer) {
      if (_scrollController.hasClients) {
        if (_scrollController.offset >=
            _scrollController.position.maxScrollExtent) {
          _scrollController.animateTo(
            0,
            duration: const Duration(milliseconds: 500),
            curve: Curves.linear,
          );
        } else {
          _scrollController.animateTo(
            _scrollController.offset + 50,
            duration: const Duration(milliseconds: 500),
            curve: Curves.linear,
          );
        }
      }
    });
    super.initState();
  }

  @override
  void dispose() {
    _timer?.cancel();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    bool isMobile = MediaQuery.of(context).isMobile;

    return Column(
      children: <Widget>[
        const Spacing(
          direction: SpacingDirection.vertical,
          mobile: 50,
        ),
        if (isMobile) ...<Widget>[
          const _DevelopersTitle(),
          const Spacing(
            direction: SpacingDirection.vertical,
            mobile: 70,
          ),
        ],
        Stack(
          clipBehavior: Clip.none,
          children: <Widget>[
            const Positioned(
              top: 120,
              child: ScaleImage(
                path: KaloImages.developersWave,
              ),
            ),
            Positioned(
              top: 340,
              left: 0,
              right: 0,
              child: SizedBox(
                height: 60,
                child: ShaderMask(
                  blendMode: BlendMode.srcATop,
                  shaderCallback: (Rect bounds) => LinearGradient(
                    colors: <Color>[
                      const Color(0xFF005AE4).withOpacity(0.8),
                      Colors.grey.withOpacity(0.5),
                    ],
                    begin: Alignment.centerLeft,
                    end: Alignment.centerRight,
                  ).createShader(
                    Rect.fromLTWH(0, 0, bounds.width, bounds.height),
                  ),
                  child: ListView(
                    scrollDirection: Axis.horizontal,
                    controller: _scrollController,
                    children: List<Widget>.generate(
                      10,
                      (int index) => const Padding(
                        padding: EdgeInsets.only(right: 70),
                        child: ScaleImage(
                          path: KaloImages.technologies,
                          heightWeb: 72,
                          heightTablet: 41,
                          heightMobile: 40,
                        ),
                      ),
                    ),
                  ),
                ),
              ),
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: <Widget>[
                const ScaleImage(
                  path: KaloImages.phone,
                  heightWeb: 480,
                  heightTablet: 480,
                  heightMobile: 370,
                ),
                if (!isMobile) const _DevelopersTitle(),
              ],
            ),
          ],
        ),
      ],
    );
  }
}

class _DevelopersTitle extends StatelessWidget {
  const _DevelopersTitle();

  @override
  Widget build(BuildContext context) => ShaderMask(
        blendMode: BlendMode.srcIn,
        shaderCallback: (Rect bounds) => const LinearGradient(
          colors: <Color>[Color(0xFF00FFA3), Color(0xFF005AE4)],
          stops: <double>[-0.3, 1],
          begin: Alignment.topLeft,
          end: Alignment.bottomRight,
        ).createShader(
          Rect.fromLTWH(0, 0, bounds.width, bounds.height),
        ),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.end,
          children: <Widget>[
            const SizedBox(height: 80),
            ScaleText(
              text: 'developers.more_5000'.tr(),
              textStyle: KaloTheme.textStyle.copyWith(),
              fontWeight: FontWeight.w800,
              webFontSize: 160,
              tabletFontSize: 70,
              mobileFontSize: 107,
              textHeightBehavior: const TextHeightBehavior(
                applyHeightToLastDescent: false,
                applyHeightToFirstAscent: false,
              ),
            ),
            ScaleText(
              text: 'developers.developers_in_our_community'.tr(),
              webFontSize: 24,
              tabletFontSize: 11,
              mobileFontSize: 16,
              textStyle: KaloTheme.textStyle.copyWith(
                height: 0.1,
              ),
              fontWeight: FontWeight.w800,
            ),
          ],
        ),
      );
}
