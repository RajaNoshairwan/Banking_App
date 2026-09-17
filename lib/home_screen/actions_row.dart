import 'package:flutter/material.dart';

class ActionsRow extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(22.0),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Column(
            children: [
              IconButton(style: IconButton.styleFrom(backgroundColor: Colors.grey.shade700),onPressed: (){}, icon: Icon(Icons.arrow_upward_outlined,color: Colors.white,size: 20,)),
              SizedBox(height: 5,),
              Text('Sent',style: TextStyle(color: Colors.grey.shade500),),
            ],
          ),
          Column(
            children: [
              IconButton(style: IconButton.styleFrom(backgroundColor: Colors.grey.shade700),onPressed: (){}, icon: Icon(Icons.arrow_downward_outlined,color: Colors.white,size: 20,)),
              SizedBox(height: 5,),
              Text('Recieve',style: TextStyle(color: Colors.grey.shade500),),
            ],
          ),
          Column(
            children: [
              IconButton(style: IconButton.styleFrom(backgroundColor: Colors.grey.shade700),onPressed: (){}, icon: Icon(Icons.currency_exchange_outlined,color: Colors.white,size: 20,)),
              SizedBox(height: 5,),
              Text('Loan',style: TextStyle(color: Colors.grey.shade500),),
            ],
          ),
          Column(
            children: [
              IconButton(style: IconButton.styleFrom(backgroundColor: Colors.grey.shade700),onPressed: (){}, icon: Icon(Icons.cloud_upload_rounded,color: Colors.white,size: 20,)),
              SizedBox(height: 5,),
              Text('Topup',style: TextStyle(color: Colors.grey.shade500),),
            ],
          ),
        ],
      ),
    );
  }

}