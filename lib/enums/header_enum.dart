part of kalo_enums;

enum HeaderEnum {
  services(title: 'header.menu_options.services'),
  enterprise(title: 'header.menu_options.enterprise'),
  ourProcess(title: 'header.menu_options.our_process'),
  community(title: 'header.menu_options.community');

  const HeaderEnum({
    required this.title,
  });

  final String title;
}
