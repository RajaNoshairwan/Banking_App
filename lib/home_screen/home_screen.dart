import 'package:banking_app/home_screen/top_name_tile.dart';
import 'package:banking_app/home_screen/transaction_details.dart';
import 'package:flutter/material.dart';

import 'credit_card.dart';
import 'actions_row.dart';

class HomeScreen extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
   return Container(
     color:  Colors.blueGrey.shade900,
     child: Column(
       children: [
         Stack(
           children: [
             Positioned(
                 right: -50,
                 top: 130,
                 child: Transform.rotate(
                   angle: -0.3,
                   child: Container(
                     width: 230,
                     height: 280,
                     decoration: BoxDecoration(
                       color: Colors.blueGrey.shade800,
                       borderRadius: BorderRadius.circular(100),
                     ),
                   ),
                 )
             ),
             Positioned(
                 top: -30,
                 left: -30,
                 child: Container(
                   width: 150,
                   height: 150,
                   decoration: BoxDecoration(
                     color: Colors.blueGrey.shade800,
                     borderRadius: BorderRadius.circular(100),
                   ),
                 )
             ),
             Column(
               children: [
                 NameTile(),
                 CreditCard(),
                 ActionsRow(),
               ],
             )
           ],
         ),

         TransactionDetails(),

       ],
     ),
   );
  }

}