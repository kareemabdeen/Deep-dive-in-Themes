import 'package:flutter/material.dart';

import 'core/Global/themes/theme_data/theme_data_light.dart';
import 'home_screen.dart';
import 'second_screen.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Flutter Demo',
      routes: {
        '/secondScreen': (context) => const SecondScreen(),
      },
      theme: getTLightthemeData(),
      home: const HomeView(),
    );
  }
}
