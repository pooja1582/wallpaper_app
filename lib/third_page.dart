import 'package:flutter/material.dart';
class ThirdPage extends StatelessWidget {
  const ThirdPage({super.key, required this.url});
  final String url;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body:
        Container
          (
        decoration: BoxDecoration(
          image: DecorationImage(
            fit: BoxFit.cover,
            image: NetworkImage(url)
          )
        ),
          child: Column(mainAxisAlignment: MainAxisAlignment.end,
            children: [
              Row(
                children:
                [SizedBox(
                  width: 80,
                ),
                  Container(
                  height: 50,width: 50,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(11),
                    border: Border.all(color: Colors.black)

                  ),
                  child: Icon(Icons.info_outline,color: Colors.grey,),
                ),
                 SizedBox(
                   width: 30,
                 ),
                  Container(
                    height: 50,width: 50,
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(11),
                        border: Border.all(color: Colors.black)

                    ),
                    child: Icon(Icons.save_alt,color: Colors.grey,),
                  ),
                  SizedBox(
                    width: 30,
                  ),
                  Container(
                    height: 50,width: 50,
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(11),
                        border: Border.all(color: Colors.black),
                      color: Colors.blue

                    ),
                    child: Icon(Icons.save_alt,color: Colors.grey,),
                  ),

                ],
              )
            ],
          )

        ),


    );
  }
}
