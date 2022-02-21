import '../core/image_paths.dart';
import 'package:flutter/material.dart';

import 'widgets.dart';

class CustomBottomNavigationBar extends StatelessWidget {
  final int selectedIndex;
  final Function(int) onNavigationTap;

  CustomBottomNavigationBar({
    Key? key,
    required this.onNavigationTap,
    required this.selectedIndex,
  }) : super(key: key);

  final bottomMenuData = [
    {
      'icon': ImagesPaths.iconfeather,
      'text': 'Atividades',
    },
    {
      'icon': ImagesPaths.iconGithub,
      'text': 'Repositórios',
    },
    {
      'icon': Icons.person,
      'text': 'Sobre o dev',
    },
  ];

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 60.0,
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceAround,
        children: [
          CustomBottomNavigationItem(
            title: bottomMenuData[0]['text'].toString(),
            imageIcon: ImageIcon(
              AssetImage(bottomMenuData[0]['icon'].toString()),
              size: 22.5,
              color: Theme.of(context).primaryIconTheme.color,
            ),
            index: 0,
            isSelected: selectedIndex == 0,
            onNavigationTap: onNavigationTap,
          ),
          VerticalDivider(
            color: Theme.of(context).dividerTheme.color,
            indent: 12.5,
            endIndent: 12.5,
          ),
          CustomBottomNavigationItem(
            title: bottomMenuData[1]['text'].toString(),
            imageIcon: ImageIcon(
              AssetImage(bottomMenuData[1]['icon'].toString()),
              size: 22.5,
              color: Theme.of(context).primaryIconTheme.color,
            ),
            index: 1,
            isSelected: selectedIndex == 1,
            onNavigationTap: onNavigationTap,
          ),
          VerticalDivider(
            color: Theme.of(context).dividerTheme.color,
            indent: 12.5,
            endIndent: 12.5,
          ),
          CustomBottomNavigationItem(
            title: bottomMenuData[2]['text'].toString(),
            icon: Icon(
              Icons.person,
              color: Theme.of(context).primaryIconTheme.color,
              size: 27,
            ),
            index: 2,
            isSelected: selectedIndex == 2,
            onNavigationTap: onNavigationTap,
          ),
        ],
      ),
    );
  }
}
