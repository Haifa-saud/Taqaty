import 'package:flutter/material.dart';
import 'package:hacathon/profile.dart';

import 'Goal.dart';
import 'add_device.dart';
import 'share_Dash.dart';

Future<void> main() async {
  WidgetsFlutterBinding.ensureInitialized();
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(),
      home: Share(),
    );
  }
}
