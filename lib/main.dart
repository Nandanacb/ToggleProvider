import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:scroll/toggleScreen.dart';
import 'package:scroll/toggleprovider.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return ChangeNotifierProvider(
      create: (context) => Toggleprovider(),
      child: MaterialApp(
        debugShowCheckedModeBanner: false,
        home: Togglescreen(),
      ),
    );
  }
}
      