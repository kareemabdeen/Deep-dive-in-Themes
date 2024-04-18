import 'package:flutter/material.dart';

class HomeView extends StatelessWidget {
  const HomeView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Theme Switcher'),
        actions: const [
          // Switch(
          //   value: ,
          //   onChanged: BlocProvider.of<AppthemeCubit>(context).switchCurrentTheme(currentTheme: getTLightthemeData()),
          // ),
        ],
      ),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Center(
            child: TextButton(
              onPressed: () {
                Navigator.pushNamed(context, '/secondScreen');
              },
              child: const Text('Light Theme '),
            ),
          ),
        ],
      ),
    );
  }
}
