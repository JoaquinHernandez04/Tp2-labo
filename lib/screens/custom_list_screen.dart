import 'package:flutter/material.dart';
import '../widgets/app_drawer.dart';

class CustomListScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Custom List'),
      ),
      drawer: AppDrawer(),
      body: Center(
        child: Text(
          'Pantalla de lista personalizada',
          style: TextStyle(fontSize: 18, color: Colors.white),
        ),
      ),
    );
  }
}
