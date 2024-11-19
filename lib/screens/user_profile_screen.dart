import 'package:flutter/material.dart';
import '../widgets/app_drawer.dart';

class UserProfileScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Perfil de Usuario'),
      ),
      drawer: AppDrawer(),
      body: Center(
        child: Text(
          'Pantalla de perfil de usuario',
          style: TextStyle(fontSize: 18, color: Colors.white),
        ),
      ),
    );
  }
}
