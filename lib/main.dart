// import 'package:firebase_core/firebase_core.dart';
// import 'package:flutter/material.dart';
// import 'package:kontak4/pages/landing.dart';
// import 'package:firebase_auth/firebase_auth.dart';

// import 'package:provider/provider.dart';
// // import 'package:youtube_ui/pages/home_page.dart';
// // import 'package:youtube_ui/pages/landing.dart';

// void main() async {
//   WidgetsFlutterBinding.ensureInitialized();
//   await Firebase.initializeApp();
//   runApp(MaterialApp(
//     // theme: ThemeData(),
//     debugShowCheckedModeBanner: false,
//     home: LandingPage(),
//   ));
// }

import 'package:flutter/material.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:kontak4/new/page/home_page.dart';
import 'package:provider/provider.dart';
import 'google/Widget_tree.dart';

Future<void> main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp();
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MultiProvider(
      providers: [
        StreamProvider.value(value: FirebaseAuth.instance.authStateChanges()),
      ],
      child: MaterialApp(
        debugShowCheckedModeBanner: false,
        home: HomePage(),
      ),
    );
  }
}
