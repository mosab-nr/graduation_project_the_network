import 'package:flutter/material.dart';

import 'navigation/routes_generator.dart';
import 'navigation/routes_name.dart';

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      debugShowCheckedModeBanner: false,
      themeMode: ThemeMode.system,
      onGenerateRoute: RouteGenerator.generateRoute,
      initialRoute: RouteName.splashScreen,
    );
  }
}
