part of '../screens.dart';

const double itemCarrouselWidth = 200;

class PopularServices extends StatefulWidget {
  const PopularServices({super.key});

  @override
  State<PopularServices> createState() => _PopularServicesState();
}

class _PopularServicesState extends State<PopularServices> {
  final ScrollController scrollController = ScrollController();

  double carrouselPadding = 0;

  double getCarrouselItemPadding(double width) {
    int numberItems = width ~/ itemCarrouselWidth;
    double padding = (width - (numberItems * itemCarrouselWidth)) / numberItems;
    carrouselPadding = padding;
    return padding;
  }

  @override
  Widget build(BuildContext context) {
    double lateralPadding = MediaQuery.of(context).size.width * 0.1;
    return Padding(
      padding: EdgeInsets.symmetric(horizontal: lateralPadding),
      child: Column(
        mainAxisSize: MainAxisSize.min,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: <Widget>[
          Column(
            mainAxisSize: MainAxisSize.min,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: <Widget>[
              Text(
                'Servicios populares',
                style: KaloTheme.textStyle.copyWith(
                  fontSize: 27,
                  fontWeight: FontWeight.w700,
                  color: KaloTheme.primaryColor,
                ),
              ),
              const SizedBox(height: 8),
              Text(
                '¡Tú lo necesitas, nosotros lo hacemos!',
                style: KaloTheme.acuminTextStyle.copyWith(
                  fontSize: 18,
                  fontWeight: FontWeight.w100,
                ),
              ),
            ],
          ),
          const SizedBox(height: 34),
          SizedBox(
            height: 280,
            width: double.infinity,
            child: Stack(
              clipBehavior: Clip.none,
              children: <Widget>[
                Positioned(
                  left: -80,
                  top: 0,
                  bottom: 0,
                  child: IconButton(
                    padding: EdgeInsets.zero,
                    onPressed: () => scrollController.animateTo(
                      scrollController.offset -
                          itemCarrouselWidth -
                          carrouselPadding,
                      duration: const Duration(milliseconds: 500),
                      curve: Curves.easeInOut,
                    ),
                    color: Colors.deepPurple,
                    icon: const Icon(Icons.chevron_left, size: 80),
                  ),
                ),
                LayoutBuilder(
                  builder: (BuildContext context, BoxConstraints constraints) =>
                      ListView.builder(
                    scrollDirection: Axis.horizontal,
                    physics: const NeverScrollableScrollPhysics(),
                    controller: scrollController,
                    itemCount: PopularServicesCard.items.length,
                    itemBuilder: (BuildContext context, int index) =>
                        PopularServicesCard(
                      margin: getCarrouselItemPadding(constraints.maxWidth),
                      imagePath: PopularServicesCard.items[index].$1,
                      title: PopularServicesCard.items[index].$2,
                      subtitle: PopularServicesCard.items[index].$3,
                    ),
                  ),
                ),
                Positioned(
                  right: -80,
                  top: 0,
                  bottom: 0,
                  child: IconButton(
                    padding: EdgeInsets.zero,
                    onPressed: () => scrollController.animateTo(
                      scrollController.offset +
                          itemCarrouselWidth +
                          carrouselPadding,
                      duration: const Duration(milliseconds: 500),
                      curve: Curves.easeInOut,
                    ),
                    color: Colors.deepPurple,
                    icon: const Icon(Icons.chevron_right, size: 80),
                  ),
                ),
              ],
            ),
          ),
          const SizedBox(height: 80),
        ],
      ),
    );
  }
}

class PopularServicesCard extends StatelessWidget {
  const PopularServicesCard({
    required this.margin,
    required this.imagePath,
    required this.title,
    required this.subtitle,
    super.key,
  });

  final double margin;
  final String imagePath;
  final String title;
  final String subtitle;

  @override
  Widget build(BuildContext context) => Container(
        width: itemCarrouselWidth,
        margin: EdgeInsets.only(right: margin / 2, left: margin / 2),
        child: Container(
          padding: const EdgeInsets.only(right: 12),
          child: ClipRRect(
            borderRadius: BorderRadius.circular(12),
            child: Stack(
              children: <Widget>[
                Positioned(
                  top: 0,
                  left: 0,
                  right: 0,
                  bottom: 0,
                  child: Image.asset(imagePath, fit: BoxFit.cover),
                ),
                Positioned(
                  left: 12,
                  bottom: 12,
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: <Widget>[
                      Text(
                        title,
                        style: KaloTheme.textStyle.copyWith(
                          color: Colors.white,
                          fontSize: 16,
                          fontWeight: FontWeight.w600,
                          height: 1.1,
                        ),
                      ),
                      Text(
                        subtitle,
                        style: KaloTheme.textStyle.copyWith(
                          color: Colors.white,
                          fontSize: 20,
                          height: 1.1,
                          fontWeight: FontWeight.w100,
                        ),
                      ),
                    ],
                  ),
                ),
              ],
            ),
          ),
        ),
      );

  static const List<(String path, String title, String subtitle)> items =
      <(String, String, String)>[
    (KaloImages.carrousel0, 'Sitios', 'WEB'),
    (KaloImages.carrousel1, 'Bases de', 'DATOS'),
    (KaloImages.carrousel2, 'Software', 'A MEDIDA'),
    (KaloImages.carrousel3, 'E-commerce', 'PERSONALIZADOS'),
    (KaloImages.carrousel4, 'Aplicaciones', 'MÓVILES'),
    (KaloImages.carrousel5, 'Integración', 'DE SISTEMAS'),
    (KaloImages.carrousel6, 'Consultorías', 'TECNOLÓGICAS'),
    (KaloImages.carrousel7, 'Servicios en', 'NUBE'),
    (KaloImages.carrousel8, 'Prototipados', 'FRONT-END'),
    (KaloImages.carrousel9, 'Mantenimiento', 'DE PÁGINAS'),
    (KaloImages.carrousel10, 'Diseño', 'UI/UX'),
    (KaloImages.carrousel11, 'Desarrollo', 'DE MVP\'S'),
  ];
}
