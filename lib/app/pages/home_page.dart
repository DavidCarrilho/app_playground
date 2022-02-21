import 'package:flutter/material.dart';

import '../widgets/widgets.dart';
import 'pages.dart';

class HomePage extends StatefulWidget {
  final Function() toogleTheme;
  const HomePage({Key? key, required this.toogleTheme}) : super(key: key);

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  final controllerPageView = PageController(
    initialPage: 0,
  );

  var _selectedIndex = 0;

  final titles = [
    'Atividades',
    'Repositórios',
    'Sobre o dev',
  ];

  final pages = [
    ActivitiesPage(),
    const RepositoriesPage(),
    AboutPage(),
  ];

  void onNavigationTap(int index) {
    _selectedIndex = index;
    setState(() => controllerPageView.jumpToPage(index));
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Theme.of(context).backgroundColor,
      appBar: CustomAppBar(
        toogleTheme: widget.toogleTheme,
        titles: titles,
        selectedIndex: _selectedIndex,
      ),
      body: Column(
        children: [
          Expanded(
            child: PageView(
              physics: const BouncingScrollPhysics(),
              controller: controllerPageView,
              children: pages,
            ),
          ),
          CustomBottomNavigationBar(
            onNavigationTap: onNavigationTap,
            selectedIndex: _selectedIndex,
          ),
        ],
      ),
    );
  }

  @override
  void dispose() {
    super.dispose();
    controllerPageView.dispose();
  }
}
