import 'package:flutter/material.dart';

class AppDrawer extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Drawer(
      child: ListView(
        padding: EdgeInsets.zero,
        children: <Widget>[
          DrawerHeader(
            decoration: BoxDecoration(
              color: Colors.blue,
            ),
            child: Text(
              'Menú',
              style: TextStyle(
                color: Colors.white,
                fontSize: 24,
              ),
            ),
          ),
          ListTile(
            leading: Icon(Icons.home),
            title: Text('Home'),
            onTap: () {
              Navigator.pushReplacementNamed(context, '/');
            },
          ),
          ListTile(
            leading: Icon(Icons.list),
            title: Text('Custom List'),
            onTap: () {
              Navigator.pushReplacementNamed(context, '/customList');
            },
          ),
          ListTile(
            leading: Icon(Icons.person),
            title: Text('Perfil Usuario'),
            onTap: () {
              Navigator.pushReplacementNamed(context, '/userProfile');
            },
          ),
        ],
      ),
    );
  }
}
