import 'package:flutter/material.dart';

class ProfileFavoritesScreen extends StatefulWidget {
  const new({super.key});

  @override
  State<ProfileFavoritesScreen> createState() => _ProfileFavoritesScreenState();
}

class _ProfileFavoritesScreenState extends State<ProfileFavoritesScreen> {
  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 4, 
      child: Scaffold(
        backgroundColor: Colors.white,
      appBar: AppBar(
        backgroundColor: Colors.transparent,
        title: Text("Your Favorites",style: TextStyle(fontSize: 20,fontWeight: FontWeight.bold),),
        centerTitle: true,
      ),
      body: Column(
        children: [Expanded(
              child: ListView.separated(
                padding: EdgeInsets.all(16),
              itemBuilder: (context,index){
                return ListTile(
                  contentPadding: EdgeInsets.symmetric(
                    vertical: 8,
                    horizontal: 16
                  ),
                  leading: ClipRRect(
                    borderRadius: BorderRadiusGeometry.circular(8),
                    child: Image.asset("assets/images/category.png",width: 60,height: 60,fit: BoxFit.cover,),
                  ),
                  title: Text("In in amet ultrices sit.",style: TextStyle(fontSize: 18,fontWeight: FontWeight.bold),),
                  trailing: IconButton(
                    onPressed: (){},
                    icon: Icon(Icons.favorite,
                    color:  Color.fromARGB(255, 76, 62, 124),)),
                  subtitle: Text("\$19.99",style: TextStyle( fontSize: 14,color: Color(0xff54408c))),
                );
              },
               separatorBuilder: (context,index){
                return Divider(height: 1,);
               },
               itemCount: 4))
               ],
      ),
      ));
  }
}