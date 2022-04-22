import 'package:flutter/material.dart';
import 'package:medio/routes/routes.dart';
import 'package:medio/routes/route_screen.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Flutter Demo',
      routes: RouterScreens.getRoutes(),
      initialRoute: Routes.home,
    );
  }
}
