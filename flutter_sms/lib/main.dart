import 'package:flutter/material.dart';

import 'package:flutter_sms/envia_sms/envia_sms.dart';
import 'package:url_launcher/url_launcher.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter SMS',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: const EnviaSms(),
    );
  }
}
