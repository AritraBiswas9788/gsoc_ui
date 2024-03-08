import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:gsoc_ui/dashboard.dart';

void main() {
  WidgetsFlutterBinding.ensureInitialized();
  SystemChrome.setPreferredOrientations([
    // Lock orientation to landscape
    DeviceOrientation.landscapeRight,
    DeviceOrientation.landscapeLeft,
  ]).then((_) {
    runApp(const MyApp());
  });
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      initialRoute: '/',
      routes: {
        '/': (context) => DashBoard(), // Root route
         // Settings route
      },
      theme: ThemeData(
        scaffoldBackgroundColor: Color(0xFFEEEEEE),
        appBarTheme: AppBarTheme(
          color: Color(0xFF111111),
        ),
      ),
    );
  }
}