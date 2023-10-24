part of kalo_enums;

const String scheduleLink =
    'https://calendly.com/kalomeetings/kalo-meetings-room';
const String beDeveloperLink =
    'https://airtable.com/appnVS7bLlG8V3Jld/shrviMElKcQTClgKX';
const String contractNowLink =
    'https://airtable.com/appnVS7bLlG8V3Jld/shrCZ7RHhZQdshXtx';

enum FooterEnum {
  enterprise(
    title: 'footer.enterprise',
    item: <(String, String)>[
      ('footer.make_an_appointment', scheduleLink),
      ('footer.start_projects', contractNowLink),
      ('footer.contract_developers', contractNowLink),
    ],
  ),
  developers(
    title: 'footer.developers',
    item: <(String, String)>[
      ('footer.work_with_us', beDeveloperLink),
    ],
  );
  // company(
  //   title: 'footer.company',
  //   item: <(String, String)>[
  //     ('footer.about_us', ''),
  //     ('footer.community', ''),
  //     ('footer.channels', ''),
  //   ],
  // ),
  // contact(
  //   title: 'footer.contact',
  //   item: <(String, String)>[
  //     ('footer.contact_us', ''),
  //     ('footer.customer_service', ''),
  //   ],
  // );

  const FooterEnum({
    required this.title,
    required this.item,
  });
  final String title;
  final List<(String, String)> item;
}
