part of '../screens.dart';

class DontWorryWidget extends StatelessWidget {
  const DontWorryWidget({super.key});

  @override
  Widget build(BuildContext context) {
    double lateralPadding = MediaQuery.of(context).size.width * 0.1;
    return Container(
      height: 340,
      margin: const EdgeInsets.symmetric(vertical: 100),
      padding: EdgeInsets.symmetric(horizontal: lateralPadding * 0.8),
      decoration: const BoxDecoration(
        gradient: LinearGradient(
          begin: Alignment.centerLeft,
          end: Alignment.centerRight,
          colors: <Color>[Color(0xffdff5fc), Color(0x00dff5fc)],
        ),
      ),
      child: Stack(
        clipBehavior: Clip.none,
        children: <Widget>[
          Positioned(
            left: -55,
            top: -72,
            child: Image.asset(
              height: 440,
              width: 440,
              KaloImages.girlWorry,
              fit: BoxFit.fitHeight,
            ),
          ),
          Positioned(
            top: -35,
            left: 340,
            child: ChatBubble(
              child: RichText(
                text: TextSpan(
                  children: <InlineSpan>[
                    TextSpan(
                      text: 'dont_worry.first_message.first'.tr(),
                      style: KaloTheme.textStyle.copyWith(
                        color: Colors.white,
                        fontSize: 15,
                        fontWeight: FontWeight.w500,
                      ),
                    ),
                    TextSpan(
                      text: 'dont_worry.first_message.second'.tr(),
                      style: KaloTheme.textStyle.copyWith(
                        color: Colors.white,
                        fontSize: 15,
                        fontWeight: FontWeight.w600,
                      ),
                    ),
                  ],
                ),
              ),
            ),
          ),
          Positioned(
            top: 60,
            left: 390,
            child: ChatBubble(
              color: KaloTheme.primaryColor,
              width: 260,
              height: 80,
              child: RichText(
                text: TextSpan(
                  children: <InlineSpan>[
                    TextSpan(
                      text: 'dont_worry.second_message.first'.tr(),
                      style: KaloTheme.textStyle.copyWith(
                        color: Colors.white,
                        fontSize: 18,
                        fontWeight: FontWeight.w500,
                      ),
                    ),
                    TextSpan(
                      text: 'dont_worry.second_message.second'.tr(),
                      style: KaloTheme.textStyle.copyWith(
                        color: Colors.white,
                        fontSize: 18,
                        fontWeight: FontWeight.w600,
                      ),
                    ),
                    TextSpan(
                      text: 'dont_worry.second_message.third'.tr(),
                      style: KaloTheme.textStyle.copyWith(
                        color: Colors.white,
                        fontSize: 18,
                        fontWeight: FontWeight.w500,
                      ),
                    ),
                  ],
                ),
              ),
            ),
          ),
          Positioned(
            top: 180,
            left: 370,
            child: ChatBubble(
              borderRadius: const BorderRadius.only(
                topRight: Radius.circular(16),
                bottomRight: Radius.circular(16),
                bottomLeft: Radius.circular(16),
              ),
              child: RichText(
                text: TextSpan(
                  children: <InlineSpan>[
                    TextSpan(
                      text: 'dont_worry.third_message.first'.tr(),
                      style: KaloTheme.textStyle.copyWith(
                        color: Colors.white,
                        fontSize: 15,
                        fontWeight: FontWeight.w600,
                      ),
                    ),
                    TextSpan(
                      text: 'dont_worry.third_message.second'.tr(),
                      style: KaloTheme.textStyle.copyWith(
                        color: Colors.white,
                        fontSize: 15,
                        fontWeight: FontWeight.w500,
                      ),
                    ),
                  ],
                ),
              ),
            ),
          ),
          Positioned(
            right: 72,
            top: 50,
            width: MediaQuery.of(context).size.width * 0.25,
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: <Widget>[
                Text(
                  'dont_worry.title'.tr(),
                  style: KaloTheme.textStyle.copyWith(
                    fontSize: 32,
                    fontWeight: FontWeight.bold,
                    color: KaloTheme.primaryColor,
                    height: 1.2,
                  ),
                ),
                const SizedBox(height: 8),
                Text(
                  'dont_worry.description'.tr(),
                  textAlign: TextAlign.justify,
                  style: KaloTheme.acuminTextStyle.copyWith(
                    fontSize: 18,
                    fontWeight: FontWeight.w300,
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
