import 'package:flutter/material.dart';

class RewardCard extends StatelessWidget {
  final IconData icon;
  final String title;
  final bool unlocked;

  const RewardCard({
    super.key,
    required this.icon,
    required this.title,
    required this.unlocked,
  });

  @override
  Widget build(BuildContext context) {
    return Card(
      color: unlocked ? Theme.of(context).primaryColor : Colors.grey[300],
      child: SizedBox(
        width: 150,
        child: Padding(
          padding: const EdgeInsets.all(8.0),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Icon(
                icon,
                size: 40,
                color: unlocked ? Colors.white : Colors.grey,
              ),
              const SizedBox(height: 8),
              Text(
                title,
                style: TextStyle(
                  color: unlocked ? Colors.white : Colors.grey,
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}