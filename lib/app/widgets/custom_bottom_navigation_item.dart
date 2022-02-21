import 'package:flutter/material.dart';

class CustomBottomNavigationItem extends StatelessWidget {
  final String title;
  final bool isSelected;
  final ImageIcon? imageIcon;
  final Icon? icon;
  final int index;
  final Function(int) onNavigationTap;

  const CustomBottomNavigationItem({
    Key? key,
    required this.title,
    required this.isSelected,
    this.icon,
    this.imageIcon,
    required this.index,
    required this.onNavigationTap,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: GestureDetector(
        onTap: () => onNavigationTap(index),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Visibility(
              visible: isSelected,
              child: Container(
                padding:
                    const EdgeInsets.symmetric(horizontal: 15, vertical: 1),
                decoration: BoxDecoration(
                  color: Theme.of(context).cardTheme.color,
                  borderRadius: BorderRadius.circular(50),
                ),
                child: icon ?? imageIcon ?? const Icon(Icons.android),
              ),
              replacement: Padding(
                padding: const EdgeInsets.symmetric(vertical: 1),
                child: icon ?? imageIcon ?? const Icon(Icons.android),
              ),
            ),
            const SizedBox(height: 3.0),
            Text(
              title,
              style: Theme.of(context)
                  .textTheme
                  .headline2!
                  .copyWith(fontSize: 10.0),
            ),
          ],
        ),
      ),
    );
  }
}
