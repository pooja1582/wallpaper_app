import 'package:flutter/material.dart';
class myHomepage extends StatelessWidget {
  const myHomepage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(

     body:Column(children: [
       SizedBox(height: 100,),
       Row(
         children: [
           SizedBox(width: 30,),
           Container(
             height: 45,
             width: 300,
             decoration: BoxDecoration(
               color: Colors.grey.shade50,
               borderRadius: BorderRadius.circular(14)
             ),
             child: Padding(
               padding: const EdgeInsets.only(left: 20),
               child: TextField(
                 decoration: InputDecoration(
                   hintText: "Find Wallpapers",
                   suffixIcon: Icon(Icons.search),
                   border: InputBorder.none
                 ),
               ),
             ),
           ),
         ],
       ),
       SizedBox(height: 20,),
       Row(
         children: [
           SizedBox(width: 40,),
           Text("Best of The month",style: TextStyle(fontSize: 18,fontWeight: FontWeight.bold),),
         ],
       ),
       SizedBox(height: 20,),
       SingleChildScrollView(
         scrollDirection: Axis.horizontal,
         child: Row(children: [
           SizedBox(width: 40,),
           Container(
             clipBehavior: Clip.antiAlias,
             height: 150,
             width: 120,
             decoration: BoxDecoration(
               borderRadius: BorderRadius.circular(12),
               //color: Colors.blue
             ),
             child: Image.network("https://images.pexels.com/photos/2486168/pexels-photo-2486168.jpeg?cs=srgb&dl=pexels-roberto-nickson-2486168.jpg&fm=jpg",fit: BoxFit.cover,),
           ),
           SizedBox(width: 20,),
           Container(
             clipBehavior: Clip.antiAlias,
             height: 150,
             width: 120,
             decoration: BoxDecoration(
               borderRadius: BorderRadius.circular(12),
               //color: Colors.blue
             ),
             child: Image.network("https://images.unsplash.com/photo-1559583985-c80d8ad9b29f?ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxjb2xsZWN0aW9uLXBhZ2V8MXwxMDY1OTc2fHxlbnwwfHx8fHw%3D&w=1000&q=80",fit: BoxFit.cover,),
           ),
           SizedBox(width: 20,),
           Container(
             clipBehavior: Clip.antiAlias,
             height: 150,
             width: 120,
             decoration: BoxDecoration(
               borderRadius: BorderRadius.circular(12),
               //color: Colors.blue
             ),
             child: Image.network("https://images.unsplash.com/photo-1559583985-c80d8ad9b29f?ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxjb2xsZWN0aW9uLXBhZ2V8MXwxMDY1OTc2fHxlbnwwfHx8fHw%3D&w=1000&q=80",fit: BoxFit.cover,),
           ),
           SizedBox(width: 20,),
           Container(
             clipBehavior: Clip.antiAlias,
             height: 150,
             width: 120,
             decoration: BoxDecoration(
               borderRadius: BorderRadius.circular(12),
               //color: Colors.blue
             ),
             child: Image.network("https://images.unsplash.com/photo-1559583985-c80d8ad9b29f?ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxjb2xsZWN0aW9uLXBhZ2V8MXwxMDY1OTc2fHxlbnwwfHx8fHw%3D&w=1000&q=80",fit: BoxFit.cover,),
           )
         ],),
       ),
       SizedBox(height: 20,
       ),
      Row(
        children: [
          SizedBox(
            width: 40,
          ),
          Text("The color tone",style: TextStyle(fontSize: 20,fontWeight: FontWeight.bold),)
        ],
      ),

       SizedBox(
         height: 20,
       ),
       SingleChildScrollView(
         scrollDirection: Axis.horizontal,
         child: Row(

           children: [
             SizedBox(
               width: 40,
             ),
             Container(
               clipBehavior: Clip.antiAlias,
               decoration: BoxDecoration(
                 color: Colors.blue,
                 borderRadius: BorderRadius.circular(4)
               ),
               width: 40,height: 40,
             ),
             SizedBox(
               width: 10,
             ),
             Container(
               clipBehavior: Clip.antiAlias,
               decoration: BoxDecoration(
                   color: Colors.orange,
                   borderRadius: BorderRadius.circular(4)
               ),
               width: 40,height: 40,
             ), SizedBox(
               width: 10,
             ),
             Container(
               clipBehavior: Clip.antiAlias,
               decoration: BoxDecoration(
                   color: Colors.yellow,
                   borderRadius: BorderRadius.circular(4)
               ),
               width: 40,height: 40,
             ), SizedBox(
               width: 10,
             ),
             Container(
               clipBehavior: Clip.antiAlias,
               decoration: BoxDecoration(
                   color: Colors.red,
                   borderRadius: BorderRadius.circular(4)
               ),
               width: 40,height: 40,
             ), SizedBox(
               width: 10,
             ),
             Container(
               clipBehavior: Clip.antiAlias,
               decoration: BoxDecoration(
                   color: Colors.purple,
                   borderRadius: BorderRadius.circular(4)
               ),
               width: 40,height: 40,
             ), SizedBox(
               width: 10,
             ),
             Container(
               clipBehavior: Clip.antiAlias,
               decoration: BoxDecoration(
                   color: Colors.yellowAccent,
                   borderRadius: BorderRadius.circular(4)
               ),
               width: 40,height: 40,
             ), SizedBox(
               width: 10,
             ),
             Container(
               clipBehavior: Clip.antiAlias,
               decoration: BoxDecoration(
                   color: Colors.brown,
                   borderRadius: BorderRadius.circular(4)
               ),
               width: 40,height: 40,
             ), SizedBox(
               width: 10,
             ),
             Container(
               clipBehavior: Clip.antiAlias,
               decoration: BoxDecoration(
                   color: Colors.pink,
                   borderRadius: BorderRadius.circular(4)
               ),
               width: 40,height: 40,
             ), SizedBox(
               width: 10,
             ),Container(
               clipBehavior: Clip.antiAlias,
               decoration: BoxDecoration(
                   color: Colors.deepPurple,
                   borderRadius: BorderRadius.circular(4)
               ),
               width: 40,height: 40,
             ),




      ]
    ),
       ),
     SizedBox(
       height: 20,
     ),
     Row(
       children: [
         SizedBox(
           width: 40,
         ),
         Text("Categories",style: TextStyle(fontSize: 20,fontWeight: FontWeight.bold),)
       ],
     ),

       

              ],
            )

    );


        
  }
}
