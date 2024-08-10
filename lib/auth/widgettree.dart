

import 'package:flutter/material.dart';
import 'package:habit/auth/auth.dart';
import 'package:habit/auth/login.dart';
import 'package:habit/screens/home.dart';


class WidgetTREEE extends StatefulWidget {
  const WidgetTREEE({super.key});

  @override
  State<WidgetTREEE> createState() => _WidgetTREEEState();
}

class _WidgetTREEEState extends State<WidgetTREEE> {
  @override
  Widget build(BuildContext context) {
    return StreamBuilder(
      stream: Auth().authStateChanges, 
      builder: ((context, snapshot) {
        if (snapshot.hasData){
          return const Home();
        } else {
          return const Login();
        }
      }));
  }
}