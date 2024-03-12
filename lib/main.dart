
import 'package:first_app/utils/routes.dart';
import 'package:first_app/utils/routes_name.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      initialRoute: RouteName.splashscreen,
      onGenerateRoute: Routes.generateRoute,
    );
  }
}
