part of kalo_enums;

enum ServicesCardEnum {
  feature1(
    image: KaloImages.features1,
    title: 'services.build_teams',
    height: 250,
  ),
  feature2(
    image: KaloImages.features2,
    title: 'services.project_manager_keeps_you_informed',
    height: 200,
  ),
  feature3(
    image: KaloImages.features3,
    title: 'services.guarantees_you_deserve',
    height: 150,
  );

  const ServicesCardEnum({
    required this.image,
    required this.title,
    required this.height,
  });
  final String image;
  final String title;
  final double height;
}
