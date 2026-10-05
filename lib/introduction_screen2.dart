import 'package:flutter/material.dart';

class IntroductionScreen2 extends StatelessWidget {
  const new({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        backgroundColor: Colors.white,
        title: TextButton(
      onPressed: () {
        Navigator.pushReplacementNamed(context, "welcome_screen");
      },
      child: Text(
        "Skip",
        style: TextStyle(
          color: Color(0xFF54408c),
          fontSize: 15,
        ),
      ),
    ),
      ),
      body:SingleChildScrollView(
        padding: EdgeInsets.symmetric(horizontal: 24),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Image.asset("assets/images/bookish_soulmate.png",height: 400,width: 400,),
            Text("Your Bookish Soulmate\n Awaits",style: TextStyle(fontSize: 28, fontWeight:FontWeight.bold ),textAlign: TextAlign.center,) ,
            SizedBox(
              height: 15,
            ),
            Text("Let us be your guide to the perfect read.\n Discover books tailored to your tastes\n for a truly rewarding experience.",style: TextStyle(fontSize: 18,color: 
            Color.fromARGB(141, 51, 57, 54)),textAlign: TextAlign.center,),
             SizedBox(
              height: 30,
            ),
            Row( mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Container(
                  width: 5,
                  height: 5,
                  decoration: BoxDecoration(
                    color: Color.fromARGB(99, 51, 50, 52),
                    borderRadius: BorderRadiusGeometry.circular(5)
                  ),
                ),
            SizedBox(
                  width: 6,
                ),
                Container(
                  width: 8,
                  height: 8,
                  decoration: BoxDecoration(
                    color: Color(0xff54408c),
                    borderRadius: BorderRadiusGeometry.circular(8)
                  ),
                ),
                SizedBox(
                  width: 6,
                ),
                 Container(
                  width: 5,
                  height: 5,
                  decoration: BoxDecoration(
                    color: Color.fromARGB(99, 51, 50, 52),
                    borderRadius: BorderRadiusGeometry.circular(5)
                  ),
                ),
              ],
            ),
            SizedBox(
              height: 40,
            ),
            ElevatedButton(
              onPressed: (){
                Navigator.pushNamed(context, "introduction_screen3");
              },
             child:Text("Next",style: TextStyle(fontSize: 16,fontWeight: FontWeight.bold,color: Colors.white),),
             style: ElevatedButton.styleFrom(
              padding: EdgeInsets.symmetric(vertical: 30),
              backgroundColor: Color(0xff54408c),
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadiusGeometry.circular(12)
              )
             ),),
             SizedBox(
              height: 15,
             ),
             ElevatedButton(
              onPressed: (){
                 Navigator.pushNamed(context, "welcome_screen");
              },
             child:Text("Sign in",style: TextStyle(fontSize: 16,fontWeight: FontWeight.bold,color: Color(0xff54408c)),),
             style: ElevatedButton.styleFrom(
              padding: EdgeInsets.symmetric(vertical: 30),
              backgroundColor: Color.fromARGB(255, 244, 244, 247),
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadiusGeometry.circular(12)
              )
             ),),
          ]
            ),
        ),
      );
  }
}