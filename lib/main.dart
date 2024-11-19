import 'package:flutter/material.dart';
import 'screens/home_screen.dart';
import 'screens/custom_list_screen.dart';
import 'screens/user_profile_screen.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Netflix Clone',
      theme: ThemeData.dark(),
      initialRoute: '/',
      routes: {
        '/': (context) => HomeScreen(),
        '/customList': (context) => CustomListScreen(),
        '/userProfile': (context) => UserProfileScreen(),
      },
    );
  }
}
