import 'package:flutter/material.dart';
import 'package:gif_skill/screens/detail_character/detail_character_screen.dart';
import 'package:gif_skill/screens/main_screen/main_screen.dart';
import 'package:gif_skill/screens/splash_screen/splash_screen.dart';

class AppRoute {
  /// MARK: - Initials;
  static const String splashScreen = '/splash-screen';
  static const String mainScreen = '/main-screen';
  //static const String detailCharacterScreen = '/detail-character-screen';

  static Route<dynamic> generateRoute(RouteSettings settings) {
    switch (settings.name) {
      case splashScreen:
        return MaterialPageRoute(
          builder: (_) => SplashScreen.provider(),
          settings: settings,
        );
      case mainScreen:
        return MaterialPageRoute(
          builder: (_) => MainScreen.provider(),
          settings: settings,
        );
      // case detailCharacterScreen:
      //   return MaterialPageRoute(
      //     builder: (_) => const DetailCharacterScreen(),
      //     settings: settings,
      //   );
      default:
        return _errorRoute();
    }
  }

  static Route<dynamic> _errorRoute() {
    return MaterialPageRoute(builder: (context) {
      return Scaffold(
        appBar: AppBar(
          title: const Text('Error'),
          centerTitle: true,
        ),
        body: const Center(
          child: Text('page_not_found'),
        ),
      );
    });
  }
}
