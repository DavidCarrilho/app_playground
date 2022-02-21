import 'package:flutter/material.dart';

import '../core/core.dart';

class CustomAppBar extends StatelessWidget implements PreferredSizeWidget {
  final bool isExercises;
  final List<String> titles;
  final int _selectedIndex;
  final Function() toogleTheme;

  const CustomAppBar({
    Key? key,
    this.isExercises = false,
    required this.titles,
    required int selectedIndex,
    required this.toogleTheme,
  })  : _selectedIndex = selectedIndex,
        super(key: key);

  @override
  Size get preferredSize => const Size.fromHeight(70.0);
  @override
  Widget build(BuildContext context) {
    return PreferredSize(
      preferredSize: preferredSize,
      child: SafeArea(
        child: Container(
          padding: const EdgeInsets.symmetric(
            horizontal: 14.0,
          ),
          child: Row(
            children: [
              isExercises
                  ? IconButton(
                      icon: const Icon(Icons.arrow_back_ios),
                      color: Colors.white,
                      onPressed: () => Navigator.of(context).pop())
                  : Image.asset(
                      ImagesPaths.logo,
                      height: 40.0,
                    ),
              const SizedBox(width: 10.0),
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text(
                    titles[_selectedIndex],
                    style: Theme.of(context).textTheme.headline1,
                  ),
                  Text(
                    'Flutterando Masterclass',
                    style: Theme.of(context)
                        .textTheme
                        .headline1!
                        .copyWith(fontSize: 12.0),
                  ),
                ],
              ),
              Expanded(
                child: Align(
                  alignment: Alignment.centerRight,
                  child: IconButton(
                    icon: ImageIcon(
                      Theme.of(context).backgroundColor ==
                              const Color(0xFFD6DFE4)
                          ? AssetImage(ImagesPaths.iconMoonDark)
                          : AssetImage(ImagesPaths.iconMoonLight),
                      size: 25.0,
                      color: Theme.of(context).primaryIconTheme.color,
                    ),
                    onPressed: toogleTheme,
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
