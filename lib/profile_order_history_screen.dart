import 'package:flutter/material.dart';

class ProfileOrderHistoryScreen extends StatefulWidget {
  const new({super.key});

  @override
  State<ProfileOrderHistoryScreen> createState() => _ProfileOrderHistoryScreenState();
}

class _ProfileOrderHistoryScreenState extends State<ProfileOrderHistoryScreen> {
  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 4,
       child: Scaffold(
         backgroundColor: Colors.white,
      appBar: AppBar(
        backgroundColor: Colors.transparent,
        title: Text("Order History",style: TextStyle(fontSize: 20,fontWeight: FontWeight.bold),),
        centerTitle: true,
      ),
      body: SingleChildScrollView(
        child: Padding(padding: EdgeInsets.symmetric(horizontal: 16),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            SizedBox(height: 16,),
            Text("October 2021",style: TextStyle(fontSize: 18,fontWeight: FontWeight.bold),),
            SizedBox(height: 12,),
            Container(
              padding: EdgeInsets.symmetric(vertical: 8),
            decoration: BoxDecoration(
              color: Colors.white,
              borderRadius: BorderRadius.circular(12),
              border: Border.all(
                color: Colors.grey,
                width: 1
              )
            ),
            child: ListView.separated(
              shrinkWrap: true,
              physics: BouncingScrollPhysics(),
              itemCount: 3,
              separatorBuilder: (context,index){
               return Divider(height: 1,
                thickness: 0.8,);
              },
              itemBuilder: (context,index){
              return ListTile(
                contentPadding: EdgeInsets.symmetric(horizontal: 16,vertical: 4),
                leading:ClipRRect(
                      borderRadius: BorderRadiusGeometry.circular(8),
                      child: Image.asset("assets/images/category.png",width: 60,height: 60,fit: BoxFit.cover,),
                    ), 
                title: Text("In in amet ultrices sit.",style: TextStyle(fontSize: 18,fontWeight: FontWeight.bold),), 
                subtitle: Padding(padding: EdgeInsets.only(top: 4),
                child: Row(
                  children: [
                    Text("Delivered",style: TextStyle(color: Colors.green),),
                    SizedBox(width: 16,),
                    Text("1 items",style: TextStyle(color: Colors.grey),)
                  ],
                ),),
              );
            }),
                      )
          ],
        ),
        ),
      ),
       ));
  }
}