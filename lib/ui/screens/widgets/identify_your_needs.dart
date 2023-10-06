part of '../screens.dart';

class IdentifyYourNeeds extends StatelessWidget {
  const IdentifyYourNeeds({super.key});

  @override
  Widget build(BuildContext context) => Stack(
        clipBehavior: Clip.none,
        children: <Widget>[
          const Positioned(
            right: -250,
            top: -200,
            height: 300,
            width: 300,
            child: DecoratedBox(
              decoration: BoxDecoration(
                shape: BoxShape.circle,
                boxShadow: <BoxShadow>[
                  BoxShadow(
                    color: Color(0xFF2E9BFF),
                    blurRadius: 500,
                    spreadRadius: 80,
                  ),
                ],
              ),
            ),
          ),
          const Positioned(
            left: -250,
            top: -100,
            height: 300,
            width: 300,
            child: DecoratedBox(
              decoration: BoxDecoration(
                shape: BoxShape.circle,
                boxShadow: <BoxShadow>[
                  BoxShadow(
                    color: Color(0xFF2E9BFF),
                    blurRadius: 500,
                    spreadRadius: 80,
                  ),
                ],
              ),
            ),
          ),
          Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: <Widget>[
              ShaderMask(
                blendMode: BlendMode.srcIn,
                shaderCallback: (Rect bounds) => const LinearGradient(
                  colors: <Color>[Color(0xFF2C91D5), Color(0xFF005AE4)],
                  stops: <double>[0, 0.7],
                  begin: Alignment.topLeft,
                  end: Alignment.bottomRight,
                ).createShader(
                  Rect.fromLTWH(0, 0, bounds.width, bounds.height),
                ),
                child: Text(
                  'identify_your_needs.not_sure_how_move_forward'.tr(),
                  style: KaloTheme.textStyle.copyWith(
                    fontSize: 22,
                    fontWeight: FontWeight.w700,
                  ),
                ),
              ),
              const SizedBox(height: 30, width: double.infinity),
              ShaderMask(
                blendMode: BlendMode.srcIn,
                shaderCallback: (Rect bounds) => const LinearGradient(
                  colors: <Color>[Color(0xFF005AE4), Color(0xFF2C91D5)],
                  stops: <double>[0.4, 1.3],
                  begin: Alignment.topLeft,
                  end: Alignment.bottomRight,
                ).createShader(
                  Rect.fromLTWH(0, 0, bounds.width, bounds.height),
                ),
                child: Text(
                  'identify_your_needs.identify_your_needs'.tr(),
                  style: KaloTheme.textStyle.copyWith(
                    fontSize: 90,
                    fontWeight: FontWeight.w700,
                    height: 1.1,
                  ),
                  textAlign: TextAlign.center,
                ),
              ),
              const SizedBox(height: 30),
              Text(
                'identify_your_needs.we_have_expert_consultants'.tr(),
                style: KaloTheme.acuminTextStyle.copyWith(
                  fontSize: 18,
                  fontWeight: FontWeight.w500,
                ),
                textAlign: TextAlign.center,
              ),
              const SizedBox(height: 70),
              Stack(
                clipBehavior: Clip.none,
                children: <Widget>[
                  Positioned(
                    top: -80,
                    right: -60,
                    child: Image.asset(
                      KaloIcons.arrow,
                      height: 80,
                    ),
                  ),
                  Container(
                    height: 50,
                    width: 320,
                    alignment: Alignment.center,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(10),
                      gradient: const LinearGradient(
                        colors: <Color>[Color(0xFF0323E5), Color(0xFF15ABFF)],
                        stops: <double>[0, 1],
                        begin: Alignment.topCenter,
                        end: Alignment.bottomCenter,
                      ),
                    ),
                    child: Text(
                      'identify_your_needs.book_now'.tr(),
                      style: KaloTheme.textStyle.copyWith(
                        fontSize: 20,
                        fontWeight: FontWeight.w600,
                        color: Colors.white,
                      ),
                    ),
                  ),
                  Positioned(
                    top: -25,
                    left: -34,
                    child: Transform.rotate(
                      angle: -0.5,
                      child: Container(
                        height: 40,
                        width: 80,
                        alignment: Alignment.center,
                        decoration: BoxDecoration(
                          color: Colors.white,
                          borderRadius: BorderRadius.circular(10),
                          boxShadow: <BoxShadow>[
                            BoxShadow(
                              color: Colors.black.withOpacity(0.1),
                              blurRadius: 10,
                              offset: const Offset(0, 10),
                            ),
                          ],
                        ),
                        child: Text(
                          'identify_your_needs.free'.tr(),
                          style: KaloTheme.textStyle.copyWith(
                            fontSize: 18,
                            fontWeight: FontWeight.w600,
                            color: const Color(0xFFDB2020),
                          ),
                        ),
                      ),
                    ),
                  ),
                ],
              ),
            ],
          ),
        ],
      );
}
