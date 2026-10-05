import 'package:flutter/material.dart';

class CategoryScreen extends StatefulWidget {
  const new({super.key});

  @override
  State<CategoryScreen> createState() => _CategoryScreenState();
}

class _CategoryScreenState extends State<CategoryScreen> {
  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 5,
      child: 
    Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        backgroundColor: Colors.transparent,
        leading: IconButton(onPressed: (){}, icon: Icon(Icons.search,size: 28,)),
        title: Text("Category",style: TextStyle(fontSize: 20,fontWeight: FontWeight.bold),),
        centerTitle: true,
        actions: [IconButton(onPressed: () {},icon: Icon(Icons.notifications_none_outlined, color: Colors.black, size: 28),),],
      ),
      body: Column(
          children: [
             TabBar(
              isScrollable: true,
              tabAlignment: TabAlignment.start,
              indicatorColor: Color(0xff54408c), 
              indicatorSize: TabBarIndicatorSize.label,
              labelColor: Colors.black,
              unselectedLabelColor: Color.fromARGB(255, 185, 183, 183),
              labelStyle: TextStyle(
                fontWeight: FontWeight.bold,
                fontSize: 18,
              ),
              unselectedLabelStyle: TextStyle(
                fontSize: 16,
              ),
              tabs: [
              Tab(text: "All"),
                Tab(text: "Novels"),
                Tab(text: "Self Love"),
                 Tab(text: "Science"),
                   Tab(text: "Romantic"),
              ],
            ),
            Expanded(
              child: ListView.separated(
                padding: EdgeInsets.all(16),
              itemBuilder: (context,index){
                return ListTile(
                  leading: ClipRRect(
                    borderRadius: BorderRadiusGeometry.circular(8),
                    child: Image.asset("assets/images/category.png",width: 60,height: 60,fit: BoxFit.cover,),
                  ),
                  title: Text("In in amet ultrices sit.",style: TextStyle(fontSize: 18,fontWeight: FontWeight.bold),),
                  subtitle: Text("\$19.99",style: TextStyle( fontSize: 14,color: Color(0xff54408c))),
                );
              },
               separatorBuilder: (context,index){
                return Divider(height: 1,);
               },
               itemCount: 4))
            ],
          )));
  }
}