import 'package:flutter/material.dart';

import '../models/about.dart';

class CardSkills extends StatelessWidget {
  final About aboutMeData;

  const CardSkills({
    Key? key,
    required this.aboutMeData,
  }) : super(key: key);


  @override
  Widget build(BuildContext context) {
    return Container(
      height: 90,
      padding: const EdgeInsets.symmetric(vertical: 5),
      child: ListView.builder(
        scrollDirection: Axis.horizontal,
        physics: const BouncingScrollPhysics(),
        itemCount: aboutMeData.skills.length,
        itemBuilder: (context, index) {
          return Container(
            width: 70.0,
            margin: const EdgeInsets.only(right: 10),
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(20),
              color: Theme.of(context).cardTheme.color,
            ),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                const FlutterLogo(size: 40.0),
                const SizedBox(height: 5.0),
                Text(
                  aboutMeData.skills.keys.elementAt(index),
                  style: Theme.of(context)
                      .textTheme
                      .headline2!
                      .copyWith(fontSize: 8.5),
                ),
              ],
            ),
          );
        },
      ),
    );
  }
}
