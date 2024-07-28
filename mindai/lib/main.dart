import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:mindai/screens/signUpSignInScreen/SignInScreen/SignInScreen.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      title: 'Mind Aİ',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
        useMaterial3: true,
      ),
      home: MainCollector(),
    );
  }
}

class MainCollector extends StatefulWidget {
  const MainCollector({super.key});

  @override
  State<MainCollector> createState() => _MainCollectorState();
}

class _MainCollectorState extends State<MainCollector> {
  @override
  Widget build(BuildContext context) {
    return Signinscreen();
  }
}
