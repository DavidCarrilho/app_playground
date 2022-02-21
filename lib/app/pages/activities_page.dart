import 'package:flutter/material.dart';
import 'package:url_launcher/url_launcher.dart';

import '../core/core.dart';
import '../models/models.dart';

class ActivitiesPage extends StatelessWidget {
  ActivitiesPage({Key? key}) : super(key: key);

  String getIconType(ActivityTypeEnum type) {
    if (type == ActivityTypeEnum.animatios) {
      return ImagesPaths.iconRunning;
    } else if (type == ActivityTypeEnum.mockup) {
      return ImagesPaths.iconGlasses;
    } else {
      return ImagesPaths.iconToys;
    }
  }

  final activities = [
    Activity(
      type: ActivityTypeEnum.mockup,
      description: 'Desafio de leitura de mockups do Tinder e do Under Contrl',
      gitUrl: 'https://github.com/DavidCarrilho/mockup_challenge',
      exercises: [
        Exercise(
          title: 'Tinder',
          widget: const SizedBox(),
        ),
        Exercise(
          title: 'Under Control',
          widget: const SizedBox(),
        ),
      ],
    ),
    Activity(
      type: ActivityTypeEnum.animatios,
      description: 'Criação de animações implícitas e controladas',
      gitUrl: 'https://github.com/DavidCarrilho/app_implied_animations',
      exercises: [
        Exercise(title: 'Animação Implícita', widget: const SizedBox()),
      ],
    ),
  ];

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      physics: const BouncingScrollPhysics(),
      itemCount: activities.length,
      itemBuilder: (context, index) {
        return Container(
          height: 175,
          padding: const EdgeInsets.all(10),
          margin: const EdgeInsets.symmetric(horizontal: 15, vertical: 7.5),
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(20),
            color: Theme.of(context).cardTheme.color,
          ),
          child: Column(
            children: [
              Row(
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  CircleAvatar(
                    radius: 17,
                    child: ImageIcon(
                      AssetImage(
                        getIconType(activities[index].type),
                      ),
                      color: Theme.of(context).iconTheme.color,
                    ),
                    backgroundColor: Theme.of(context).primaryColor,
                  ),
                  const SizedBox(width: 10),
                  Text(
                    ActivityHelper.getTitle(activities[index].type),
                    style: Theme.of(context).textTheme.headline2,
                  ),
                  const Spacer(),
                  Text(
                    'Exercícios:',
                    style: Theme.of(context).textTheme.bodyText1,
                  ),
                  const SizedBox(width: 8.0),
                  Text(
                    '${activities[index].exercises.length}',
                    style: Theme.of(context)
                        .textTheme
                        .headline1!
                        .copyWith(fontSize: 12),
                  )
                ],
              ),
              Expanded(
                child: Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 4.0),
                  child: Align(
                    alignment: Alignment.centerLeft,
                    child: Text(
                      activities[index].description,
                      style: Theme.of(context).textTheme.bodyText1,
                    ),
                  ),
                ),
              ),
              Row(
                children: [
                  ImageIcon(
                    AssetImage(ImagesPaths.iconGithub),
                    size: 15.0,
                    color: Theme.of(context).primaryIconTheme.color,
                  ),
                  TextButton(
                    onPressed: () async {
                      await launch(
                        activities[index].gitUrl,
                        forceWebView: true,
                      );
                    },
                    child: Text(
                      'Acessar código fonte',
                      style: Theme.of(context).textTheme.bodyText2,
                    ),
                  ),
                  const Spacer(),
                  ElevatedButton(
                    style: ElevatedButton.styleFrom(
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(25.0),
                      ),
                    ),
                    child: Padding(
                      padding: const EdgeInsets.symmetric(horizontal: 10),
                      child: Text(
                        'Ver mais',
                        style: Theme.of(context)
                            .textTheme
                            .headline1!
                            .copyWith(fontSize: 10),
                      ),
                    ),
                    onPressed: () => Navigator.of(context).pushNamed(
                      '/exercises',
                      arguments: activities[index].exercises,
                    ),
                  )
                ],
              ),
            ],
          ),
        );
      },
    );
  }
}
