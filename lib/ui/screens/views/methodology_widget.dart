part of com.kalo.landing.views;

class MethodologyWidget extends StatelessWidget {
  const MethodologyWidget({super.key});

  @override
  Widget build(BuildContext context) {
    bool isMobile = MediaQuery.of(context).isMobile;
    bool isTablet = MediaQuery.of(context).isTablet;
    return Stack(
      children: <Widget>[
        Positioned(
          right: -50,
          top: 100,
          height: 200,
          width: isMobile ? 50 : 100,
          child: const DecoratedBox(
            decoration: BoxDecoration(
              shape: BoxShape.circle,
              boxShadow: <BoxShadow>[
                BoxShadow(
                  color: Color.fromARGB(91, 46, 154, 255),
                  blurRadius: 500,
                  spreadRadius: 80,
                ),
              ],
            ),
          ),
        ),
        Column(
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
        ),
        Positioned(
          left: -50,
          bottom: 100,
          height: 200,
          width: isMobile ? 50 : 100,
          child: const DecoratedBox(
            decoration: BoxDecoration(
              shape: BoxShape.circle,
              boxShadow: <BoxShadow>[
                BoxShadow(
                  color: Color.fromARGB(91, 46, 154, 255),
                  blurRadius: 500,
                  spreadRadius: 80,
                ),
              ],
            ),
          ),
        ),
      ],
    );
  }
}
