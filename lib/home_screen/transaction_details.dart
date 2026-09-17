import 'package:banking_app/model/transactions_info.dart';
import 'package:flutter/material.dart';

class TransactionDetails extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: Padding(
        padding: const EdgeInsets.only(left: 20,right: 20,top: 5,bottom: 20),
        child: Column(
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text('Transactions',style: TextStyle(color: Colors.white,fontSize: 20,fontWeight: FontWeight.bold),),
                Text('See All',style: TextStyle(color: Colors.blueAccent,fontSize:16,fontWeight: FontWeight.bold),),
              ],
            ),
            Expanded(
              child: ListView.builder(
                itemCount: dummyTransactions.length,
                itemBuilder: (BuildContext context, int index) {
                  final transaction = dummyTransactions[index];
                  final isNegative = transaction.trailing.startsWith('-');
                  return ListTile(
                    contentPadding: EdgeInsets.zero,
                    leading: CircleAvatar(
                        backgroundColor: Colors.grey.shade700,
                        child: Icon(transaction.leading, color: Colors.white,)),
                    title: Text(transaction.title, style: TextStyle(
                      color: Colors.white,
                      fontWeight: FontWeight.bold,),),
                    subtitle: Text(transaction.subtitle, style: TextStyle(
                        color: Colors.grey),),
                    trailing: Text(transaction.trailing, style: TextStyle(
                        color: isNegative ? Colors.white : Colors.blueAccent,
                        fontWeight: FontWeight.bold,
                        fontSize: 18),),
                  );
                }
              )
            ),
            // Text('See All',style: TextStyle(color: Colors.blueAccent, fontSize: 16),),
          ]
          )
              ),
            );
  }
}