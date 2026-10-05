import 'package:flutter/material.dart';

class SignUpScreen extends StatefulWidget {
  const new({super.key});

  @override
  State<SignUpScreen> createState() => _SignUpScreenState();
}

class _SignUpScreenState extends State<SignUpScreen> {
  bool visible = false;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body:Padding(padding: EdgeInsetsGeometry.symmetric(
        vertical: 40,
        horizontal: 24),
        child: Column(
crossAxisAlignment: CrossAxisAlignment.start,
    children: [
     GestureDetector(
      onTap: () {
    Navigator.pushNamed(context, "welcome_screen");
           },
        child:Icon(Icons.arrow_back),
          ),
      SizedBox(
        height: 30,
      ),
          Text("Sign Up",style: TextStyle(fontSize: 28,fontWeight: FontWeight.bold),),
      SizedBox(
height: 10,
      ),
      Text("Create account and choose favorite menu",style: TextStyle(fontSize: 17,color: const Color.fromARGB(255, 140, 139, 137)),),
    SizedBox(
      height: 30,
    ),
     Text("Name",style: TextStyle(fontSize: 16),),
    SizedBox(
      height: 10,
    ),
    TextField(
      decoration: InputDecoration(
        hintText: "Your name",
        hintStyle: TextStyle(color: const Color.fromARGB(255, 140, 139, 137) ),
        filled: true,
       fillColor:  const Color.fromARGB(255, 249, 248, 248),
       border: OutlineInputBorder(
        borderRadius: BorderRadius.circular(12),
        borderSide: BorderSide.none
       )
      ),
    ),
    SizedBox(
      height: 20,
    ),
    Text("Email",style: TextStyle(fontSize: 16),),
    SizedBox(
      height: 10,
    ),
    TextField(
      decoration: InputDecoration(
        hintText: "Your email",
        hintStyle: TextStyle(color: const Color.fromARGB(255, 140, 139, 137) ),
        filled: true,
       fillColor:  const Color.fromARGB(255, 249, 248, 248),
       border: OutlineInputBorder(
        borderRadius: BorderRadius.circular(12),
        borderSide: BorderSide.none
       )
      ),
    ),
    SizedBox(
      height: 20,
    ),
    Text("Password",style: TextStyle(fontSize: 16),),
    SizedBox(
      height: 10,
    ),
    TextField(
      obscureText: !visible,
      decoration: InputDecoration(
        hintText: "Your password",
        hintStyle: TextStyle(color: const Color.fromARGB(255, 140, 139, 137) ),
        filled: true,
       fillColor:  const Color.fromARGB(255, 249, 248, 248),
       border: OutlineInputBorder(
        borderRadius: BorderRadius.circular(12),
        borderSide: BorderSide.none
       ),
       suffixIcon:IconButton(
         icon: Icon(
          visible ? Icons.visibility:Icons.visibility_off,
          color:  const Color.fromARGB(255, 140, 139, 137),
         ),
         onPressed: (){
          visible=!visible;
          setState(() {});
         },
       )
      ),
    ),
    SizedBox(
      height: 30,
    ),
    Container(
      width: double.infinity,
      child:ElevatedButton(onPressed: (){
        Navigator.pushNamed(context, "verification_screen");
      },
          style: ElevatedButton.styleFrom(
            backgroundColor: const Color.fromARGB(255, 76, 62, 124),
            padding: EdgeInsets.symmetric(vertical: 13),
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(25)
            )
          ),
           child:Text("Register",style: TextStyle(fontSize: 20,fontWeight: FontWeight.bold,color: Colors.white),)),
      ), 
      SizedBox(
        height: 25,
      ),
      Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Text("Have an account?",style: TextStyle(fontSize: 17,color: const Color.fromARGB(255, 140, 139, 137) ),),
          GestureDetector(
           onTap: () {
             Navigator.pushNamed(context, "welcome_screen");
              },
             child: const Text("Sign In",style: TextStyle(fontSize: 18,fontWeight: FontWeight.bold,color: Color(0xFF54408C),
    ),
  ),
)
        ],
      ),
      SizedBox(
        height: 170,
      ),
      Center(
        child: Column(
          children: [
            Text("By clicking Register, you agree to our",style: TextStyle(fontSize: 15,color: const Color.fromARGB(255, 140, 139, 137))),
            Text("Terms and Data Policy.",style: TextStyle(fontSize: 16,color:  Color.fromARGB(255, 76, 62, 124),),)
          ],
        ),
      )
    ],
  ),)
    );
  }
}