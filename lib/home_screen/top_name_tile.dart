import 'package:banking_app/model/card_info.dart';
import 'package:flutter/material.dart';

class NameTile extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(top: 20),
      child: ListTile(
        leading: CircleAvatar(
            radius: 25,
            backgroundImage: AssetImage(dummycard.user_image)),
        title: Text("Welcome back,",style: TextStyle(color:  Colors.grey, fontSize: 14),),
        subtitle: Text(dummycard.full_name,style: TextStyle(color: Colors.white,fontSize: 20),),
        trailing: ElevatedButton(onPressed: (){},style: ElevatedButton.styleFrom(
          backgroundColor: Colors.grey.shade700,
          shape: CircleBorder(),
        ), child: Icon(Icons.search,size: 22, color: Colors.white)),
      ),
    );
  }

}