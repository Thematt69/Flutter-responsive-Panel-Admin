import 'package:admin/constants.dart';
import 'package:admin/controllers/MenuController.dart';
import 'package:admin/screens/main/main_screen.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Flutter Admin Panel',
      themeMode: ThemeMode.dark,
      theme: ThemeData.light().copyWith(
        scaffoldBackgroundColor: lightColor,
        canvasColor: secondaryLightColor,
      ),
      darkTheme: ThemeData.dark().copyWith(
        scaffoldBackgroundColor: darkColor,
        canvasColor: secondaryDarkColor,
      ),
      home: MultiProvider(
        providers: [
          ChangeNotifierProvider(
            create: (context) => MenuController(),
          )
        ],
        child: MainScreen(),
      ),
    );
  }
}
