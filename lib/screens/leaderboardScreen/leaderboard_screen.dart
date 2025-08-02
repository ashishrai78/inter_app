import 'package:flutter/material.dart';
import 'package:intern_app/constrants/items.dart';

class LeaderboardScreen extends StatelessWidget {
  const LeaderboardScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final leaderboardData = Items();
    return Scaffold(
      appBar: AppBar(
        title: const Text('Leaderboard', style: TextStyle(fontWeight: FontWeight.bold, color: Colors.indigo, fontSize: 28),),
      ),
      body: ListView.builder(
        itemCount: leaderboardData.leaderboardData.length,
        itemBuilder: (context, index) {
          final data = leaderboardData.leaderboardData[index];
          return SizedBox(
            height: 90,
            child: Padding(
              padding: const EdgeInsets.only(top: 10),
              child: Card(
                child: ListTile(
                  leading: CircleAvatar(
                    backgroundColor: Theme.of(context).primaryColor,
                    child: Text(
                      data['position'].toString(),
                      style: const TextStyle(color: Colors.white),
                    ),
                  ),
                  title: Text(data['name'], style: TextStyle(fontSize: 20),),
                  trailing: Text(
                    data['score'],
                    style: const TextStyle(fontWeight: FontWeight.bold, fontSize: 15, color: Colors.green),
                  ),
                ),
              ),
            ),
          );
        },
      ),
    );
  }
}