import 'package:flutter/material.dart';
import 'package:flutter_lovers/landing_page.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:flutter_lovers/locator.dart';
import 'package:flutter_lovers/sign_in_page.dart';
import 'package:flutter_lovers/viewmodel/user_view_model.dart';
import 'package:provider/provider.dart';
import 'firebase_options.dart';

void main() async {
  setupLocator();
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp(
    options: DefaultFirebaseOptions.currentPlatform,
  );
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
      home: ChangeNotifierProvider(
        child: const LandingPage(),
        create: (context) => UserViewModel(),
      ),
    );
  }
}
