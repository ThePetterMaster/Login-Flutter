import 'package:app/pages/login_page.dart';
import 'package:app/pages/home_page.dart';
import 'package:app/pages/splash_page.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        title: 'Flutter Login',
        theme: ThemeData(
          primarySwatch: Colors.green,
        ),
        initialRoute: '/splash',
        routes: {
          '/splash': (_) => const SplashPage(),
          '/login': (_) => LoginPage(),
          '/home': (_) => HomePage(),
        });
  }
}
