import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import 'bloc/cubit/cubit/apptheme_cubit.dart';
import 'home_screen.dart';
import 'second_screen.dart';

abstract class AppRouter {
  static const kSplashscreen = '/';
  static const kSecondScreen = '/secondScreen';
  static const kHomeView = '/HomeView';

//automatically recalled when we use Navigator in our screen
  static Route<dynamic>? onGenerateRoutes(RouteSettings route) {
    String routeName = route.name!;

    //! provide the nedded bloc providers here
    switch (routeName) {
      case kSecondScreen:
        return MaterialPageRoute(builder: (context) => const SecondScreen());
      case kHomeView:
        return MaterialPageRoute(
          builder: (context) => BlocProvider<AppthemeCubit>(
            create: (context) => AppthemeCubit(),
            child: const HomeView(),
          ),
        );
    }
    return null;
  }
}
