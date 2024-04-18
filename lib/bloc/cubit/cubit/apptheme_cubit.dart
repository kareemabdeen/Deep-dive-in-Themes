import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../../../core/Global/themes/theme_data/theme_data_dark.dart';
import '../../../core/Global/themes/theme_data/theme_data_light.dart';

part 'apptheme_state.dart';

class AppthemeCubit extends Cubit<AppthemeState> {
  AppthemeCubit() : super(AppthemeInitial());
  late ThemeData currenttheme;

  void switchCurrentTheme({required ThemeData currentTheme}) {
    if (currenttheme == getDarkThemeData()) {
      currenttheme = getTLightthemeData();
    } else {
      currenttheme = getDarkThemeData();
    }
    emit(ThemeToggled(theme: currenttheme));
    //* store and caching the leatest theme user have choosing it using sharedPrefrences
  }
}



