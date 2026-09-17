import 'package:banking_app/model/card_info.dart';
import 'package:flutter/material.dart';

class CreditCard extends StatelessWidget{

  @override
  Widget build(BuildContext context) {
    return Padding(
        padding: const EdgeInsets.all(20.0),
        child: Container(
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(24),
            color: Colors.grey.shade800.withOpacity(0.7),
          ),
          // height: 250,
          width: double.infinity,
          child: Padding(
            padding: const EdgeInsets.all(20.0),
            child: Column(
              children: [
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Icon(Icons.credit_card_outlined, color: Colors.blueAccent,),
                    Icon(Icons.wifi, color: Colors.blueGrey,),
                  ],
                ),
                SizedBox(height: 13,),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text(dummycard.card_number.substring(0,4),style: TextStyle(color: Colors.white, fontSize: 21),),
                    Text(dummycard.card_number.substring(4,8),style: TextStyle(color: Colors.white, fontSize: 21),),
                    Text(dummycard.card_number.substring(8,12),style: TextStyle(color: Colors.white, fontSize: 21),),
                    Text(dummycard.card_number.substring(12,16),style: TextStyle(color: Colors.white, fontSize: 21),),
                  ],
                ),
                SizedBox(height: 13,),
                Align(alignment: AlignmentDirectional.centerStart, child: Text(dummycard.last_name,style: TextStyle(color: Colors.white, fontSize: 12, ),)),
                SizedBox(height: 13,),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Column(
                      children: [
                        Text('Expiry Date',style: TextStyle(color: Colors.grey, fontSize: 16),),
                        Text(dummycard.exp_date,style: TextStyle(color: Colors.white, fontSize: 18),),
                      ],
                    ),
                    Column(
                      children: [
                        Text('CVC',style: TextStyle(color: Colors.grey, fontSize: 16),),
                        Text(dummycard.cvv.toString(),style: TextStyle(color: Colors.white, fontSize: 18),),
                      ],
                    ),
                    Column(
                      children: [
                        Icon(Icons.join_full_outlined, size: 30,color: Colors.deepOrange,),
                        Text('Mastercard',style: TextStyle(color: Colors.white, fontSize: 16),),
                      ],
                    )
                  ],
                )
              ],
            ),
          ),
        ),
    );
  }

}