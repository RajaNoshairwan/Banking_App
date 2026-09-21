import 'package:banking_app/bottomNavbar.dart';
import 'package:flutter/material.dart';

class SettingsScreen extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.blueGrey.shade900,

      body: Padding(
        padding: const EdgeInsets.all(20.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [

            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                IconButton(onPressed: (){},iconSize: 23, icon: Icon(Icons.arrow_back_ios_new_sharp),
                  color: Colors.white,style: IconButton.styleFrom(
                    backgroundColor: Colors.grey.shade800,
                    padding: EdgeInsets.all(14.0),
                  ),),

                Text('Settings',style: TextStyle(color: Colors.white, fontSize: 21, fontWeight: FontWeight.bold),),

                IconButton(onPressed: (){},iconSize: 23, icon: Icon(Icons.exit_to_app_sharp),
                  color: Colors.white,style: IconButton.styleFrom(
                    backgroundColor: Colors.grey.shade800,
                    padding: EdgeInsets.all(14.0),
                  ),),
              ],
            ),

            SizedBox(height: 30,),

            Text("General",style: TextStyle(color: Colors.grey,fontSize: 18),),

            ListTile(
              contentPadding: EdgeInsets.zero,
              title: Text('Language', style: TextStyle(color: Colors.white),),
              trailing: IconButton(color: Colors.grey, onPressed: () {}, icon: Icon(Icons.arrow_forward_ios_rounded,) ,),
            ),

            Divider(
              color: Colors.grey.shade800,
              thickness: 1,
            ),

            ListTile(
              contentPadding: EdgeInsets.zero,
              title: Text('My Profile', style: TextStyle(color: Colors.white),),
              trailing: IconButton(color: Colors.grey, onPressed: () {}, icon: Icon(Icons.arrow_forward_ios_rounded,) ,),
            ),

            Divider(
              color: Colors.grey.shade800,
              thickness: 1,
            ),

            ListTile(
              contentPadding: EdgeInsets.zero,
              title: Text('Contact Us', style: TextStyle(color: Colors.white),),
              trailing: IconButton(color: Colors.grey, onPressed: () {}, icon: Icon(Icons.arrow_forward_ios_rounded,) ,),
            ),

            Text("Security",style: TextStyle(color: Colors.grey,fontSize: 18),),

            ListTile(
              contentPadding: EdgeInsets.zero,
              title: Text('Change Password', style: TextStyle(color: Colors.white),),
              trailing: IconButton(color: Colors.grey, onPressed: () {}, icon: Icon(Icons.arrow_forward_ios_rounded,) ,),
            ),

            Divider(
              color: Colors.grey.shade800,
              thickness: 1,
            ),

            ListTile(
              contentPadding: EdgeInsets.zero,
              title: Text('Privacy Policy', style: TextStyle(color: Colors.white),),
              trailing: IconButton(color: Colors.grey, onPressed: () {}, icon: Icon(Icons.arrow_forward_ios_rounded,) ,),
            ),

            Divider(
              color: Colors.grey.shade800,
              thickness: 1,
            ),

            Text("Change what data you share with us.",style: TextStyle(color: Colors.grey,fontSize: 18),),

            ListTile(
              contentPadding: EdgeInsets.zero,
              title: Text('Biometric', style: TextStyle(color: Colors.white),),
              trailing: IconButton(color: Colors.grey, onPressed: () {}, icon: Icon(Icons.toggle_off_sharp,) ,),
            ),

          ],
        ),
      ),

      bottomNavigationBar: BottomNavBar(selectedIndex: 3),
    );
  }

}