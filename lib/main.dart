import 'package:flutter/material.dart';
import 'package:movies_app/core/utils/app_string.dart';

import 'core/services/srevices_locator.dart';
import 'movies/presentation/screens/movies_screen.dart';

void main() {
  ServicesLocator().init();
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: AppString.appName,
      debugShowCheckedModeBanner: false,
     theme: ThemeData.dark().copyWith(
       scaffoldBackgroundColor: Colors.grey.shade900,
     ),
     home: const MoviesScreen(),
    );
  }
}

