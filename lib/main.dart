import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
//import 'login.dart';
import 'package:tugas4pbl/settingsScreen.dart';
 
void main() {
  runApp(const MyApp());
}
 
class MyApp extends StatelessWidget {
  const MyApp({super.key});
 
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Money Tracker',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: const Color(0xFF3ECFCF)),
        useMaterial3: true,
        textTheme: GoogleFonts.dmSansTextTheme(),
      ),
      home: const SettingsScreen(),
      //home: const LoginScreen(),
    );
  }
}