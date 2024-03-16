// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables

import 'package:flutter/material.dart';

class FirstPage extends StatelessWidget {
  const FirstPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Center(child: Text("First Page")),
        backgroundColor: Colors.blue,
        titleTextStyle: TextStyle(color: Colors.white, fontSize: 24),
      ),
      drawer: Drawer(
        backgroundColor: Colors.blue,
        child: Column(
          children: [
            DrawerHeader(
              child: Icon(
                Icons.favorite,
                size: 48,
              ),
            ),
            //home page list tile
            ListTile(
              leading: Icon(Icons.home),
              title: Text('H O M E'),
              onTap: () {
                Navigator.pushNamed(context, '/homePage');
              },
            ),

            ListTile(
              leading: Icon(Icons.settings),
              title: Text('S E T T I N G S '),
              onTap: () {
                Navigator.pushNamed(context, '/settingPage');
              },
            ),

            //setting page list tile
          ],
        ),
      ),
    );
  }
}
