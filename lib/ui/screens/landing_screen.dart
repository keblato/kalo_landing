part of 'views.dart';

class LandingScreen extends StatelessWidget {
  const LandingScreen({super.key});

  void changeLanguage(BuildContext context, bool value) {
    if (value) {
      context.setLocale(const Locale('en'));
    } else {
      context.setLocale(const Locale('es'));
    }
  }

  @override
  Widget build(BuildContext context) {
    bool isMobile = MediaQuery.of(context).isMobile;

    return Scaffold(
      body: ListView(
        shrinkWrap: true,
        children: <Widget>[
          const HeaderWidget(),
          const PopularServices(),
          const DontWorryWidget(),
          const ServicesWidget(),
          const MethodologyWidget(),
          const DevelopersWidget(key: Key('developers_widget')),
          const TrustedInUs(),
          const IdentifyYourNeeds(),
          const SizedBox(height: 60),
          const PlatformInConstruction(),
          if (!isMobile) const SizedBox(height: 60),
          const FooterWidget(),
        ],
      ),
    );
  }
}
