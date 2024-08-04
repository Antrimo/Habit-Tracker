import 'package:flutter/material.dart';
import 'package:habit/screens/home.dart';
import 'package:habit/theme/theme_provider.dart';
import 'package:provider/provider.dart';

void main() {
  runApp(
    ChangeNotifierProvider(create: (context) => ThemeProvider(),
      child: const MyApp(),
    ),
  );
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Habit Tracker',
  
      home: const Home(),
      theme: Provider.of<ThemeProvider>(context).themeData,
    );
  }
}