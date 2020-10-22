import 'package:flutter/material.dart';
import 'package:playground/utils/routing_helper.dart';

class App extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      themeMode: ThemeMode.dark,
      darkTheme: ThemeData.dark(),
      routes: RoutingHelper.routes,
      initialRoute: '/home',
    );
  }
}
