import 'package:flutter/material.dart';

class DropDownQuiz extends StatelessWidget {

  final String label;
  final String hint;
  final List<String> items;
  final String? value;
  final void Function(String?)? onChanged;
  final IconData icon;

  DropDownQuiz({
    required this.label,
    required this.hint,
    required this.items,
    required this.value,
    required this.onChanged,
    required this.icon,
  });
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Align(
          alignment: Alignment.topLeft,
          child: Text(
            label,
            style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
          ),
        ),
        SizedBox(height: 5),
        Container(
          padding: EdgeInsets.symmetric(horizontal: 12),
          decoration: BoxDecoration(
            border: Border.all(color: Colors.grey), // Border styling
            borderRadius: BorderRadius.circular(10),
          ),
          child: DropdownButton<String>(
            value: value,
            hint: Text(hint),
            icon: Icon(icon),
            items:
                items.map((String item) {
                  return DropdownMenuItem<String>(
                    value: item,
                    child: Text(item),
                  );
                }).toList(),
            onChanged: onChanged,
            isExpanded: true,
          ),
        ),
        SizedBox(height: 15),
      ],
    );
  }
}
