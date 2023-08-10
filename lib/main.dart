import 'package:flutter/material.dart';
import 'package:watch_store/ui/components/theme.dart';
import 'package:watch_store/ui/screens/get_otp_screen.dart';
import 'package:watch_store/ui/screens/register_screen.dart';
import 'package:watch_store/ui/screens/send_otp_screen.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: lightTheme(),
      home: RegisterScreen(),
    );
  }
}
