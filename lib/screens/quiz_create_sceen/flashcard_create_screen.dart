import 'package:flutter/material.dart';
import 'package:quizlet/components/create_quiz/quiz_form.dart';

class FlashcardCreateScreen extends StatelessWidget {
  const FlashcardCreateScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        body: SafeArea(
          child: Center(
            child: Stack(
              children: [
                Align(
                  alignment: Alignment.topCenter,
                  child: Container(
                    height: 200,
                    width: 9999,
                    decoration: BoxDecoration(
                      color: Colors.blue,
                      // borderRadius: BorderRadius.only(
                      //   bottomLeft: Radius.circular(50),
                      //   bottomRight: Radius.circular(50),
                      // ),
                    ),
                  ),
                ),
                Positioned(
                  top: 10,
                  left: 10,
                  child: IconButton(
                    icon: Icon(Icons.arrow_back, color: Colors.white, size: 30),
                    onPressed: () {
                      Navigator.pop(context); // Go back to the previous screen
                    },
                  ),
                ),
                Positioned(
                  child: Center(
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: [
                        Padding(
                          padding: const EdgeInsets.fromLTRB(0, 50, 0, 0),
                          child: Text(
                            'FlashCard Create',
                            style: TextStyle(
                              fontSize: 30,
                              fontWeight: FontWeight.bold,
                              color: Colors.white,
                            ),
                          ),
                        ),
                        SizedBox(height: 20),
                        QuizForm(),
                      ],
                    ),
                  ),
                ),
                // Column(
                //   mainAxisAlignment: MainAxisAlignment.center,
                //   children: [
                //     Text(
                //       'Create Quiz',
                //       style: TextStyle(fontSize: 30, fontWeight: FontWeight.bold),
                //     ),
                //   ],
                // ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
