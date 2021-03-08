import 'package:flutter/material.dart';
import 'package:flutter_resources/pages/FreeResources.dart';
import 'package:flutter_resources/pages/HomePage.dart';
import 'package:flutter_resources/pages/PaidResources.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      // darkTheme: ThemeData.dark(),
      // themeMode: ThemeMode.dark,
      debugShowCheckedModeBanner: false,
      routes: {
        // '/':(context)=>HomePage(),
        FreeResources.routeName: (context) => FreeResources(),
        PaidResources.routeName: (context) => PaidResources()
      },
      home: HomePage(),
    );
  }
}
