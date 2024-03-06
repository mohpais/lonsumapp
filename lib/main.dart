import 'package:flutter/material.dart';
import 'package:lonsum_app/screens/auth/scan_qrcode_screen.dart';
import 'package:lonsum_app/screens/splash_screen.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'LONSUM APP',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        fontFamily: 'Poppins',
        canvasColor: Colors.transparent,
        primarySwatch: Colors.green,
      ),
      home: SplashScreen(),
      // home: ScanQrCodeScreen(),
    );
  }
}
