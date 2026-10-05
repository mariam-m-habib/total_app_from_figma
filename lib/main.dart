import 'package:flutter/material.dart';
import 'package:total_app_from_figma/category_screen.dart';
import 'package:total_app_from_figma/congratulation_screen.dart';
import 'package:total_app_from_figma/home_screen.dart';
import 'package:total_app_from_figma/introduction_screen1.dart';
import 'package:total_app_from_figma/introduction_screen2.dart';
import 'package:total_app_from_figma/introduction_screen3.dart';
import 'package:total_app_from_figma/profile_account_screen.dart';
import 'package:total_app_from_figma/profile_favorites_screen.dart';
import 'package:total_app_from_figma/profile_help_center_screen.dart';
import 'package:total_app_from_figma/profile_order_history_screen.dart';
import 'package:total_app_from_figma/profile_screen.dart';
import 'package:total_app_from_figma/sign_up_screen.dart';
import 'package:total_app_from_figma/splash_screen.dart';
import 'package:total_app_from_figma/verification_screen.dart';
import 'package:total_app_from_figma/welcome_screen.dart';

void main() {
  runApp(MaterialApp(
    debugShowCheckedModeBanner: false,
    routes: {
      "splashscreen":(_)=>SplashScreen(),
      "introduction_screen1":(_)=>IntroductionScreen1(),
      "introduction_screen2":(_)=>IntroductionScreen2(),
      "introduction_screen3":(_)=>IntroductionScreen3(),
      "welcome_screen":(_)=>WelcomeScreen(),
      "sign_up_screen":(_)=>SignUpScreen(),
      "verification_screen":(_)=>VerificationScreen(),
      "congratulation_screen":(_)=>CongratulationScreen(),
      "home":(_)=>HomeScreen(),
      "category":(_)=>CategoryScreen(),
      "profile":(_)=>ProfileScreen(),
      "main":(_)=>MainScreen(),
      "profileAccount":(_)=>ProfileAccountScreen(),
      "profileFavorites":(_)=>ProfileFavoritesScreen(),
      "profileOrderHistory":(_)=>ProfileOrderHistoryScreen(),
       "profileHelpCenter":(_)=>ProfileHelpCenterScreen()
    },
    initialRoute: "splashscreen",
  ));
}

class MainScreen extends StatefulWidget {
  const new({super.key});

  @override
  State<MainScreen> createState() => _MainScreenState();
}

class _MainScreenState extends State<MainScreen> {
  int index =0;
  List<Widget>screens=[HomeScreen(),CategoryScreen(),ProfileScreen()];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: screens[index],
      bottomNavigationBar: BottomNavigationBar(
        currentIndex: index,
        onTap: (newindex){
          index=newindex;
          setState(() {});
        },
        showSelectedLabels: true,
        showUnselectedLabels: true,
        type: BottomNavigationBarType.fixed,
        items: [
          BottomNavigationBarItem(icon: Icon(Icons.home),label:"home" ),
          BottomNavigationBarItem(icon: Icon(Icons.article),label: "category"),
          BottomNavigationBarItem(icon: Icon(Icons.person),label:"profile" )
        ]),
    );
  }
}
