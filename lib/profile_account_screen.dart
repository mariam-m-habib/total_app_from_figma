import 'package:flutter/material.dart';

class ProfileAccountScreen extends StatelessWidget {
  const new({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        backgroundColor: Colors.transparent,
        title: Text("My Account",style: TextStyle(fontSize: 23,fontWeight: FontWeight.bold),),
      ),
      body:Padding(padding: EdgeInsetsGeometry.symmetric(
        vertical: 35,
        horizontal: 24),
        child:Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text("Name",style: TextStyle(fontSize: 16,fontWeight: FontWeight.bold),),
    SizedBox(
      height: 10,
    ),
    TextField(
      decoration: InputDecoration(
        hintText: "Your name",
        hintStyle: TextStyle(color:  Color.fromARGB(255, 140, 139, 137) ),
        filled: true,
       fillColor:   Color.fromARGB(255, 249, 248, 248),
      enabledBorder: OutlineInputBorder(
        borderRadius: BorderRadius.circular(12),
        borderSide: BorderSide(
          color: const Color.fromARGB(255, 180, 179, 179),
          width: 1
        )
       )
      ),
      ),
       SizedBox(
      height: 20,
        ),
        Text("Email",style: TextStyle(fontSize: 16,fontWeight: FontWeight.bold),),
    SizedBox(
      height: 10,
    ),
    TextField(
      decoration: InputDecoration(
        hintText: "Your email",
        hintStyle: TextStyle(color:  Color.fromARGB(255, 140, 139, 137) ),
        filled: true,
       fillColor:   Color.fromARGB(255, 249, 248, 248),
       enabledBorder: OutlineInputBorder(
        borderRadius: BorderRadius.circular(12),
        borderSide: BorderSide(
          color: const Color.fromARGB(255, 180, 179, 179),
          width: 1
        )
       )
       )
      ),
      SizedBox(
      height: 25,
    ),
    Container(
      width: double.infinity,
      child:ElevatedButton(onPressed: (){},
          style: ElevatedButton.styleFrom(
            backgroundColor:  Color.fromARGB(255, 76, 62, 124),
            padding: EdgeInsets.symmetric(vertical: 13),
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(25)
            )
          ),
           child:Text("Save Changes",style: TextStyle(fontSize: 20,fontWeight: FontWeight.bold,color: Colors.white),)),
      ), 
          ],
        )
    ),
    );
  }
}