import 'package:flutter/material.dart';
import 'screens/exam_list.dart';

void main() {
  runApp(const ExamApp());
}

class ExamApp extends StatelessWidget {
  const ExamApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Exam Schedule',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        colorScheme: ColorScheme.fromSwatch().copyWith(
          primary: Colors.pink.shade200,
          secondary: Colors.pink.shade100,
        ),
        scaffoldBackgroundColor: Colors.pink.shade50,
        cardColor: Colors.pink.shade50,
      ),
      home: ExamListScreen(),
    );
  }
}