part of com.kalo.landing.views;

const double itemCarrouselWidth = 200;

class PopularServices extends StatefulWidget {
  const PopularServices({super.key});

  @override
  State<PopularServices> createState() => _PopularServicesState();
}

class _PopularServicesState extends State<PopularServices> {
  final ScrollController scrollController = ScrollController();

  @override
  Widget build(BuildContext context) {
    double lateralPadding = MediaQuery.of(context).size.width * 0.1;

    return Padding(
      padding: EdgeInsets.symmetric(horizontal: lateralPadding),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: <Widget>[
          ScaleText(
            text: 'popular_services.popular_services'.tr(),
            textStyle: KaloTheme.textStyle.copyWith(),
            webFontSize: 36,
            tabletFontSize: 18,
            mobileFontSize: 24,
            fontWeight: FontWeight.w700,
            color: KaloTheme.primaryColor,
          ),
          const SizedBox(height: 8),
          ScaleText(
            text: 'popular_services.you_need_we_made'.tr(),
            textStyle: KaloTheme.acuminTextStyle,
            webFontSize: 24,
            tabletFontSize: 12,
            mobileFontSize: 16,
          ),
          const Spacing(
            direction: SpacingDirection.vertical,
            web: 46,
            tablet: 34,
            mobile: 19,
          ),
          ScaleSizedBox(
            heightWeb: 370,
            heightTablet: 200,
            heightMobile: 280,
            child: PopularServiceCarousel(
              numOfCards: 3,
              scrollController: scrollController,
            ),
          ),
        ],
      ),
    );
  }
}

class PopularServiceCarousel extends StatefulWidget {
  const PopularServiceCarousel({
    required this.numOfCards,
    required this.scrollController,
    super.key,
  });
  final ScrollController scrollController;
  final int numOfCards;
  @override
  State<PopularServiceCarousel> createState() => _PopularServiceCarouselState();
}

class _PopularServiceCarouselState extends State<PopularServiceCarousel> {
  ScrollController scrollController = ScrollController();
  int currentIndex = 3;

  @override
  Widget build(BuildContext context) {
    bool isMobile = MediaQuery.of(context).isMobile;

    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: <Widget>[
        if (!isMobile) ...<Widget>[
          GestureDetector(
            onTap: () {
              scrollController.animateTo(
                scrollController.offset - 300 >
                        scrollController.position.minScrollExtent
                    ? scrollController.offset - 300
                    : scrollController.position.minScrollExtent,
                duration: const Duration(milliseconds: 200),
                curve: Curves.slowMiddle,
              );
            },
            child: const Icon(
              Icons.chevron_left,
              color: Colors.deepPurple,
              size: 80,
            ),
          ),
          const Spacing(
            direction: SpacingDirection.horizontal,
            web: 43,
            tablet: 12,
          ),
        ],
        Expanded(
          child: ListView.builder(
            controller: scrollController,
            scrollDirection: Axis.horizontal,
            itemCount: PopularServicesCarouselEnum.values.length,
            itemBuilder: (BuildContext context, int index) {
              PopularServicesCarouselEnum carouselItem =
                  PopularServicesCarouselEnum.values[index];
              return PopularServicesCard(
                imagePath: carouselItem.image,
                title: carouselItem.title.tr(),
              );
            },
          ),
        ),
        if (!isMobile) ...<Widget>[
          const Spacing(
            direction: SpacingDirection.horizontal,
            web: 43,
            tablet: 12,
          ),
          GestureDetector(
            onTap: () {
              scrollController.animateTo(
                scrollController.offset + 300 <
                        scrollController.position.maxScrollExtent
                    ? scrollController.offset + 300
                    : scrollController.position.maxScrollExtent,
                duration: const Duration(milliseconds: 200),
                curve: Curves.slowMiddle,
              );
            },
            child: const Icon(
              Icons.chevron_right,
              color: Colors.deepPurple,
              size: 80,
            ),
          ),
        ],
      ],
    );
  }
}

class PopularServicesCard extends StatelessWidget {
  const PopularServicesCard({
    required this.imagePath,
    required this.title,
    super.key,
  });

  final String imagePath;
  final String title;

  @override
  Widget build(BuildContext context) => ScalePadding(
        paddingWeb: const EdgeInsets.only(right: 40),
        paddingTablet: const EdgeInsets.only(right: 26),
        paddingMobile: const EdgeInsets.only(right: 34),
        child: Stack(
          children: <Widget>[
            ScaleImage(
              path: imagePath,
              fit: BoxFit.cover,
              heightWeb: 360,
              heightTablet: 190,
              heightMobile: 260,
              widthWeb: 258,
              widthTablet: 130,
              widthMobile: 165,
            ),
            ScalePadding(
              paddingWeb: const EdgeInsets.only(
                left: 14,
                bottom: 30,
              ),
              paddingTablet: const EdgeInsets.only(
                left: 14,
                bottom: 25,
              ),
              paddingMobile: const EdgeInsets.only(
                left: 14,
                bottom: 50,
              ),
              child: ScaleSizedBox(
                heightWeb: 360,
                heightTablet: 190,
                heightMobile: 260,
                widthWeb: 258,
                widthTablet: 130,
                widthMobile: 165,
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  mainAxisAlignment: MainAxisAlignment.end,
                  children: <Widget>[
                    ScaleText(
                      isRichText: true,
                      text: title,
                      textStyle: KaloTheme.textStyle.copyWith(
                        height: 1.1,
                      ),
                      webFontSize: 26,
                      tabletFontSize: 15,
                      mobileFontSize: 19,
                      color: Colors.white,
                    ),
                  ],
                ),
              ),
            ),
          ],
        ),
      );
}
