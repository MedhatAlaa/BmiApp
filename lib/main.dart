import 'package:bmi/bmi_app/provider.dart';
import 'package:bmi/bmi_app/themes.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'bmi_app/home_page.dart';

void main() {
  runApp(
    ChangeNotifierProvider<BmiProvider>(
      create: (BuildContext context)=>BmiProvider(),
      child: const MyApp(),
    ),
  );
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: lightTheme,
      darkTheme: darkTheme,
      themeMode: Provider.of<BmiProvider>(context).tm,
      home: const HomePageBmi(),
    );
  }
}
