import 'package:flutter/material.dart';
import 'widget/rewardCard_widget.dart';

class DashboardScreen extends StatelessWidget {
  const DashboardScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: const Text('Dashboard', style: TextStyle(fontSize: 30,fontWeight: FontWeight.bold, color: Colors.indigo),),
        actions: [
          IconButton(
            icon: const Icon(Icons.logout, color: Colors.red,),
            onPressed: () {
              Navigator.pushReplacementNamed(context, '/loginScreen');
            },
          ),
        ],
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(5),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Row(
                children: [
                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: const Text(
                      'Hello, Ashish rai',
                      style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold),
                    ),
                  ),
                ],
              ),
              const SizedBox(height: 20),

              //----[Cart for User]---
              Card(
                child: Padding(
                  padding: const EdgeInsets.all(16.0),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      const Text(
                        'Your Referral Code',
                        style: TextStyle(fontSize: 16, color: Colors.grey, fontWeight: FontWeight.bold),
                      ),
                      const SizedBox(height: 8),
                      Text(
                        'ashishRai_2025',
                        style: TextStyle(
                          fontSize: 24,
                          fontWeight: FontWeight.bold,
                          color: Theme.of(context).primaryColor,
                        ),
                      ),
                      const SizedBox(height: 16),
                      Row(
                        children: [
                          const Icon(Icons.content_copy, size: 20),
                          const SizedBox(width: 8),
                         TextButton(onPressed: (){},
                             child: Text(
                               'Copy Code',
                               style: TextStyle(
                                 color: Theme.of(context).primaryColor,
                               ),
                             ),
                         )
                        ],
                      ),
                    ],
                  ),
                ),
              ),
              const SizedBox(height: 20),

              //----[Card for Donations detail]----
              Card(
                child: Padding(
                  padding: const EdgeInsets.all(16.0),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      const Text(
                        'Total Donations Raised',
                        style: TextStyle(fontSize: 16, color: Colors.green, fontWeight: FontWeight.bold),
                      ),
                      const SizedBox(height: 8),
                      const Text(
                        '₹5,000',
                        style: TextStyle(fontSize: 28, fontWeight: FontWeight.bold),
                      ),
                      const SizedBox(height: 16),
                      LinearProgressIndicator(
                        value: 0.5,
                        backgroundColor: Colors.grey[400],
                        valueColor: AlwaysStoppedAnimation<Color>(
                          Theme.of(context).primaryColor,
                        ),
                      ),
                      const SizedBox(height: 8),
                      const Text('50% of your goal'),
                    ],
                  ),
                ),
              ),
              const SizedBox(height: 20),

              //----[Reward section]---
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: const Text(
                  'Your Rewards',
                  style: TextStyle(fontSize: 22, fontWeight: FontWeight.bold),
                ),
              ),
              const SizedBox(height: 10),
              SizedBox(
                height: 120,
                child: ListView(
                  scrollDirection: Axis.horizontal,
                  children: const [
                    RewardCard(icon: Icons.card_giftcard, title: 'T-Shirt', unlocked: true),
                    RewardCard(icon: Icons.emoji_events, title: 'Badge', unlocked: true),
                    RewardCard(icon: Icons.star, title: 'Premium', unlocked: false),
                    RewardCard(icon: Icons.celebration, title: 'Party', unlocked: false),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
