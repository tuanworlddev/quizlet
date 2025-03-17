import 'package:flutter/material.dart';
import 'package:quizlet/screens/main_screen.dart';
import 'package:quizlet/screens/profile_screen.dart';
import 'package:quizlet/screens/quiz_create_sceen/create_quiz.dart';
import 'package:quizlet/screens/screen4.dart';
import 'package:quizlet/screens/screen5.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  int _currentIndex = 0;

  final List<Widget> _screen = [
    MainScreen(),
    ProfileScreen(),
    Screen4(),
    Screen5(),
  ];
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        body: SafeArea(child: _screen[_currentIndex]),
        floatingActionButton: FloatingActionButton(
          onPressed: () {
            Navigator.push(
              context,
              MaterialPageRoute(builder: (context) => CreateQuiz()),
            );
          },
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(
              20.0,
            ), // Adjust the radius as needed
          ),
          backgroundColor: Colors.blue, // Change to your preferred color
          child: Icon(Icons.add, size: 32, color: Colors.white),
        ),
        floatingActionButtonLocation: FloatingActionButtonLocation.centerDocked,
        bottomNavigationBar: BottomAppBar(
          padding: EdgeInsets.symmetric(horizontal: 20),
          height: 50,
          shape: CircularNotchedRectangle(), // Creates notch for FAB
          notchMargin: 15, // Space around FAB
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: [
              IconButton(
                icon: Icon(
                  Icons.home,
                  color: _currentIndex == 0 ? Colors.blue : Colors.grey,
                ),
                onPressed: () => setState(() => _currentIndex = 0),
              ),
              IconButton(
                icon: Icon(
                  Icons.search,
                  color: _currentIndex == 1 ? Colors.blue : Colors.grey,
                ),
                onPressed: () => setState(() => _currentIndex = 1),
              ),
              SizedBox(width: 48), // Space for FAB
              IconButton(
                icon: Icon(
                  Icons.person,
                  color: _currentIndex == 2 ? Colors.blue : Colors.grey,
                ),
                onPressed: () => setState(() => _currentIndex = 3),
              ),
              IconButton(
                icon: Icon(
                  Icons.settings,
                  color: _currentIndex == 3 ? Colors.blue : Colors.grey,
                ),
                onPressed: () => setState(() => _currentIndex = 4),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
