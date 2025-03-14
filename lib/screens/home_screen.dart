import 'package:flutter/material.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({ super.key });

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('QUIZLET', style: TextStyle(fontWeight: FontWeight.bold),),),
      body: Container(
        padding: const EdgeInsets.all(8.0),
        child: Column(
          children: [
            ElevatedButton(onPressed: () => Navigator.pushReplacementNamed(context, '/login'), child: Text('Login')),
          ],
        ),
      ),
    );
  }

}