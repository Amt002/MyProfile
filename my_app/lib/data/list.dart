import 'package:flutter/material.dart';

final List<Map<String, dynamic>> infoList = [
  {'icon': Icons.email, 'info': 'amt@gmail.com'},
  {'icon': Icons.phone, 'info': '+967778681222'},
  {'icon': Icons.laptop, 'info': 'IT'},
];

final List<String> days = ['Web', 'DB', 'Program', 'Lang', 'Other'];

final Map<String, List<Map<String, dynamic>>> weeklySkills = {
  'Web': [
    {'name': 'Web', 'percentage': 95, 'isHeader': true},
    {'name': 'HTML & CSS', 'percentage': 73},
    {'name': 'JavaScript', 'percentage': 50},
  ],
  'DB': [
    {'name': 'DB', 'percentage': 85, 'isHeader': true},
    {'name': 'Oracle', 'percentage': 78},
    {'name': 'Sql & My Sql', 'percentage': 65},
  ],
  'Program': [
    {'name': 'Program', 'percentage': 90, 'isHeader': true},
    {'name': 'Flutter', 'percentage': 88},
    {'name': 'Dart', 'percentage': 75},
    {'name': 'C++', 'percentage': 88},
    {'name': 'C#', 'percentage': 75},
  ],
  'Lang': [
    {'name': 'Lang', 'percentage': 85, 'isHeader': true},
    {'name': 'Arabic', 'percentage': 100},
    {'name': 'English', 'percentage': 50},
  ],
  'Other': [
    {'name': 'Other', 'percentage': 90, 'isHeader': true},
    {'name': 'TeamWork', 'percentage': 88},
    {'name': 'communcation skills', 'percentage': 88},
    {'name': 'Network', 'percentage': 75},
    {'name': 'Github', 'percentage': 75},
  ],
};
