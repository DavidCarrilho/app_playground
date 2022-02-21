import '../core/image_paths.dart';
import '../widgets/card_skills_charts.dart';
import 'package:flutter/material.dart';

import '../models/models.dart';
import '../widgets/widgets.dart';

class AboutPage extends StatelessWidget {
  AboutPage({Key? key}) : super(key: key);

  final aboutMeData = About(
    name: 'Luan David Carrilho',
    description: 'Computer Scientist - Web, Mobile and Games Developer.',
    urlImage:
        'https://avatars.githubusercontent.com/u/20521609?s=400&u=81143357e1bab85f004fd40927ac3a59f010d6f8&v=4',
    skills: {
      'Dart/Flutter': 0.1,
      'Java': 0.1,
      'Go': 0.5,
      'PHP': 0.7,
      'Python': 0.9,
    },
    socialNetworksUrl: [
      ImagesPaths.iconWhatsapp,
      ImagesPaths.iconGithubAlt,
      ImagesPaths.iconInstagram,
      ImagesPaths.iconFacebook,
    ],
  );

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      physics: const BouncingScrollPhysics(),
      child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 10),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            CustomCardAbout(aboutMeData: aboutMeData),
            const SizedBox(height: 8.0),
            Text(
              'Tecnologias Favoritas',
              style: Theme.of(context)
                  .textTheme
                  .headline2!
                  .copyWith(fontSize: 12.0),
            ),
            const SizedBox(height: 8.0),
            CardSkills(aboutMeData: aboutMeData),
            const SizedBox(height: 12.0),
            Text(
              'Habilidades e Competências',
              style: Theme.of(context)
                  .textTheme
                  .headline2!
                  .copyWith(fontSize: 12.0),
            ),
            const SizedBox(height: 8.0),
            CardSkillsCarts(aboutMeData: aboutMeData)
          ],
        ),
      ),
    );
  }
}
