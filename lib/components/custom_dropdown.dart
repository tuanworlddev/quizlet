import 'package:flutter/material.dart';

class CustomDropdown extends StatelessWidget {
  final String slected;
  final List<String> options;
  final Function(String?) onChanged;

  const CustomDropdown({
    super.key,
    required this.slected,
    required this.options,
    required this.onChanged,
  });

  @override
  Widget build(BuildContext context) {
    return DropdownButtonFormField<String>(
      value: slected,
      onChanged: onChanged,
      items:
          options
              .map(
                (role) => DropdownMenuItem(
                  value: role,
                  child: Text(role, style: TextStyle(color: Colors.white)),
                ),
              )
              .toList(),
      dropdownColor: Colors.blue,
      decoration: InputDecoration(
        labelText: 'Role',
        border: const OutlineInputBorder(),
        enabledBorder: OutlineInputBorder(
          borderSide: BorderSide(color: Colors.grey.shade200, width: 1),
        ),
        focusedBorder: const OutlineInputBorder(
          borderSide: BorderSide(color: Colors.white, width: 1.5),
        ),
      ),
    );
  }
}
