import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
import 'package:insta_task/config/screen_config.dart';
import 'package:insta_task/widgets/product_card_widget.dart';

class AllProductsPage extends StatefulWidget {
  const AllProductsPage({Key? key}) : super(key: key);

  @override
  State<AllProductsPage> createState() => _AllProductsPageState();
}

class _AllProductsPageState extends State<AllProductsPage> {
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(left: 15.0),
      child: SingleChildScrollView(

        child: Column(
          children: [
            const SizedBox(height: 20,),

           const Row(
             mainAxisAlignment: MainAxisAlignment.spaceBetween,
             children: [
             Text("ON SALE",style: TextStyle(fontWeight: FontWeight.bold),),

             Text("View all   ",style: TextStyle(fontWeight: FontWeight.w300,fontSize: 12),)
           ],),
            const SizedBox(height: 16,),



           SizedBox(
             height:ScreenConfig.blockHeight * 16,
            // width: ScreenConfig.blockWidth * 100,
             child: ListView.builder(
             //  shrinkWrap: true,
               scrollDirection: Axis.horizontal,
               itemBuilder: (context,index){
               return
                const Padding(
                  padding: EdgeInsets.symmetric(horizontal: 4.0),
                  child: ProductCard(image: 'assets/images/image1.png',title: 'Spoken English',totalPrice: '',),
                );
             },itemCount: 5,),
           ),





            const SizedBox(height: 20,),

            Row(
              children: [
                Text("POPULAR COURSES",style: TextStyle(fontWeight: FontWeight.w800),),
              ],
            ),




            ListView.builder(
                shrinkWrap: true,
              scrollDirection: Axis.vertical,
              physics: const NeverScrollableScrollPhysics(),
              itemBuilder: (context,index){
                return
                   Padding(
                    padding: EdgeInsets.only(bottom: 7.0,left: 11,right: 11,top: index==0?0:7),
                    child: ProductCard(image: 'assets/images/image${index==0?2:3}.png',title: index==0?"Product Design":"Project Management"),
                  );
              },itemCount: 2,)


          ],
        ),
      ),
    );

  }
}
