import 'package:flutter/material.dart';
class VerificationScreen extends StatefulWidget {
  const new({super.key});

  @override
  State<VerificationScreen> createState() => _VerificationScreenState();
}

class _VerificationScreenState extends State<VerificationScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
    backgroundColor: Colors.white, // أو Colors.transparent
    elevation: 0, // لإلغاء الظل
    iconTheme: const IconThemeData(color: Colors.black), // يضمن إن أيكونة السهم تظهر باللون الأسود
  ),
      body: Center(
        child: Column(
          children: [
SizedBox(
  height: 120,
),
            Text("Verification Email",style: TextStyle(fontSize: 28,fontWeight: FontWeight.bold),),
            SizedBox(
              height: 12,
            ),
            Text("Please enter the code we just sent to email",style: TextStyle(fontSize: 17,color: const Color.fromARGB(255, 160, 160, 159)),),
            SizedBox(
              height: 8,
            ),
            Text("Johndoe@gmail.com",style: TextStyle(fontSize:17),),
            SizedBox(
              height: 30,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                SizedBox(
                  width:60,
                  height: 60,
                  child: TextField(
                    textAlign: TextAlign.center,
                    keyboardType: TextInputType.number,
                    maxLength: 1,
                    decoration: InputDecoration(
                      filled: true,
                      fillColor: const Color.fromARGB(255, 243, 242, 242),
                      border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(12),
                        borderSide: BorderSide.none
                      ),
                      counterText: ""
                    ),
                    onChanged: (value){
                      if(value.length==1){
                        FocusScope.of(context).nextFocus();
                      }
                    },
                  ),
                ),
                SizedBox(width: 10,),
                SizedBox(
                  width:60,
                  height: 60,
                  child: TextField(
                    textAlign: TextAlign.center,
                    keyboardType: TextInputType.number,
                    maxLength: 1,
                    decoration: InputDecoration(
                      filled: true,
                      fillColor: const Color.fromARGB(255, 243, 242, 242),
                      border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(12),
                        borderSide: BorderSide.none
                      ),
                      counterText: ""
                    ),
                    onChanged: (value){
                      if(value.length==1){
                        FocusScope.of(context).nextFocus();
                      }
                    },
                  ),
                ),
                SizedBox(width: 10,),
                SizedBox(
                  width:60,
                  height: 60,
                  child: TextField(
                    textAlign: TextAlign.center,
                    keyboardType: TextInputType.number,
                    maxLength: 1,
                    decoration: InputDecoration(
                      filled: true,
                      fillColor: const Color.fromARGB(255, 243, 242, 242),
                      border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(12),
                        borderSide: BorderSide.none
                      ),
                      counterText: ""
                    ),
                    onChanged: (value){
                      if(value.length==1){
                        FocusScope.of(context).nextFocus();
                      }
                    },
                  ),
                ),
                SizedBox(width: 10,),
                SizedBox(
                  width:60,
                  height: 60,
                  child: TextField(
                    textAlign: TextAlign.center,
                    keyboardType: TextInputType.number,
                    maxLength: 1,
                    decoration: InputDecoration(
                      filled: true,
                      fillColor: const Color.fromARGB(255, 243, 242, 242),
                      border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(12),
                        borderSide: BorderSide.none
                      ),
                      counterText: ""
                    ),
                    onChanged: (value){
                      if(value.length==1){
                        FocusScope.of(context).nextFocus();
                      }
                    },
                  ),
                ),
              ],
            ),
            SizedBox(height: 15,),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text("If you didn’t receive a code? ",style: TextStyle(fontSize:15,color: const Color.fromARGB(255, 160, 160, 159) )),
                Text("Resend",style: TextStyle(fontSize: 16,fontWeight: FontWeight.bold, color: Color.fromARGB(255, 76, 62, 124)),)
              ],
            ),
            SizedBox(
              height: 350,
            ),
            Container(
      width: 380,
      child:ElevatedButton(onPressed: (){
        Navigator.pushNamed(context, "congratulation_screen");
      },
          style: ElevatedButton.styleFrom(
            backgroundColor: const Color.fromARGB(255, 76, 62, 124),
            padding: EdgeInsets.symmetric(vertical: 13),
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(25)
            )
          ),
           child:Text("Continue",style: TextStyle(fontSize: 20,fontWeight: FontWeight.bold,color: Colors.white),)),
      ),
          ],
        ),
      ),
    );
  }
}