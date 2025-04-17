import 'package:flutter/material.dart';

class SkillsBox extends StatelessWidget {
  final String day;
  final bool isActive;

  const SkillsBox({
    required this.day,
    required this.isActive,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 65,
      height: 40,
      decoration: BoxDecoration(
        color: isActive ? Colors.blue : Colors.transparent,
        borderRadius: BorderRadius.circular(10),
        border: Border.all(
          color: isActive ? Colors.blue : Colors.grey,
          width: 1,
        ),
      ),
      child: Center(
        child: Text(
          day,
          style: TextStyle(
            fontWeight: FontWeight.bold,
            fontSize: 14,
            color: isActive ? Colors.white : Colors.grey,
          ),
          textAlign: TextAlign.center,
        ),
      ),
    );
  }
}
