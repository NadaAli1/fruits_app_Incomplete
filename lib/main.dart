import 'package:flutter/material.dart';
import 'features/splash/presentation/splash_view.dart';

main() => runApp(FruitsMarkets());

class FruitsMarkets extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: SplashView(),
    );
  }
}
