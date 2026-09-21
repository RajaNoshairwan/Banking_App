import 'package:banking_app/bottomNavbar.dart';
import 'package:flutter/material.dart';

class MyCardsScreen extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.blueGrey.shade900,
      body: Center(
        child: Text('My Cards Screen',style: TextStyle(color: Colors.grey,fontSize: 30),),
      ),
      bottomNavigationBar: BottomNavBar(selectedIndex: 1),
    );
  }
  
}