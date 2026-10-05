import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

class SplashScreen extends StatefulWidget {
  const new({super.key});

  @override
  State<SplashScreen> createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  void initState(){
    super.initState();
    goNext();
  }
  void goNext(){
    Future.delayed(Duration(seconds: 3),(){
if(mounted){
  Navigator.pushReplacementNamed(context, "introduction_screen1");
}
    });
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
backgroundColor: Color(0xFF54408c),
body: Stack(
  children: [
    Container(
      alignment: Alignment.bottomLeft,
child: Opacity(opacity: 0.02,
    child: SvgPicture.asset("assets/icons/logo.svg",width: 350,height: 350,),
    )
    ),
 Center(
  child:Row(
    mainAxisAlignment: MainAxisAlignment.center,
    children: [
SvgPicture.asset("assets/icons/logo.svg",width: 36,height: 36,),
SizedBox(width: 12),
Text("Bazar.          ",style: TextStyle(color: Colors.white , fontSize: 32 , fontWeight: FontWeight.bold),)
    ],
  ),
),
  ],
)
    );
  }
}