import 'package:flutter/material.dart';

class BottomNavBar extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    return NavigationBar(indicatorColor: Colors.transparent,height: 70,
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
          backgroundColor: Colors.grey.shade800,selectedIndex: 0,destinations: [
            NavigationDestination(icon: Icon(Icons.home_filled,color: Colors.grey,),selectedIcon: Icon(Icons.home_filled,color: Colors.blueAccent,), label: 'Home'),
            NavigationDestination(icon: Icon(Icons.credit_card, color: Colors.grey,),selectedIcon: Icon(Icons.credit_card,color: Colors.blueAccent,), label: 'Cards'),
            NavigationDestination(icon: Icon(Icons.query_stats,color: Colors.grey,),selectedIcon: Icon(Icons.query_stats,color: Colors.blueAccent,), label: 'Sats'),
            NavigationDestination(icon: Icon(Icons.settings,color: Colors.grey,),selectedIcon: Icon(Icons.settings,color: Colors.blueAccent,), label: 'Setting'),
          ]
      );

  }

}