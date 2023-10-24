part of com.kalo.landing.views;

class FooterWidget extends StatelessWidget {
  const FooterWidget({super.key});

  @override
  Widget build(BuildContext context) {
    bool isMobile = MediaQuery.of(context).isMobile;

    return Container(
      padding: const EdgeInsets.only(top: 50, bottom: 20),
      decoration: const BoxDecoration(
        gradient: LinearGradient(
          colors: <Color>[Color(0xFF0C0A3E), Color(0xff0442b3)],
          begin: Alignment.topCenter,
          end: Alignment.bottomCenter,
        ),
      ),
      child: isMobile
          ? Column(
              children: <Widget>[
                Image.asset(KaloIcons.logoWhite, width: 150),
                const Spacing(
                  direction: SpacingDirection.vertical,
                  mobile: 50,
                ),
                ...FooterEnum.values.map(
                  (FooterEnum value) => FooterActions(
                    title: value.title,
                    items: value.item,
                  ),
                ),
              ],
            )
          : Row(
              crossAxisAlignment: CrossAxisAlignment.start,
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: <Widget>[
                Image.asset(KaloIcons.logoWhite, width: 150),
                ...FooterEnum.values.map(
                  (FooterEnum value) => FooterActions(
                    title: value.title,
                    items: value.item,
                  ),
                ),

                // FooterActions(
                //   title: 'footer.enterprise'.tr(),
                //   items: <String>[
                //     'footer.make_an_appointment'.tr(),
                //     'footer.start_projects'.tr(),
                //     'footer.contract_developers'.tr(),
                //   ],
                // ),
                // FooterActions(
                //   title: 'footer.developers'.tr(),
                //   items: <String>[
                //     'footer.work_with_us'.tr(),
                //   ],
                // ),
                // FooterActions(
                //   title: 'footer.company'.tr(),
                //   items: <String>[
                //     'footer.about_us'.tr(),
                //     'footer.community'.tr(),
                //     'footer.channels'.tr(),
                //   ],
                // ),
                // FooterActions(
                //   title: 'footer.contact'.tr(),
                //   items: <String>[
                //     'footer.contact_us'.tr(),
                //     'footer.customer_service'.tr(),
                //   ],
                // ),
              ],
            ),
    );
  }
}

class FooterActions extends StatelessWidget {
  const FooterActions({
    required this.title,
    required this.items,
    super.key,
  });

  final String title;
  final List<(String item, String link)> items;

  @override
  Widget build(BuildContext context) {
    bool isMobile = MediaQuery.of(context).isMobile;

    return Column(
      crossAxisAlignment:
          isMobile ? CrossAxisAlignment.center : CrossAxisAlignment.start,
      children: <Widget>[
        Text(
          title.tr(),
          style: KaloTheme.textStyle.copyWith(
            fontSize: 18,
            fontWeight: FontWeight.w600,
            color: Colors.white,
          ),
        ),
        const SizedBox(height: 12),
        ...items.map(
          ((String, String) item) => GestureDetector(
            onTap: () async {
              Uri url = Uri.parse(
                item.$2,
              );
              await launchUrl(url);
            },
            child: Padding(
              padding: const EdgeInsets.only(bottom: 12),
              child: Text(
                item.$1.tr(),
                style: KaloTheme.textStyle.copyWith(
                  fontSize: 12,
                  fontWeight: FontWeight.w300,
                  color: Colors.white,
                ),
              ),
            ),
          ),
        ),
        const Spacing(
          direction: SpacingDirection.vertical,
          mobile: 30,
        ),
      ],
    );
  }
}
