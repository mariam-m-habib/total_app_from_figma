import 'package:flutter/material.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});
  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        backgroundColor: Colors.transparent,
        leading: IconButton(onPressed: (){}, icon: Icon(Icons.search,size: 28,)),
        title: Text("Home",style: TextStyle(fontSize: 20,fontWeight: FontWeight.bold),),
        centerTitle: true,
        actions: [IconButton(onPressed: () {},icon: Icon(Icons.notifications_none_outlined, color: Colors.black, size: 28),),],
      ),
      body: SingleChildScrollView(
        physics: BouncingScrollPhysics(),
        padding: EdgeInsets.symmetric(vertical: 12),
        child: Column(
          children: [
            Container(
              margin: EdgeInsets.all(16),
              padding: const EdgeInsets.only(left: 16),
              decoration: BoxDecoration(
                color: const Color.fromARGB(255, 246, 244, 244),
                borderRadius: BorderRadius.circular(16)
              ),
              child: Row(
                children: [
                  Expanded(child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text("Special Offer",style: TextStyle(fontSize: 18,fontWeight: FontWeight.bold),),
                      Text("Discount 25%",style: TextStyle(fontSize: 13),),
                      SizedBox(
                        height: 8,
                      ),
                      Container(
                        width: 110,
                        child:ElevatedButton(onPressed: (){},
          style: ElevatedButton.styleFrom(
            backgroundColor: const Color.fromARGB(255, 76, 62, 124),
            padding: EdgeInsets.symmetric(vertical: 5),
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(25)
            )
          ),
           child:Text("Order Now",style: TextStyle(fontSize: 14,fontWeight: FontWeight.bold,color: Colors.white),)),
                      )
                    ],
                  )),
                  ClipRRect(
                     borderRadius: BorderRadius.circular(10),
                    child: Image.asset('assets/images/book.png', width: 110,height: 140,fit: BoxFit.cover,),)
                ],
              ),
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Container(
                  width: 8,
                  height: 8,
                  decoration: BoxDecoration(
                    color: Color(0xff54408c),
                    borderRadius: BorderRadiusGeometry.circular(6)
                  ),
                ),
                SizedBox(
                  width: 6,
                ),
                Container(
                  width: 5,
                  height: 5,
                  decoration: BoxDecoration(
                    color: Color.fromARGB(99, 51, 50, 52),
                    borderRadius: BorderRadiusGeometry.circular(4)
                  ),
                ),
                SizedBox(
                  width: 6,
                ),
                 Container(
                  width: 5,
                  height: 5,
                  decoration: BoxDecoration(
                    color: Color.fromARGB(99, 51, 50, 52),
                    borderRadius: BorderRadiusGeometry.circular(4)
                  ),
                ),
              ],
            ),
            SizedBox(height: 10,),
            Padding( padding: const EdgeInsets.symmetric(horizontal: 20),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text("Top of Week",style: TextStyle(fontSize: 18,fontWeight: FontWeight.bold),),
                  TextButton(onPressed: (){}, child: Text("See all",style: TextStyle(fontSize: 16,color: Color(0xff54408c) ),))
                ],
              ),
            ),
            Padding(padding: EdgeInsetsGeometry.only(left: 20),
              child: SizedBox(
                height: 230,
                child: ListView.builder(
                  scrollDirection: Axis.horizontal,
                  itemCount: 5,
                  itemBuilder: (context,index){
                    return Container(
                      width: 130,
                      margin: EdgeInsets.only(right: 10),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          ClipRRect(
                            borderRadius: BorderRadius.circular(10),
                            child: Container(
                              height: 160,
                              width: 130,
                              child: Image.asset("assets/images/kite.png",fit: BoxFit.cover,),
                            ),
                          ),
                          SizedBox(height: 5,),
                          Text("The Kite Runner",style: TextStyle(fontSize: 15,fontWeight: FontWeight.bold),),
                          Text("\$14.99",style: TextStyle( fontSize: 14,color: Color(0xff54408c)),)
                        ],
                      ),
                    );
                  }),
              ),
            ),
            Padding( padding: const EdgeInsets.symmetric(horizontal: 20),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text("Best Vendors",style: TextStyle(fontSize: 18,fontWeight: FontWeight.bold),),
                  TextButton(onPressed: (){}, child: Text("See all",style: TextStyle(fontSize: 16,color: Color(0xff54408c) ),))
                ],
              ),
            ),
            Padding(padding: EdgeInsetsGeometry.only(left: 20),
              child: SizedBox(
                height: 90,
                child: ListView.builder(
                  scrollDirection: Axis.horizontal,
                  itemCount: 10,
                  itemBuilder: (context,index){
                    return Container(
                      width: 80,
                      height: 80,
                      margin: EdgeInsets.only(right: 10),
                      padding:EdgeInsets.all(14),
                      decoration: BoxDecoration(
                        color: Color.fromARGB(255, 246, 244, 244),
                        borderRadius: BorderRadius.circular(12)
                      ),
                      child: Image.asset("assets/images/WS.png",fit: BoxFit.contain,),
                    );
                  }),
              ),
            ),
            SizedBox(height: 15,),
            Padding( padding: const EdgeInsets.symmetric(horizontal: 20),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text("Authors",style: TextStyle(fontSize: 18,fontWeight: FontWeight.bold),),
                  TextButton(onPressed: (){}, child: Text("See all",style: TextStyle(fontSize: 16,color: Color(0xff54408c) ),))
                ],
              ),
            ),
            Padding(padding: EdgeInsetsGeometry.only(left: 20),
              child: SizedBox(
                height: 230,
                child: ListView.builder(
                  scrollDirection: Axis.horizontal,
                  itemCount: 10,
                  itemBuilder: (context,index){
                    return Container(
                      width: 130,
                      margin: EdgeInsets.only(right: 10),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          ClipRRect(
                            borderRadius: BorderRadius.circular(99),
                            child:Image.asset("assets/images/john.png",fit: BoxFit.cover,)
                          ),
                          SizedBox(height: 5,),
                          Text("John Freeman",style: TextStyle(fontSize: 15,fontWeight: FontWeight.bold),),
                          Text("Writer",style: TextStyle( fontSize: 14,),)
                        ],
                      ),
                    );
                  }),
              ),
            ),
          ],
        ),
      ),
    );
  }
}