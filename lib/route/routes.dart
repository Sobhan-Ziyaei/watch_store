import 'package:flutter/material.dart';
import 'package:watch_store/route/names.dart';
import 'package:watch_store/ui/screens/get_otp_screen.dart';
import 'package:watch_store/ui/screens/register_screen.dart';
import 'package:watch_store/ui/screens/send_otp_screen.dart';

Map<String, Widget Function(BuildContext)> routes = {
  ScreenNames.root: (context) => SendOtpScreen(),
  ScreenNames.getOtpScreen: (context) => GetOtpScreen(),
  ScreenNames.registerScreen: (context) => RegisterScreen(),
};
