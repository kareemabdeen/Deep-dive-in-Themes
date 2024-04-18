part of 'apptheme_cubit.dart';

@immutable
sealed class AppthemeState {}

final class AppthemeInitial extends AppthemeState {}

final class ThemeToggled extends AppthemeState {
  late final ThemeData theme;

  ThemeToggled({required this.theme});
}
