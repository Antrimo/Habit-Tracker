import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:habit/theme/theme_provider.dart';
import 'package:provider/provider.dart';

class Home extends StatelessWidget {
  const Home({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Center(child: Text('Habit Tracker')),
      ),
      body: const Center(
        child: Text('Habit Tracker App Persist Ventures'),
        
      ),
      drawer: Drawer(
        child: CupertinoSwitch(
          value: Provider.of<ThemeProvider>(context).isDarkMode,
          onChanged: (value) {
            Provider.of<ThemeProvider>(context,listen: false).toggleTheme();
          },
        ),
    ),
    );
  }
}