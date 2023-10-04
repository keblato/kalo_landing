part of '../screens.dart';

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
  Widget build(BuildContext context) => Padding(
        padding: const EdgeInsets.only(bottom: 140),
        child: Stack(
          clipBehavior: Clip.none,
          children: <Widget>[
            Positioned(
              top: 120,
              child: Image.asset(KaloImages.developersWave),
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
                      (int index) => Padding(
                        padding: const EdgeInsets.only(right: 70),
                        child: Image.asset(KaloImages.technologies),
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
                Image.asset(KaloImages.phone, height: 480),
                ShaderMask(
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
                      Text(
                        '+5000',
                        style: KaloTheme.textStyle.copyWith(
                          fontSize: 120,
                          fontWeight: FontWeight.w800,
                        ),
                        textHeightBehavior: const TextHeightBehavior(
                          applyHeightToLastDescent: false,
                          applyHeightToFirstAscent: false,
                        ),
                      ),
                      Text(
                        'Desarrolladores en nuestra comunidad',
                        style: KaloTheme.textStyle.copyWith(
                          fontSize: 18,
                          fontWeight: FontWeight.w800,
                          height: 0.1,
                        ),
                      ),
                    ],
                  ),
                ),
              ],
            ),
          ],
        ),
      );
}
