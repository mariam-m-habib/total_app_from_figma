import 'package:flutter/material.dart';

class ProfileScreen extends StatefulWidget {
 const ProfileScreen({super.key});

  @override
  State<ProfileScreen> createState() => _ProfileScreenState();
}

class _ProfileScreenState extends State<ProfileScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        backgroundColor: Colors.transparent,
        title: Text("Profile",style: TextStyle(fontSize: 20,fontWeight: FontWeight.bold),),
        centerTitle: true,
      ),
      body: Column(
        children: [
          Divider(
            height: 1,
            thickness: 1,
          ),
          ListTile(
            contentPadding: EdgeInsets.symmetric(vertical: 16,horizontal: 32),
            leading: ClipRRect(
              borderRadius: BorderRadius.circular(999),
              child: Image.asset("assets/images/john2.png"),
            ),
            title: Text("John Doe",style: TextStyle(fontSize: 18,fontWeight: FontWeight.bold),),
            subtitle: Text("(+1) 234 567 890",style: TextStyle(fontSize: 14,color: const Color.fromARGB(255, 141, 140, 140)),),
            trailing: TextButton(onPressed: (){
              showModalBottomSheet(context: context,
              backgroundColor: Colors.white, 
              shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.vertical(top: Radius.circular(24)),),
              builder: (BuildContext context){
                return Padding(
                  padding: EdgeInsets.all(20.0),
                  child: Column(
                    mainAxisSize: MainAxisSize.min,
                    children: [
                      Container(width: 40,
                        height: 4,
                        decoration: BoxDecoration(
                        color: Colors.grey[300],
                        borderRadius: BorderRadius.circular(10),),
                        ),
                        SizedBox(height: 20),
                        Align(
                        alignment: Alignment.centerLeft,
                        child: Text('Logout',style: TextStyle(fontSize: 20,fontWeight: FontWeight.bold,),),
                        ),
                        SizedBox(height: 12),
                        Align(
                        alignment: Alignment.centerLeft,
                        child: Text('Lorem Ipsum is simply dummy text of the\n printing and typesetting industry.',style: TextStyle(fontSize: 18,),),
                        ),
                   SizedBox(height: 24),
                   SizedBox(
                width: double.infinity,
                height: 50,
                child: ElevatedButton(
                  style: ElevatedButton.styleFrom(
                    backgroundColor:  Color(0xFF4A3780),     
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(16),
                    ),
                  ),
                  onPressed: () {},
                  child: Text('Logout',style: TextStyle(color: Colors.white,fontSize: 16,fontWeight: FontWeight.bold,),),
                ),
              ),
              SizedBox(height: 12),
              SizedBox(
                width: double.infinity,
                height: 50,
                child: ElevatedButton(
                  style: ElevatedButton.styleFrom(
                    backgroundColor:  Color.fromARGB(255, 243, 243, 244),     
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(16),
                    ),
                  ),
                  onPressed: () {
                    Navigator.pop(context);
                  },
                  child: Text('Cancel',style: TextStyle(color:Color(0xFF4A3780),fontSize: 16,fontWeight: FontWeight.bold,),),
                ),
              ),
              SizedBox(height: 12,)
                   ],
                  ),
                );
              });
            }, child: Text("Logout",style: TextStyle(fontSize: 17,fontWeight: FontWeight.bold,color: const Color.fromARGB(255, 200, 79, 71)),)),
       ),
         Divider(
            height: 1,
            thickness: 1,
          ),
          ListTile(
            onTap: () {
              Navigator.pushNamed(context, "profileAccount");
            },
            contentPadding: EdgeInsets.symmetric(vertical: 8,horizontal: 16),
           leading: CircleAvatar(
           backgroundColor: const Color.fromARGB(255, 237, 236, 236),
           child: Icon(Icons.person, color: const Color.fromARGB(255, 76, 62, 124),),
           ),
           title: Text("My Account",style: TextStyle(fontWeight: FontWeight.bold, fontSize: 16),),
          trailing: Icon(Icons.arrow_forward_ios, size: 18, color: const Color.fromARGB(255, 141, 140, 140)),
           ),
           ListTile(
             onTap: () {
              Navigator.pushNamed(context,"profileFavorites" );
            },
            contentPadding: EdgeInsets.symmetric(vertical: 8,horizontal: 16),
           leading: CircleAvatar(
           backgroundColor: const Color.fromARGB(255, 237, 236, 236),
           child: Icon(Icons.favorite, color: const Color.fromARGB(255, 76, 62, 124),),
           ),
           title: Text("Your Favorites",style: TextStyle(fontWeight: FontWeight.bold, fontSize: 16),),
          trailing: Icon(Icons.arrow_forward_ios, size: 18, color: const Color.fromARGB(255, 141, 140, 140)),
           ),
            ListTile(
               onTap: () {
              Navigator.pushNamed(context,"profileOrderHistory" );
            },
            contentPadding: EdgeInsets.symmetric(vertical: 8,horizontal: 16),
           leading: CircleAvatar(
           backgroundColor: const Color.fromARGB(255, 237, 236, 236),
           child: Icon(Icons.article, color: const Color.fromARGB(255, 76, 62, 124),),
           ),
           title: Text("Order History",style: TextStyle(fontWeight: FontWeight.bold, fontSize: 16),),
          trailing: Icon(Icons.arrow_forward_ios, size: 18, color: const Color.fromARGB(255, 141, 140, 140)),
           ),
           ListTile(
             onTap: () {
              Navigator.pushNamed(context, "profileHelpCenter" );
            },
            contentPadding: EdgeInsets.symmetric(vertical: 8,horizontal: 16),
           leading: CircleAvatar(
           backgroundColor: const Color.fromARGB(255, 237, 236, 236),
           child: Icon(Icons.chat_bubble, color: const Color.fromARGB(255, 76, 62, 124),),
           ),
           title: Text("Help Center",style: TextStyle(fontWeight: FontWeight.bold, fontSize: 16),),
          trailing: Icon(Icons.arrow_forward_ios, size: 18, color: const Color.fromARGB(255, 141, 140, 140)),
           ),
       ],
      ),
    );
  }
}