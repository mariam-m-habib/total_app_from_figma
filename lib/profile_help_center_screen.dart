import 'package:flutter/material.dart';

class ProfileHelpCenterScreen extends StatefulWidget {
  const new({super.key});

  @override
  State<ProfileHelpCenterScreen> createState() => _ProfileHelpCenterScreenState();
}

class _ProfileHelpCenterScreenState extends State<ProfileHelpCenterScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        backgroundColor:  Color.fromARGB(255, 76, 62, 124),
        elevation: 0,
       
    centerTitle: true,
      ),
      body: Column(
        children: [
          Container(
            width: double.infinity,
            height: 140,
            color:  Color.fromARGB(255, 76, 62, 124),
            padding: EdgeInsets.symmetric(horizontal: 16),
            child:Column(
              children: [
                Text('Help Center',style: TextStyle(fontSize: 28,color: Colors.white, fontWeight: FontWeight.bold),),
                SizedBox(height: 15,),
                Text(
                        'Tell us how we can help 👋\nChapter are standing by for service & support!',
                        textAlign: TextAlign.center,
                        style: TextStyle(color: Colors.white70, fontSize: 17),
                      ),
              ],
            ), 
          ),
          SizedBox(height: 20,),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              Container(
                width: 160,
                height: 160,
                padding:  EdgeInsets.all(16.0),
                decoration: BoxDecoration(
               color:  Color.fromARGB(255, 243, 242, 242),
               borderRadius: BorderRadius.circular(16),
                ),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    CircleAvatar(
                radius: 24,
                backgroundColor: Colors.white,
                child: Icon(Icons.email,color: Color.fromARGB(255, 76, 62, 124),),
              ),
              SizedBox(height: 16),
              Text('Email',style: TextStyle( fontSize: 16,fontWeight: FontWeight.bold,),),
              Text('Send to your email',style: TextStyle(fontSize: 12,color: Colors.grey,),),
                  ],
                ),
              ),
               Container(
                width: 160,
                height: 160,
                padding:  EdgeInsets.all(16.0),
                decoration: BoxDecoration(
               color:  Color.fromARGB(255, 243, 242, 242),
               borderRadius: BorderRadius.circular(16),
                ),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    CircleAvatar(
                radius: 24,
                backgroundColor: Colors.white,
                child: Icon(Icons.phone,color: Color.fromARGB(255, 76, 62, 124),),
              ),
              SizedBox(height: 16),
              Text('Phone Number',style: TextStyle( fontSize: 16,fontWeight: FontWeight.bold,),),
              Text('Send to your phone',style: TextStyle(fontSize: 12,color: Colors.grey,),),
                  ],
                ),
              )
            ],
          )
        ],
      ),
    );
  }
}