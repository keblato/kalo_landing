part of com.kalo.landing.views;

class HeaderWidget extends StatefulWidget {
  const HeaderWidget({
    super.key,
  });
  @override
  State<HeaderWidget> createState() => _HeaderWidgetState();
}

class _HeaderWidgetState extends State<HeaderWidget> {
  late VideoPlayerController _controller;
  bool isLoading = true;
  double videoContainerRatio = 2;
  bool isOpen = false;
  @override
  void initState() {
    _controller = VideoPlayerController.asset(KaloVideos.headerVideo);

    WidgetsBinding.instance.addPostFrameCallback((_) async {
      await _controller.initialize();
      await _controller.setLooping(true);
      await _controller.play();
      isLoading = false;
      setState(() {});
    });

    _controller.setLooping(true);
    super.initState();
  }

  @override
  void dispose() {
    _controller.dispose();

    super.dispose();
  }

  double getScale() {
    double videoRatio = _controller.value.aspectRatio;

    if (videoRatio < videoContainerRatio) {
      return videoContainerRatio / videoRatio;
    } else {
      return videoRatio / videoContainerRatio;
    }
  }

  @override
  Widget build(BuildContext context) {
    double lateralPadding = MediaQuery.of(context).size.width * 0.1;

    bool isMobile = MediaQuery.of(context).isMobile;
    bool isTablet = MediaQuery.of(context).isTablet;
    return ClipPath(
      clipper: _HeaderBezierClipper(
        isMobile: isMobile,
        isTablet: isTablet,
      ),
      child: Stack(
        children: <Widget>[
          // if (!isLoading)
          //   Transform.scale(
          //     scale: getScale(),
          //     child: AspectRatio(
          //       aspectRatio: videoContainerRatio,
          //       child: VideoPlayer(_controller),
          //     ),
          //   )
          // else
          //   const Center(
          //     child: CircularProgressIndicator(),
          //   ),

          //  SvgPicture.asset(KaloSvg.example, semanticsLabel: 'Acme Logo'),
          Image.asset(
            KaloImages.header,
            fit: BoxFit.cover,
          ),
          DecoratedBox(
            decoration: BoxDecoration(
              image: DecorationImage(
                image: Image.asset(
                  KaloImages.header,
                ).image,
                fit: BoxFit.cover,
              ),
            ),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: <Widget>[
                Padding(
                  padding: EdgeInsets.only(
                    left: lateralPadding,
                    top: 20,
                    right: lateralPadding,
                  ),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: <Widget>[
                      if (isMobile)
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: <Widget>[
                            Image.asset(KaloIcons.logoWhite, width: 98),
                            Padding(
                              padding: EdgeInsets.only(right: lateralPadding),
                              child: GestureDetector(
                                onTap: () {
                                  isOpen = !isOpen;
                                  setState(() {});
                                },
                                child: const Icon(
                                  Icons.menu,
                                  size: 30,
                                  color: Colors.white,
                                ),
                              ),
                            ),
                          ],
                        )
                      else
                        SingleChildScrollView(
                          scrollDirection: Axis.horizontal,
                          controller: ScrollController(),
                          child: Row(
                            children: <Widget>[
                              Image.asset(KaloIcons.logoWhite, width: 98),
                              ...HeaderEnum.values.map(
                                (HeaderEnum header) => Padding(
                                  padding: const EdgeInsets.all(14),
                                  child: ScaleText(
                                    text: header.title.tr(),
                                    textStyle: KaloTheme.acuminTextStyle,
                                    color: Colors.white,
                                    webFontSize: 15,
                                    mobileFontSize: 8.6,
                                    tabletFontSize: 16,
                                  ),
                                ),
                              ),
                            ],
                          ),
                        ),
                    ],
                  ),
                ),
                if (isMobile)
                  Center(
                    child: AnimatedContainer(
                      color: const Color.fromARGB(255, 74, 103, 229),
                      duration: const Duration(milliseconds: 300),
                      height: isOpen ? 200 : 0,
                      width: MediaQuery.of(context).size.width,
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: <Widget>[
                          ...HeaderEnum.values.map(
                            (HeaderEnum header) => Padding(
                              padding: const EdgeInsets.all(14),
                              child: ScaleText(
                                text: header.title.tr(),
                                textStyle: KaloTheme.acuminTextStyle,
                                color: Colors.white,
                                webFontSize: 15,
                                mobileFontSize: 18,
                                tabletFontSize: 16,
                              ),
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
                Padding(
                  padding: EdgeInsets.only(
                    left: lateralPadding,
                    top: 20,
                    right: lateralPadding,
                  ),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: <Widget>[
                      const Spacing(
                        direction: SpacingDirection.vertical,
                        mobile: 130,
                        tablet: 64,
                        web: 110,
                      ),
                      ScaleText(
                        text: 'header.title'.tr(),
                        textStyle: KaloTheme.textStyle,
                        color: Colors.white,
                        webFontSize: 100,
                        tabletFontSize: 58,
                        mobileFontSize: 60,
                        fontWeight: FontWeight.w700,
                        height: 1,
                        textAlign: isMobile ? TextAlign.center : null,
                      ),
                      const Spacing(
                        direction: SpacingDirection.vertical,
                        mobile: 65,
                        tablet: 24,
                        web: 42,
                      ),
                      ScaleText(
                        text: 'header.description'.tr(),
                        textStyle: KaloTheme.acuminTextStyle,
                        color: Colors.white,
                        webFontSize: 24,
                        tabletFontSize: 14,
                        mobileFontSize: 20,
                        textAlign: isMobile ? TextAlign.center : null,
                      ),
                      const Spacing(
                        direction: SpacingDirection.vertical,
                        mobile: 155,
                        tablet: 47,
                        web: 81,
                      ),
                      Row(
                        mainAxisAlignment: isMobile
                            ? MainAxisAlignment.spaceBetween
                            : MainAxisAlignment.start,
                        children: <Widget>[
                          ElevatedButton(
                            onPressed: () async {
                              Uri url = Uri.parse(
                                contractNowLink,
                              );
                              await launchUrl(url);
                            },
                            style: ElevatedButton.styleFrom(
                              padding: const EdgeInsets.symmetric(
                                horizontal: 20,
                                vertical: 20,
                              ),
                              backgroundColor: Colors.white,
                              shape: RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(20),
                              ),
                            ),
                            child: ScaleText(
                              text: 'header.contract_now'.tr(),
                              textStyle: KaloTheme.acuminTextStyle,
                              color: KaloTheme.primaryColor,
                              fontWeight: FontWeight.w700,
                              webFontSize: 15,
                              tabletFontSize: 8.7,
                              mobileFontSize: 13.5,
                            ),
                          ),
                          if (!isMobile)
                            const Spacing(
                              direction: SpacingDirection.horizontal,
                              mobile: 230,
                              tablet: 37,
                              web: 37,
                            ),
                          GestureDetector(
                            onTap: () async {
                              Uri url = Uri.parse(
                                beDeveloperLink,
                              );
                              await launchUrl(url);
                            },
                            child: ScaleText(
                              text: 'header.be_developer'.tr(),
                              textStyle: KaloTheme.acuminTextStyle,
                              color: Colors.white,
                              fontWeight: FontWeight.w700,
                              webFontSize: 15,
                              tabletFontSize: 8.7,
                              mobileFontSize: 13.5,
                            ),
                          ),
                        ],
                      ),
                      const Spacing(
                        direction: SpacingDirection.vertical,
                        mobile: 230,
                        tablet: 100,
                        web: 200,
                      ),
                    ],
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}

class _HeaderBezierClipper extends CustomClipper<Path> {
  _HeaderBezierClipper({
    required this.isMobile,
    required this.isTablet,
  });
  final bool isMobile;
  final bool isTablet;
  @override
  Path getClip(Size size) {
    Path path = Path()..lineTo(0, size.height * 0.9);
    if (isMobile) {
      path
        ..lineTo(size.width * 0.3, size.height * 0.9)
        ..cubicTo(
          size.width * 0.44,
          size.height * 0.9,
          size.width * 0.55,
          size.height * 0.93,
          size.width * 0.7,
          size.height * 0.93,
        )
        ..lineTo(size.width, size.height * 0.93);
    } else {
      path
        ..lineTo(size.width * 0.4, size.height * 0.9)
        ..cubicTo(
          size.width * 0.55,
          size.height * 0.9,
          size.width * 0.55,
          size.height * 0.96,
          size.width * 0.64,
          size.height * 0.96,
        )
        ..lineTo(size.width, size.height * 0.96);
    }

    path
      ..lineTo(size.width, size.height * 0.96)
      ..lineTo(size.width, 0)
      ..close();
    return path;
  }

  @override
  bool shouldReclip(CustomClipper<Path> oldClipper) => false;
}
