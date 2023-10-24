part of com.kalo.landing.views;

class MethodologyWidget extends StatelessWidget {
  const MethodologyWidget({super.key});

  @override
  Widget build(BuildContext context) {
    bool isMobile = MediaQuery.of(context).isMobile;
    bool isTablet = MediaQuery.of(context).isTablet;
    return Column(
      children: <Widget>[
        if (isMobile)
          Image.asset(
            KaloImages.methodologyMobile,
            fit: BoxFit.fitWidth,
          )
        else if (isTablet)
          Image.asset(
            KaloImages.methodologyTablet,
            fit: BoxFit.fitWidth,
          )
        else
          Image.asset(
            KaloImages.methodologyWeb,
            fit: BoxFit.fitWidth,
          ),
      ],
    );
  }
}
