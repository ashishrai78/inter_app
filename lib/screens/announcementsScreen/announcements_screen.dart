import 'package:flutter/material.dart';
import 'package:intern_app/constrants/items.dart';

class AnnouncementsScreen extends StatelessWidget {
  const AnnouncementsScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final announcements = Items();
    return Scaffold(
      appBar: AppBar(
        title: const Text('Announcements', style: TextStyle(fontWeight: FontWeight.bold, color: Colors.indigo, fontSize: 28),),
      ),
      body: ListView.builder(
        itemCount: announcements.announcements.length,
        itemBuilder: (context, index) {
          final announcement = announcements.announcements[index];
          return Card(
            margin: const EdgeInsets.symmetric(horizontal: 10, vertical: 10),
            child: Padding(
              padding: const EdgeInsets.all(20),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    announcement['title']!,
                    style: const TextStyle(
                      fontSize: 18,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  const SizedBox(height: 8),
                  Text(announcement['message']!),
                  const SizedBox(height: 8),
                  Text(
                    announcement['date']!,
                    style: const TextStyle(
                      color: Colors.indigo,
                      fontSize: 12,
                    ),
                  ),
                ],
              ),
            ),
          );
        },
      ),
    );
  }
}