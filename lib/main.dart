import 'package:flutter/material.dart';
import 'package:watch_store/route/names.dart';
import 'package:watch_store/route/routes.dart';
import 'package:watch_store/ui/components/theme.dart';

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
      initialRoute: ScreenNames.root,
      routes: routes,
    );
  }
}
