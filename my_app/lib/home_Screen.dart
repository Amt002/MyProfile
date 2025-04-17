// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables, sort_child_properties_last

import 'package:flutter/material.dart';
import 'package:my_app/data/list.dart';
import 'package:my_app/widget/skills_Box.dart';
import 'package:my_app/widget/skills_Table.dart';

class HomeScreen extends StatefulWidget {
  HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  String selectedInfo = 'amt@gmail.com';
  int selectedSkill = 0;
  int? selectedIndex;

  @override
  void initState() {
    super.initState();
    selectedIndex =
        infoList.indexWhere((item) => item['info'] == 'amt@gmail.com');
    if (selectedIndex == -1) selectedIndex = null;
  }

  @override
  Widget build(BuildContext context) {
    String selectedSkillName = days[selectedSkill];
    List<Map<String, dynamic>> currentSkills =
        weeklySkills[selectedSkillName] ?? [];

    return Scaffold(
      backgroundColor: Colors.white,
      body: SafeArea(
        child: SingleChildScrollView(
          child: Padding(
            padding: const EdgeInsets.symmetric(horizontal: 18),
            child: Column(
              children: [
                SizedBox(height: 20),
                Text.rich(
                  TextSpan(
                    children: [
                      TextSpan(
                        text: 'Hi,',
                        style: TextStyle(
                          color: Colors.blue,
                          fontSize: 22,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                      TextSpan(
                        text: ' Im Amtulrhman Mohameed',
                        style: TextStyle(
                          fontSize: 18,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                    ],
                  ),
                ),
                SizedBox(height: 20),
                Text(
                  'Personal info',
                  style: TextStyle(
                    fontSize: 18,
                    fontWeight: FontWeight.bold,
                  ),
                ),
                SizedBox(height: 11),
                Column(
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: infoList.asMap().entries.map((entry) {
                    final index = entry.key;
                    final item = entry.value;
                    return Padding(
                      padding: const EdgeInsets.only(bottom: 10),
                      child: GestureDetector(
                        onTap: () {
                          setState(() {
                            selectedIndex = index;
                          });
                        },
                        child: Row(
                          children: [
                            Container(
                              padding: EdgeInsets.all(10),
                              decoration: BoxDecoration(
                                color: selectedIndex == index
                                    ? Colors.blue.withOpacity(0.3)
                                    : Colors.grey[800]!.withOpacity(0.3),
                                borderRadius: BorderRadius.circular(10),
                              ),
                              child: Icon(
                                item['icon'],
                                color: selectedIndex == index
                                    ? Colors.amber
                                    : Colors.blue,
                                size: 24,
                              ),
                            ),
                            SizedBox(width: 5),
                            Expanded(
                              child: Padding(
                                padding:
                                    const EdgeInsets.symmetric(horizontal: 20),
                                child: Container(
                                  padding: EdgeInsets.symmetric(
                                      horizontal: 30, vertical: 15),
                                  decoration: BoxDecoration(
                                    color: selectedIndex == index
                                        ? Colors.blue
                                        : Colors.grey,
                                    borderRadius: BorderRadius.circular(20),
                                  ),
                                  child: Text(
                                    item['info'],
                                    style: TextStyle(
                                      color: Colors.white,
                                      fontWeight: selectedIndex == index
                                          ? FontWeight.bold
                                          : FontWeight.normal,
                                    ),
                                  ),
                                ),
                              ),
                            ),
                          ],
                        ),
                      ),
                    );
                  }).toList(),
                ),
                SizedBox(height: 13),
                Text(
                  'Skills',
                  style: TextStyle(
                    fontSize: 18,
                    fontWeight: FontWeight.bold,
                  ),
                ),
                SizedBox(height: 10),
                // الأيام
                Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 16.0),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: List.generate(days.length, (index) {
                      return GestureDetector(
                        onTap: () {
                          setState(() {
                            selectedSkill = index;
                          });
                        },
                        child: SkillsBox(
                          day: days[index],
                          isActive: index == selectedSkill,
                        ),
                      );
                    }),
                  ),
                ),
                SizedBox(height: 20),
                if (currentSkills.isNotEmpty)
                  SizedBox(
                    height: 220,
                    child: SkillsTable(skills: currentSkills),
                  ),

                SizedBox(height: 20),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
