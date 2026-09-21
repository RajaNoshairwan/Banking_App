import 'package:banking_app/authentication_screens/login_screen.dart';
import 'package:flutter/material.dart';

class SignupScreen extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey.shade900,
        body: Padding(
          padding: const EdgeInsets.all(20.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              IconButton(onPressed: (){},iconSize: 23, icon: Icon(Icons.arrow_back_ios_new_sharp),
                color: Colors.white,style: IconButton.styleFrom(
                  backgroundColor: Colors.grey.shade800,
                  padding: EdgeInsets.all(14.0),
                ),),
              SizedBox(height: 100,),

              Text('Sign Up',style: TextStyle(color: Colors.white,fontSize: 35,fontWeight: FontWeight.bold),),
              SizedBox(height: 30,),

              TextField(
                decoration: InputDecoration(
                  prefixIcon: Icon(Icons.person, color: Colors.grey,),
                  label: Text('Full Name',style: TextStyle(color: Colors.grey),),
                  hint: Text('John Doe',style: TextStyle(color: Colors.white),),

                ),
              ),
              SizedBox(height: 30,),

              TextField(
                keyboardType: TextInputType.number,
                decoration: InputDecoration(
                  prefixIcon: Icon(Icons.call, color: Colors.grey,),
                  label: Text('Phone Number',style: TextStyle(color: Colors.grey),),
                  hint: Text('+4412345678',style: TextStyle(color: Colors.white),),

                ),
              ),
              SizedBox(height: 30,),

              TextField(
                decoration: InputDecoration(
                  prefixIcon: Icon(Icons.email_outlined, color: Colors.grey,),
                  label: Text('Email Address',style: TextStyle(color: Colors.grey),),
                  hint: Text('xyz@gmail.com',style: TextStyle(color: Colors.white),),

                ),
              ),
              SizedBox(height: 30,),

              TextField(
                obscureText: true,
                style: TextStyle(
                  color: Colors.white70,
                ),
                decoration: InputDecoration(
                  prefixIcon: Icon(Icons.lock_outline_rounded, color: Colors.grey,),
                  label: Text('Password',style: TextStyle(color: Colors.grey),),
                  hint: Text('........',style: TextStyle(color: Colors.white),),
                  suffixIcon: IconButton(onPressed: (){}, icon: Icon(Icons.remove_red_eye, color: Colors.grey,)),
                ),
              ),
              SizedBox(height: 30,),

              SizedBox(width: double.infinity, height: 60, child: ElevatedButton(style: ElevatedButton.styleFrom(
                  backgroundColor: Color(0xFF0066FF), shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(16))),
                  onPressed: (){}, child: Text('Sign Up',style: TextStyle(color: Colors.white, fontSize: 18,fontWeight: FontWeight.bold),
                  ))),
              SizedBox(height: 30,),

              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text("Already have an account.",style: TextStyle(color: Colors.grey, fontSize: 18),),
                  TextButton(onPressed: (){
                    Navigator.push(context, MaterialPageRoute(builder: (context) => LoginScreen()),);
                  }, child: Text("Login In",style: TextStyle(color: Color(0xFF0066FF),fontSize: 18),))
                ],
              ),
            ],
          ),
        ),
    );
  }

}