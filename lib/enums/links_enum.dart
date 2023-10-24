part of kalo_enums;

enum LinksEnum {
  schedule(link: 'https://calendly.com/kalomeetings/kalo-meetings-room'),
  beDeveloper(link: 'https://airtable.com/appnVS7bLlG8V3Jld/shrviMElKcQTClgKX'),
  contractNow(link: 'https://airtable.com/appnVS7bLlG8V3Jld/shrCZ7RHhZQdshXtx');

  const LinksEnum({required this.link});
  final String link;
}
