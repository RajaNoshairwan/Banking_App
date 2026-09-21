import 'package:banking_app/main.dart';
import 'package:banking_app/navBar_screens/myCards_screen.dart';
import 'package:banking_app/navBar_screens/settings_screen.dart';
import 'package:banking_app/navBar_screens/stats_screen.dart';
import 'package:flutter/material.dart';

class BottomNavBar extends StatelessWidget{
  final int selectedIndex;
  const BottomNavBar({
    super.key,
    required this.selectedIndex,
  });
  @override
  Widget build(BuildContext context) {
    return NavigationBar(indicatorColor: Colors.transparent,height: 70,

        selectedIndex: selectedIndex,

        onDestinationSelected: (index) {
          if (index == 0) {
            Navigator.pushReplacement(
              context,
              MaterialPageRoute(
                builder: (context) => MyHomePage(),
              ),
            );
          }

          if (index == 1) {
            Navigator.pushReplacement(
              context,
              MaterialPageRoute(
                builder: (context) => MyCardsScreen(),
              ),
            );
          }

          if (index == 2) {
            Navigator.pushReplacement(
              context,
              MaterialPageRoute(
                builder: (context) => StatsScreen(),
              ),
            );
          }

          if (index == 3) {
            Navigator.pushReplacement(
              context,
              MaterialPageRoute(
                builder: (context) => SettingsScreen(),
              ),
            );
          }
        },


        labelTextStyle: WidgetStateProperty.resolveWith<TextStyle>(
                (states) {
              if (states.contains(WidgetState.selected)) {
                return const TextStyle(
                  color: Colors.blueAccent,
                  fontSize: 14,
                  fontWeight: FontWeight.bold,
                );
              }

              return const TextStyle(
                color: Colors.grey,
                fontSize: 12,
              );
            },
          ),
          backgroundColor: Colors.grey.shade800,destinations: [
            NavigationDestination(icon: Icon(Icons.home_filled,color: Colors.grey,),selectedIcon: Icon(Icons.home_filled,color: Colors.blueAccent,), label: 'Home'),
            NavigationDestination(icon: Icon(Icons.credit_card, color: Colors.grey,),selectedIcon: Icon(Icons.credit_card,color: Colors.blueAccent,), label: 'Cards'),
            NavigationDestination(icon: Icon(Icons.query_stats,color: Colors.grey,),selectedIcon: Icon(Icons.query_stats,color: Colors.blueAccent,), label: 'Sats'),
            NavigationDestination(icon: Icon(Icons.settings,color: Colors.grey,),selectedIcon: Icon(Icons.settings,color: Colors.blueAccent,), label: 'Setting'),
          ]
      );

  }

}