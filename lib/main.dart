import 'package:flutter/material.dart';
import 'package:flutter_lovers/sign_in_page.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Flutter Lovers',
      theme: ThemeData(primarySwatch: Colors.purple, useMaterial3: false),
      home: const SignInPage(),
    );
  }
}
