import 'package:flutter/material.dart';
import 'package:chucker_flutter/chucker_flutter.dart';
import 'screens/main_screen.dart';
import 'di/injection.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await setupInjection();
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Texnomart Demo',
      debugShowCheckedModeBanner: false,
      navigatorKey: ChuckerFlutter.navigatorKey,
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: const Color(0xFFFFC107)),
        scaffoldBackgroundColor: Colors.white,
        useMaterial3: true,
        appBarTheme: const AppBarTheme(
          backgroundColor: Color(0xFFFFC107),
          elevation: 0,
        ),
      ),
      home: const MainScreen(),
    );
  }
}
