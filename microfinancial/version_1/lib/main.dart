import 'package:flutter/material.dart';
import 'package:version_1/common/color_extension.dart';
// import 'package:version_1/view/login/welcome_view.dart';
import 'package:version_1/view/maintab/maintab_view.dart';


void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    // ignore: prefer_const_constructors
    return  MaterialApp(
      title: 'MicroFinancial',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        fontFamily: "Inter",
        colorScheme: ColorScheme.fromSeed(
          seedColor: TColor.primary,
          background: TColor.gray80,
          primary: TColor.primary,
          primaryContainer: TColor.gray80,
          secondary: TColor.secondary,
        ),
        useMaterial3: false,
      ),
      home: MainTabView(),
    );
  }
}