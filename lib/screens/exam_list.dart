import 'package:flutter/material.dart';
import '../models/exam.dart';
import '../widgets/exam_card.dart';

class ExamListScreen extends StatelessWidget {
  final String studentIndex = "233170";

  ExamListScreen({super.key});

  final List<Exam> exams = [
    Exam(subjectName: "Мобилни Информациски Системи", dateTime: DateTime(2026, 1, 10, 9, 0), rooms: ["223"]),
    Exam(subjectName: "Математика 1", dateTime: DateTime(2026, 1, 12, 12, 0), rooms: ["13", "12"]),
    Exam(subjectName: "Математика 2", dateTime: DateTime(2025, 12, 20, 10, 30), rooms: ["117"]),
    Exam(subjectName: "Математика 3", dateTime: DateTime(2025, 1, 15, 11, 0), rooms: ["117"]),
    Exam(subjectName: "Бази на Податоци", dateTime: DateTime(2026, 1, 22, 13, 0), rooms: ["138"]),
    Exam(subjectName: "Оперативни Системи", dateTime: DateTime(2025, 12, 15, 9, 0), rooms: ["2"]),
    Exam(subjectName: "Линеарна Алгебра", dateTime: DateTime(2026, 1, 18, 10, 0), rooms: ["3"]),
    Exam(subjectName: "Мрежи и безбедност", dateTime: DateTime(2024, 1, 25, 12, 30), rooms: ["12"]),
    Exam(subjectName: "Софтверско Инженерство", dateTime: DateTime(2025, 1, 30, 9, 30), rooms: ["13"]),
    Exam(subjectName: "Сајбер Безбедност", dateTime: DateTime(2025, 2, 2, 14, 0), rooms: ["223"]),
  ];

  @override
  Widget build(BuildContext context) {
    exams.sort((a, b) => a.dateTime.compareTo(b.dateTime));

    return Scaffold(
      appBar: AppBar(
        title: Text("Распоред за испити - $studentIndex"),
        backgroundColor: Colors.pink.shade200,
      ),
      body: ListView.builder(
        itemCount: exams.length,
        itemBuilder: (context, index) => ExamCard(exam: exams[index]),
      ),
      bottomNavigationBar: Container(
        color: Colors.pink.shade100,
        padding: const EdgeInsets.all(12),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            const Icon(Icons.list_alt, color: Colors.white),
            const SizedBox(width: 8),
            Text(
              "Total Exams: ${exams.length}",
              style: const TextStyle(color: Colors.white, fontSize: 16),
            ),
          ],
        ),
      ),
    );
  }
}