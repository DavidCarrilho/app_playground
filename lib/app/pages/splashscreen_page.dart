import 'package:flutter/material.dart';

import '../core/const.dart';
import '../core/image_paths.dart';

class SplashScreenPage extends StatefulWidget {
  const SplashScreenPage({Key? key}) : super(key: key);

  @override
  State<SplashScreenPage> createState() => _SplashScreenPageState();
}

class _SplashScreenPageState extends State<SplashScreenPage> {

  @override
  void initState() {
    super.initState();
    Future.delayed(const Duration(seconds: splashTime), nextPage);
  }

  void nextPage() {
    Navigator.of(context).pushNamedAndRemoveUntil('/home', (route) => false);
  }

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Image.asset(
        ImagesPaths.masterClassLogo,
        height: 60.0,
      ),
    );
  }
}