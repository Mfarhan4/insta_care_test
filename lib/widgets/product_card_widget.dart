import 'package:flutter/material.dart';
import 'package:insta_task/config/screen_config.dart';

class ProductCard extends StatelessWidget {
  const ProductCard({Key? key,required this.image,required this.title, this.totalPrice}) : super(key: key);
final String image;
final String title;
final String? totalPrice;
  @override
  Widget build(BuildContext context) {
    return   Container(
      //height: 120,
        decoration: BoxDecoration(color: Colors.white,border: Border.all(color: Colors.black,),borderRadius: BorderRadius.circular(20)),

        child: Padding(
          padding: const EdgeInsets.only(left: 11.0,right: 0,top: 11,bottom: 0),
          child: Stack(
            alignment: Alignment.bottomRight,
            children: [
              Positioned(child: Image.asset(image,fit: BoxFit.fill,)),
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  const SizedBox(height: 6,),
                   Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Row(
                      children: [

                        Text(title,style: const TextStyle(fontWeight: FontWeight.bold,),),
                        totalPrice!=null?const Text(" \$49,99",style: TextStyle(  decoration: TextDecoration.lineThrough,
                          decorationStyle: TextDecorationStyle.solid,),):const SizedBox(),
                        const Text("  \$9,99",style: TextStyle(fontWeight: FontWeight.w400,
                        ),),
                      ],
                    ),
                  ),
                  const SizedBox(height: 6,),

                  Row(
                    children: [
                      Container(
                          decoration: BoxDecoration(color: Colors.grey.shade200,borderRadius: BorderRadius.circular(25)),
                          child: const Padding(
                            padding: EdgeInsets.symmetric(horizontal: 8.0,vertical: 3),
                            child: Row(
                              children: [
                                Icon(Icons.calendar_month),
                                SizedBox(width: 2,),
                                Text(" Live classes "),
                              ],
                            ),
                          )),
                      const SizedBox(width: 10,),
                      Container(
                          decoration: BoxDecoration(color: Colors.grey.shade200,borderRadius: BorderRadius.circular(25)),
                          child: const Padding(
                            padding: EdgeInsets.symmetric(horizontal: 8.0,vertical: 3),
                            child: Row(
                              children: [
                                Icon(Icons.catching_pokemon),
                                SizedBox(width: 2,),
                                Text("Weekly exams "),
                              ],
                            ),
                          )),
                    ],
                  ),
                  const SizedBox(height: 10,),
                  Row(
                    children: [
                      Container(
                          decoration: BoxDecoration(color: Colors.grey.shade200,borderRadius: BorderRadius.circular(25)),
                          child: const Padding(
                            padding: EdgeInsets.symmetric(horizontal: 8.0,vertical: 3),
                            child: Row(
                              children: [
                                Icon(Icons.video_collection_rounded),
                                SizedBox(width: 2,),
                                Text("40 Recorded videos"),
                              ],
                            ),
                          )),
                      const SizedBox(width: 10,),
                      Container(
                          decoration: BoxDecoration(color: Colors.grey.shade200,borderRadius: BorderRadius.circular(25)),
                          child: const Padding(
                            padding: EdgeInsets.symmetric(horizontal: 8.0,vertical: 3),
                            child: Row(
                              children: [
                                Icon(Icons.file_present),
                                SizedBox(width: 2,),
                                Text("Study notes "),
                              ],
                            ),
                          )),
                       SizedBox(width: ScreenConfig.blockWidth * 18,),
                    ],
                  ),
                  const SizedBox(height: 12,),
                ],
              ),
              Positioned(child: Padding(
                padding: const EdgeInsets.only(right: 10.0,bottom: 10),
                child: Container(decoration: BoxDecoration(color: Colors.indigo,borderRadius: BorderRadius.circular(25)) ,child: const Icon(Icons.play_arrow_outlined,color: Colors.white,size: 36,),),
              )),


            ],
          ),
        ));
  }
}
