import 'package:flutter/material.dart';
import 'package:wallpaper_ui/second_page.dart';

class FirstPage extends StatefulWidget {
  List<String> image = [
    "https://images.unsplash.com/photo-1531604250646-2f0e818c4f06?ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxjb2xsZWN0aW9uLXBhZ2V8MXwyNTM4MjA0fHxlbnwwfHx8fHw%3D&w=1000&q=80",
    "https://wallpapercave.com/uwp/uwp1091013.jpeg",
    "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcRoiTftXIF_YEjcTlXk6IkrsLS3Pvv14AGwv_H0jw47UcqiyM0kyyNHwlbYGT6NoFN45_8&usqp=CAU",
    "https://m.media-amazon.com/images/I/71JKg+hD1iL.jpg",
    "https://66.media.tumblr.com/55f2692dffe36e404fcf0efd3deecaa2/850dfb5ea25c5c03-fc/s640x960/c7e20d5692bfa634d506085e264de49661749b1d.jpg",
    "https://e0.pxfuel.com/wallpapers/353/73/desktop-wallpaper-beach-summer-ocean-trees-wind-flowing-sony-xperia-x-xz-z5-premium-background-and.jpg",
    "https://e0.pxfuel.com/wallpapers/722/853/desktop-wallpaper-sunset-beach-hawaii-iphone-at-beach-scene-thumbnail.jpg",
    "https://cdn.statically.io/img/wallpaperaccess.com/full/1205622.jpg",
    "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcTkhJ6kRBsQAhPK2N4f3HulL2A-1RxqHNOpgw&usqp=CAU",
    "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcTkhJ6kRBsQAhPK2N4f3HulL2A-1RxqHNOpgw&usqp=CAU",
  ];
  List<Color> color = [
    Colors.black,
    Colors.green,
    Colors.blue,
    Colors.black12,
    Colors.yellow,
    Colors.orangeAccent,
    Colors.red,
    Colors.purple,
  ];
  FirstPage({super.key});

  @override
  State<FirstPage> createState() => _FirstPageState();
}

class _FirstPageState extends State<FirstPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              SizedBox(
                height: 80,
              ),
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: TextField(
                  decoration: InputDecoration(
                      border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(21),
                      ),
                      hintText: "Find Wallpaper",
                      hintStyle: TextStyle(color: Colors.grey),
                      suffixIcon: Icon(
                        Icons.search,
                        color: Colors.grey,
                      )),
                ),
              ),
              SizedBox(
                height: 30,
              ),
              Column(
                children: [
                  Row(
                    children: [
                      SizedBox(
                        width: 20,
                      ),
                      Text(
                        "Best of the month",
                        style: TextStyle(fontSize: 20, fontWeight: FontWeight.w600),
                      ),
                    ],
                  ),
                  SizedBox(
                    height: 10,
                  ),
                  SizedBox(
                    height: 220,
                    child: ListView.builder(
                      itemCount: widget.image.length,
                      scrollDirection: Axis.horizontal,
                      itemBuilder: (context, index) => Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: Container(
                          width: 140,
                          decoration: BoxDecoration(
                            image: DecorationImage(
                                fit: BoxFit.cover,
                                image: NetworkImage(widget.image[index])),
                            borderRadius: BorderRadius.circular(21),
                            border: Border.all(color: Colors.black),
                          ),
                        ),
                      ),
                    ),
                  ),
                  SizedBox(
                    height: 20,
                  ),
                  Row(
                    children: [
                      SizedBox(
                        width: 20,
                      ),
                      Text(
                        "The color tone",
                        style: TextStyle(fontSize: 20, fontWeight: FontWeight.w600),
                      )
                    ],
                  ),
                  SizedBox(
                    height: 10,
                  ),
                  SizedBox(
                    height: 65,
                    child: ListView.builder(
                        itemCount: widget.color.length,
                        scrollDirection: Axis.horizontal,
                        itemBuilder: (context, index) => Padding(
                            padding: const EdgeInsets.all(8.0),
                            child: Container(
                              width: 50,
                              height: 40,
                              decoration: BoxDecoration(
                                color: widget.color[index],
                                borderRadius: BorderRadius.circular(11),
                              ),
                            ))),
                  ),
                  SizedBox(
                    height: 20,
                  ),
                  Row(
                    children: [
                      SizedBox(
                        width: 20,
                      ),
                      Text(
                        "Categories",
                        style: TextStyle(fontSize: 20, fontWeight: FontWeight.w600),
                      )
                    ],
                  ),
                  SizedBox(
                    height: 750,
                    child: GridView.builder(
                      physics: NeverScrollableScrollPhysics(),
                      itemCount: widget.image.length,

                        gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(crossAxisCount: 2,
                        childAspectRatio: 16/9,
                          mainAxisExtent: 130,
                          mainAxisSpacing: 10,
                          crossAxisSpacing: 10
                        ), itemBuilder: (context,index){
                    return  InkWell(
                      onTap: (){
                        Navigator.push(context, MaterialPageRoute(builder: (context)=>SecondPage()));
                      },
                      child: Container(
                       margin: EdgeInsets.only(left: index%2==0?10:0 ,
                       right: index%2==1?10:0),
                          decoration: BoxDecoration(
                         borderRadius: BorderRadius.circular(21),
                              image: DecorationImage(
                                fit: BoxFit.cover,
                                  image: NetworkImage(widget.image[index]))
                          ),

                        ),
                    );
                    }),
                  ),
                ],
              )



            ]),
      ),
    );
  }
}
