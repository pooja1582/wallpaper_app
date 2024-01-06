import 'package:flutter/material.dart';
import 'package:wallpaper_ui/third_page.dart';
class SecondPage extends StatefulWidget {
  List<String> listImage = [
    "https://img.freepik.com/free-photo/high-angle-view-beach-sea-sunlight-great-backgrounds-wallpapers_181624-19559.jpg",
    "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcQSdfiZGsSQSktAfuG6R2LYUhBW54MMKVQbXTowQz1WTnfDdvrCEPWmlo_c1LtxysYcvy4&usqp=CAU",
    "https://e0.pxfuel.com/wallpapers/291/700/desktop-wallpaper-sunset-brown-sand-waves-seaside-android-seaside-oregon.jpg",
    "https://e1.pxfuel.com/desktop-wallpaper/428/1021/desktop-wallpaper-twilight-coast-beach-ocean-wave-seagull-pinterest-beach-sea-sunset-thumbnail.jpg",
    "https://e0.pxfuel.com/wallpapers/400/787/desktop-wallpaper-iphone-6-sunset-sea-nature-orange-summer-sky-bird-summer-birds-thumbnail.jpg",
    "https://e1.pxfuel.com/desktop-wallpaper/275/161/desktop-wallpaper-sunset-ocean-group-beach-sea-sunset-thumbnail.jpg",
    "https://archziner.com/wp-content/uploads/2021/06/aerial-photo-of-waves-crashing-into-empty-beach-with-sand-beach-desktop-wallpaper.jpg",
    "https://rare-gallery.com/thumbs/276026-wallpaper-720-1440.jpg",
    "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcSHhFqFCrRFVwO436XT2NcjJSgBXBpu5l6CkC4fVbcS2Gt85_qEn0V1994i-4_yTVM-RbM&usqp=CAU",
    "https://a-static.besthdwallpaper.com/sunset-over-mcway-falls-in-california-wallpaper-1366x768-26664_46.jpg",
  ];
   SecondPage({super.key});

  @override
  State<SecondPage> createState() => _SecondPageState();
}

class _SecondPageState extends State<SecondPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
body: Column(mainAxisAlignment: MainAxisAlignment.start,
  crossAxisAlignment: CrossAxisAlignment.start,
  children: [SizedBox(
    height: 50,
  ),
    Text("Nature",style: TextStyle(fontSize: 40,fontWeight: FontWeight.w600),),
    Row(
      children: [

        Text("36 Wallpaper available",style: TextStyle(fontSize: 15,color: Colors.grey,fontWeight: FontWeight.w600),)
      ],
    ),
    SizedBox(height: 700,
      child: Expanded(
        child: GridView.builder(
            itemCount: widget.listImage.length,
            gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(crossAxisCount: 2,
            childAspectRatio: 9/14,
            crossAxisSpacing: 10,
              mainAxisSpacing: 10
            ),
            itemBuilder: (context,index){
             return GestureDetector(
               onTap: (){
                 Navigator.push(context, MaterialPageRoute(builder: (context)=>ThirdPage(url: widget.listImage[index])));
               },
               child: Container(
                 margin: EdgeInsets.only(left: index%2==0?10:0 ,
                     right: index%2==1?10:0),
                 height: 200,width: 70,
                 decoration: BoxDecoration(
                   borderRadius: BorderRadius.circular(20),
                   image: DecorationImage(
                     fit: BoxFit.cover,
                     image: NetworkImage(widget.listImage[index])
                   )
                 ),
               ),
             );
            }),
      ),
    )
  ],
),
    );
  }
}
