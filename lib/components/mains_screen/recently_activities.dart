import 'package:flutter/material.dart';
import 'package:quizlet/components/mains_screen/course_card.dart';

class RecentlyActivities extends StatelessWidget {
  const RecentlyActivities({super.key});

  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: ListView.builder(
        scrollDirection: Axis.vertical,
        itemCount: 10,
        itemBuilder: (context, index) {
          return CourseCard();
        },
      ),
    );
  }
}
