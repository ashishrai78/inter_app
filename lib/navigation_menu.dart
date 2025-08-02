import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:intern_app/screens/announcementsScreen/announcements_screen.dart';

import 'screens/dashboardScreen/dashboard_screen.dart';
import 'screens/leaderboardScreen/leaderboard_screen.dart';

class NavigationMenu extends StatelessWidget {
  const NavigationMenu({super.key});

  @override
  Widget build(BuildContext context) {
    final controller = Get.put(NavigationController());
    return Scaffold(
        body: Obx(()=> controller.screens [controller.selectedIndex.value]),
        bottomNavigationBar: Obx(
              ()=>  NavigationBar(
              elevation: 0,
              selectedIndex: controller.selectedIndex.value,
              onDestinationSelected: (index){
                controller.selectedIndex.value = index;
          },
          destinations: [
            NavigationDestination(icon: Icon(Icons.home), label: 'Dashboard'),
            NavigationDestination(icon: Icon(Icons.leaderboard), label: 'Leaderboard'),
            NavigationDestination(icon: Icon(Icons.announcement), label: 'Announcements'),
          ]
      ),
        )
    );
  }
}
class NavigationController extends GetxController{
  RxInt selectedIndex = 0.obs;
  List<Widget> screens = [DashboardScreen(),LeaderboardScreen(),AnnouncementsScreen()];
}
