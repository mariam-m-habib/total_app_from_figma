import 'package:flutter/material.dart';

class CongratulationScreen extends StatelessWidget {
  const new({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: Center(
        child: Column(
          children: [
            SizedBox(
              height: 250,
            ),
            Image.asset("assets/images/Group.png"),
            SizedBox(height: 40,),
            Text("Congratulation!",style: TextStyle(fontSize: 28,fontWeight: FontWeight.bold),),
            SizedBox(height: 15,),
            Text("your account is complete, please enjoy the \nbest menu from us.",textAlign: TextAlign.center,style: TextStyle(fontSize:18,color: const Color.fromARGB(255, 160, 160, 159)),),
            SizedBox(height: 60,),
             Container(
      width: 380,
      child:ElevatedButton(onPressed: (){
        Navigator.pushNamed(context, "main");
      },
          style: ElevatedButton.styleFrom(
            backgroundColor: const Color.fromARGB(255, 76, 62, 124),
            padding: EdgeInsets.symmetric(vertical: 13),
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(25)
            )
          ),
           child:Text("Get Started",style: TextStyle(fontSize: 20,fontWeight: FontWeight.bold,color: Colors.white),)),
      ),
          ],
        ),
      ),
    );
  }
}