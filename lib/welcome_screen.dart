import 'package:flutter/material.dart';

class WelcomeScreen extends StatefulWidget {
  const WelcomeScreen({super.key});

  @override
  State<WelcomeScreen> createState() => _WelcomeScreenState();
}

class _WelcomeScreenState extends State<WelcomeScreen> { 
  bool visible = false;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: SingleChildScrollView(
        child: Padding(
      padding:  EdgeInsets.symmetric(
            vertical: 80,
            horizontal: 24,
          ),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
      children: [
               Row(
                children: [
            Text(
                    "Welcome Back",
                    style: TextStyle(fontSize: 28, fontWeight: FontWeight.bold),
              ),
                  Text("👋", style: TextStyle(fontSize: 26)),
                ],
        ),
               SizedBox(height: 10),
             Text(
                "Sign to your account",
           style: TextStyle(
                  fontSize: 17,
                 color: Color.fromARGB(255, 140, 139, 137),
                ),
              ),
           SizedBox(height: 30),
               Text("Email", style: TextStyle(fontSize: 16)),
             SizedBox(height: 10),
              TextField(
                decoration: InputDecoration(
              hintText: "Your email",
                  hintStyle:  TextStyle(
                color: Color.fromARGB(255, 140, 139, 137),
                  ),
             filled: true,
                  fillColor:  Color.fromARGB(255, 249, 248, 248),
                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(12),
                    borderSide: BorderSide.none,
                  ),
                ),
              ),
               SizedBox(height: 20),
               Text("Password", style: TextStyle(fontSize: 16)),
               SizedBox(height: 10),
              TextField(
                obscureText: !visible,
                decoration: InputDecoration(
                  hintText: "Your password",
                  hintStyle:  TextStyle(
                    color: Color.fromARGB(255, 140, 139, 137),
                  ),
                  filled: true,
                  fillColor:  Color.fromARGB(255, 249, 248, 248),
                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(12),
                    borderSide: BorderSide.none,
                  ),
                  suffixIcon: IconButton(
                    icon: Icon(
                      visible ? Icons.visibility : Icons.visibility_off,
                      color:  Color.fromARGB(255, 140, 139, 137),
                    ),
                    onPressed: () {
                      setState(() {
                        visible = !visible;
                      });
                    },
                  ),
                ),
              ),
               SizedBox(height: 15),
               Text(
                "Forgot Password?",
                style: TextStyle(
                  fontSize: 16,
                  color: Color.fromARGB(255, 76, 62, 124),
                ),
              ),
               SizedBox(height: 20),
              SizedBox(
                width: double.infinity,
                child: ElevatedButton(
                  onPressed: () {
                     Navigator.pushNamed(context, "main");
                  },
                  style: ElevatedButton.styleFrom(
                    backgroundColor:  Color.fromARGB(255, 76, 62, 124),
                    padding:  EdgeInsets.symmetric(vertical: 13),
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(25),
                    ),
                  ),
                  child:  Text(
                    "Login",
                    style: TextStyle(
                      fontSize: 20,
                      fontWeight: FontWeight.bold,
                      color: Colors.white,
                    ),
                  ),
                ),
              ),
               SizedBox(height: 25),
               Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text(
                    "Don’t have an account?",
                    style: TextStyle(
                      fontSize: 17,
                      color: Color.fromARGB(255, 140, 139, 137),
                    ),
                  ),
                  GestureDetector(
                   onTap: () {
                    Navigator.pushNamed(context, "sign_up_screen");
                    },
                   child:  Text(
                     "Sign Up", style: TextStyle( fontSize: 18, fontWeight: FontWeight.bold, color: Color(0xFF54408C), ),
                      ),
                     )
                ],
              ),
               SizedBox(height: 35),
               Row(
                children: [
                  Expanded(
                    child: Divider(
                      color: Color.fromARGB(164, 140, 139, 137),
                    ),
                  ),
                  Text(
                    " Or with ",
                    style: TextStyle(
                      fontSize: 14,
                      color: Color.fromARGB(164, 140, 139, 137),
                    ),
                  ),
                  Expanded(
                    child: Divider(
                      color: Color.fromARGB(164, 140, 139, 137),
                    ),
                  ),
                ],
              ),
               SizedBox(height: 30),
              SizedBox(
                width: double.infinity,
                child: ElevatedButton(
                  onPressed: () {},
                  style: ElevatedButton.styleFrom(
                    backgroundColor: Colors.white,
                    padding:  EdgeInsets.symmetric(vertical: 13),
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(25),
                    ),
                  ),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Image.asset(
                        "assets/icons/google.png",
                        height: 20,
                        width: 20,
                      ),
                       Text(
                        "    Sign in with Google",
                        style: TextStyle(fontSize: 16, color: Colors.black),
                      ),
                    ],
                  ),
                ),
              ),
               SizedBox(height: 15),
              SizedBox(
                width: double.infinity,
                child: ElevatedButton(
                  onPressed: () {},
                  style: ElevatedButton.styleFrom(
                    backgroundColor: Colors.white,
                    padding:  EdgeInsets.symmetric(vertical: 13),
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(25),
                    ),
                  ),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Image.asset(
                        "assets/icons/apple.png",
                        height: 20,
                        width: 20,
                      ),
                       Text(
                        "    Sign in with Apple",
                        style: TextStyle(fontSize: 16, color: Colors.black),
                      ),
                    ],
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}