import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:quizlet/components/create_quiz/Input_label.dart';
import 'package:quizlet/components/create_quiz/dropdown_label.dart';
import 'package:quizlet/screens/quiz_create_sceen/flashcard_create_screen.dart';

class QuizForm extends StatefulWidget {
  const QuizForm({super.key});

  @override
  State<QuizForm> createState() => _QuizFormState();
}

class _QuizFormState extends State<QuizForm> {
  List<String> quizTypes = [
    'Multiple choice',
    'True/False',
    'Fill in the blank',
    'Flashcards',
  ];

  List<String> quizDurations = [
    '5 minutes',
    '10 minutes',
    '15 minutes',
    '20 minutes',
    '25 minutes',
    '30 minutes',
  ];
  String? multipleSelected;
  String? durationSelected; // ✅ Initialize as null
  // ✅ Initialize as null

  @override
  void initState() {
    super.initState();
    multipleSelected = quizTypes.first;
    durationSelected = quizDurations.first; // ✅ Assign default value correctly
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 670,
      width: 350,
      decoration: BoxDecoration(
        color: Colors.grey[50],
        // color: Colors.amberAccent,
        borderRadius: BorderRadius.circular(8.0),
      ),
      child: Center(
        child: Padding(
          padding: const EdgeInsets.all(20.0),
          child: Column(
            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    'Quiz ID: ',
                    style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
                  ),
                  Text(
                    '123456',
                    style: TextStyle(
                      fontSize: 18,
                      fontStyle: FontStyle.italic,
                      color: Colors.grey,
                    ),
                  ),
                ],
              ),

              Divider(
                color: Colors.grey, // Color of the divider
                thickness: 2, // Thickness of the line
                indent: 10, // Left padding
                endIndent: 10, // Right padding
              ),
              SizedBox(height: 10),
              InputQuiz(
                label: 'Quiz Name:',
                hint: 'Enter quiz name',
                controller: TextEditingController(),
                keyboardType: TextInputType.multiline,
                inputFormatter: [],
                icon: Icons.integration_instructions_outlined,
              ),
              InputQuiz(
                label: 'Number of questions: ',
                hint: 'Enter a number',
                controller: TextEditingController(),
                keyboardType: TextInputType.number,
                inputFormatter: [FilteringTextInputFormatter.digitsOnly],
                icon: Icons.numbers_outlined,
              ),
              DropDownQuiz(
                label: 'Question type: ',
                hint: 'Select question type',
                items: quizTypes,
                value: multipleSelected,
                onChanged: (newValue) {
                  setState(() {
                    multipleSelected = newValue;
                  });
                },
                icon: Icons.arrow_drop_down,
              ),

              DropDownQuiz(
                label: 'Test Duration: ',
                hint: '5 minutes',
                items: quizDurations,
                value: durationSelected,
                onChanged: (newValue) {
                  setState(() {
                    durationSelected = newValue;
                  });
                },
                icon: Icons.arrow_drop_down,
              ),
              SizedBox(height: 50),
              ElevatedButton(
                onPressed: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) => FlashcardCreateScreen(),
                    ),
                  );
                },
                child: Text('Continue'),
                style: ElevatedButton.styleFrom(
                  backgroundColor: Colors.blueAccent,
                  foregroundColor: Colors.white, // Text/Icon color
                  padding: EdgeInsets.symmetric(
                    horizontal: 100,
                    vertical: 12,
                  ), // Padding
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(12), // Rounded corners
                  ),
                  elevation: 5, // Shadow effect
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
