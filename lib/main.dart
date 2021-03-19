import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
import 'package:kontak4/pages/landing.dart';
// import 'package:youtube_ui/pages/home_page.dart';
// import 'package:youtube_ui/pages/landing.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp();
  runApp(MaterialApp(
    // theme: ThemeData(),
    debugShowCheckedModeBanner: false,
    home: LandingPage(),
  ));
}
