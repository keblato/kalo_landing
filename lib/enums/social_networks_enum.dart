part of kalo_enums;

enum SocialNetworksEnum {
  instagram(image: KaloIcons.instagram, title: '@kalo.co_', link: ''),
  linkedin(image: KaloIcons.linkedin, title: '@kalo.com.co', link: ''),
  tiktok(image: KaloIcons.tiktok, title: '@kalo.com.co', link: '');

  const SocialNetworksEnum({
    required this.image,
    required this.title,
    required this.link,
  });

  final String image;
  final String title;
  final String link;
}
