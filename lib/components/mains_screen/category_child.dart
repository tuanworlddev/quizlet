import 'package:flutter/material.dart';
import 'package:quizlet/components/Icon.dart';

class CategoryChild extends StatelessWidget {
  const CategoryChild({super.key});
  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
      crossAxisAlignment: CrossAxisAlignment.center,
      children: [
        Column(
          children: [
            Container(
              decoration: BoxDecoration(
                color: Colors.indigo,
                borderRadius: BorderRadius.circular(8.0),
              ),
              width: 60,
              padding: EdgeInsets.all(10),
              child: CustomIcon(
                icon: Icons.calculate_outlined,
                color: Colors.white,
                size: 20,
              ),
            ),
            Text('Mathematics'),
          ],
        ),
        Column(
          children: [
            Container(
              decoration: BoxDecoration(
                color: Colors.indigo,
                borderRadius: BorderRadius.circular(8.0),
              ),
              width: 60,
              padding: EdgeInsets.all(10),
              child: CustomIcon(
                icon: Icons.language_outlined,
                color: Colors.white,
                size: 20,
              ),
            ),
            Text('Language'),
          ],
        ),
        Column(
          children: [
            Container(
              decoration: BoxDecoration(
                color: Colors.indigo,
                borderRadius: BorderRadius.circular(8.0),
              ),
              width: 60,
              padding: EdgeInsets.all(10),
              child: CustomIcon(
                icon: Icons.science_outlined,
                color: Colors.white,
                size: 20,
              ),
            ),
            Text('Science'),
          ],
        ),
        Column(
          children: [
            Container(
              decoration: BoxDecoration(
                color: Colors.indigo,
                borderRadius: BorderRadius.circular(8.0),
              ),
              width: 60,
              padding: EdgeInsets.all(10),
              child: CustomIcon(
                icon: Icons.draw_outlined,
                color: Colors.white,
                size: 20,
              ),
            ),
            Text('Mathematics'),
          ],
        ),
      ],
    );
  }
}
