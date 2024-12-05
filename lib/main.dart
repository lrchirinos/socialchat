import 'package:flutter/material.dart';

import 'package:firebase_analytics/firebase_analytics.dart';

//Pages
import './pages/splash_page.dart';

void main() {
  runApp(
    SplashPage(
      key: UniqueKey(),
      onInitializationComplete: () {
        runApp(
          MainApp(),
        );
      },
    ),
  );
}

class MainApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'SocialChat',
      theme: ThemeData(
        colorScheme: ColorScheme.fromSwatch().copyWith(
          primary: Color.fromRGBO(36, 35, 49, 1.0),
          background: Color.fromRGBO(36, 35, 49, 1.0),
        ),
        scaffoldBackgroundColor: Color.fromRGBO(36, 35, 49, 1.0),
        bottomNavigationBarTheme: BottomNavigationBarThemeData(
          backgroundColor: Color.fromRGBO(30, 29, 37, 1.0),
        ),
      ),
      // home: Scaffold(
      //   appBar: AppBar(
      //     title: Text('SocialChat'),
      //   ),
      // ),
    );
  }
}
