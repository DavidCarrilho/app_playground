import 'package:flutter/material.dart';

import '../models/about.dart';

class CustomCardAbout extends StatelessWidget {
  final About aboutMeData;

  const CustomCardAbout({
    Key? key,
    required this.aboutMeData,
  }) : super(key: key);


  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.symmetric(
        vertical: 10.0,
        horizontal: 30.0,
      ),
      width: double.infinity,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(20),
        color: Theme.of(context).cardTheme.color,
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          ClipRRect(
            borderRadius: BorderRadius.circular(50),
            child: Image.network(
              aboutMeData.urlImage,
              height: 75,
              width: 75,
              fit: BoxFit.cover,
              filterQuality: FilterQuality.low,
            ),
          ),
          const SizedBox(height: 10),
          Text(
            aboutMeData.name,
            style: Theme.of(context).textTheme.headline2,
          ),
          const SizedBox(height: 10),
          Text(
            aboutMeData.description,
            textAlign: TextAlign.center,
            style:
                Theme.of(context).textTheme.bodyText1!.copyWith(fontSize: 12),
          ),
          const SizedBox(height: 20),
          SizedBox(
            height: 50,
            child: ListView.builder(
              scrollDirection: Axis.horizontal,
              shrinkWrap: true,
              itemCount: 4,
              itemBuilder: (context, index) {
                return Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 10),
                  child: ImageIcon(
                    AssetImage(aboutMeData.socialNetworksUrl[index]),
                    color: Theme.of(context).primaryIconTheme.color,
                    size: 22.5,
                  ),
                );
              },
            ),
          )
        ],
      ),
    );
  }
}
