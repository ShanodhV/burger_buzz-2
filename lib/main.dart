import 'package:burger_buzz/pages/Home.dart';
import 'package:burger_buzz/pages/bottomnav.dart';
import 'package:burger_buzz/pages/login.dart';
import 'package:burger_buzz/pages/onboard.dart';
import 'package:burger_buzz/pages/signin_screen.dart';
import 'package:burger_buzz/pages/signup.dart';
import 'package:flutter/material.dart';
import 'package:firebase_core/firebase_core.dart';
import 'firebase_options.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();

  // Initialize Firebase
  await Firebase.initializeApp(
    options: DefaultFirebaseOptions.currentPlatform,
  );
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Flutter Demo',
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
        useMaterial3: true,
      ),
      home: LogIn(),
      routes: {
        '/admin': (context) => const Home(),
        '/customer': (context) => const Home(),
      },
    );
  }
}
