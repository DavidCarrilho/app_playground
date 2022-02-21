import 'package:flutter/material.dart';

import '../models/models.dart';

class CardSkillsCarts extends StatelessWidget {
  final About aboutMeData;

  const CardSkillsCarts({
    Key? key,
    required this.aboutMeData,
  }) : super(key: key);


  @override
  Widget build(BuildContext context) {
    return Container(
      height: 200,
      padding: const EdgeInsets.all(15),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(20),
        color: Theme.of(context).cardTheme.color,
      ),
      child: ListView.builder(
        physics: const NeverScrollableScrollPhysics(),
        itemCount: aboutMeData.skills.length,
        itemBuilder: (context, index) {
          return SizedBox(
            height: 30.0,
            child: Row(
              children: [
                SizedBox(
                  width: 75,
                  child: Text(
                    aboutMeData.skills.keys.elementAt(index),
                    style: Theme.of(context).textTheme.bodyText1,
                  ),
                ),
                const SizedBox(width: 30.0),
                Expanded(
                  child: Stack(
                    children: [
                      Container(
                        height: 7.5,
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(30),
                          color: Theme.of(context).backgroundColor,
                        ),
                      ),
                      Container(
                        height: 7.5,
                        width: 165 * 0.9,
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(30),
                          color: Theme.of(context).primaryColor,
                        ),
                      ),
                    ],
                  ),
                ),
              ],
            ),
          );
        },
      ),
    );
  }
}
