part of '../screens.dart';

class HeaderWidget extends StatefulWidget {
  const HeaderWidget({super.key});

  @override
  State<HeaderWidget> createState() => _HeaderWidgetState();
}

class _HeaderWidgetState extends State<HeaderWidget> {
  bool switchVal = false;

  @override
  Widget build(BuildContext context) {
    double lateralPadding = MediaQuery.of(context).size.width * 0.1;
    return Container(
      color: const Color.fromRGBO(0, 32, 181, 1),
      padding: EdgeInsets.only(left: lateralPadding, top: 20),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: <Widget>[
          Row(
            children: <Widget>[
              Image.asset(KaloIcons.logoWhite, width: 100),
              const SizedBox(width: 20),
              ...HeaderEnum.values.map(
                (HeaderEnum header) => Padding(
                  padding: const EdgeInsets.all(14),
                  child: Text(
                    header.title.tr(),
                    style: KaloTheme.acuminTextStyle.copyWith(
                      color: Colors.white,
                      fontSize: 16,
                    ),
                  ),
                ),
              ),
              const Spacer(),
              Flexible(
                child: Row(
                  children: <Widget>[
                    const Icon(Icons.translate),
                    Switch(
                      value: switchVal,
                      activeColor: Colors.red,
                      onChanged: (bool value) {
                        if (value) {
                          context.setLocale(const Locale('en'));
                        } else {
                          context.setLocale(const Locale('es'));
                        }
                        switchVal = value;

                        setState(() {});
                      },
                    ),
                  ],
                ),
              ),
            ],
          ),
          const SizedBox(height: 70),
          Text(
            'header.title'.tr(),
            style: KaloTheme.textStyle.copyWith(
              fontSize: 67,
              fontWeight: FontWeight.w700,
              color: const Color.fromRGBO(255, 255, 255, 1),
              height: 1,
            ),
          ),
          const SizedBox(height: 16),
          Text(
            'header.description'.tr(),
            style: KaloTheme.acuminTextStyle.copyWith(
              fontSize: 16,
              color: Colors.white,
            ),
          ),
          const SizedBox(height: 92),
          Row(
            children: <Widget>[
              ElevatedButton(
                onPressed: () {},
                style: ElevatedButton.styleFrom(
                  padding: const EdgeInsets.symmetric(
                    horizontal: 20,
                    vertical: 15,
                  ),
                  backgroundColor: Colors.white,
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(20),
                  ),
                ),
                child: Text(
                  'header.contract_now'.tr(),
                  style: KaloTheme.acuminTextStyle.copyWith(
                    fontSize: 14,
                    fontWeight: FontWeight.w700,
                    color: KaloTheme.primaryColor,
                  ),
                ),
              ),
              const SizedBox(width: 42),
              Text(
                'header.be_developer'.tr(),
                style: KaloTheme.acuminTextStyle.copyWith(
                  fontSize: 14,
                  fontWeight: FontWeight.w700,
                  color: Colors.white,
                ),
              ),
            ],
          ),
          const SizedBox(height: 180),
        ],
      ),
    );
  }
}
