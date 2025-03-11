import 'package:flutter/material.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({ super.key });

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        padding: const EdgeInsets.all(8.0),
        child: Column(
          children: [
            ElevatedButton(onPressed: () => Navigator.pushNamed(context, '/login'), child: Text('Login')),
          ],
        ),
      ),
    );
  }

}