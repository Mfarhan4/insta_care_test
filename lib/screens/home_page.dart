import 'package:auto_size_text/auto_size_text.dart';
import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
import 'package:flutter/services.dart';
import 'package:insta_task/theme/palette.dart';

import '../config/screen_config.dart';
import 'TapBars/all_products_page.dart';

class HomePage extends StatefulWidget {


  const HomePage({Key? key}) : super(key: key);

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage>  with SingleTickerProviderStateMixin {
  @override
    late TabController _tabController;

  @override
 initState()  {
    super.initState();
    loadingF();
_tabController = TabController(length: 6, vsync: this);
    _tabController.addListener(() { });
  }
loadingF()async{
  loading=true;
  await Future.delayed(Duration(seconds: 3));
  setState(() {
    loading=false;
  });

}
  final List<String> tabs = ['All', 'Design', 'Communication', 'Development', 'Design', 'Development'];
  bool loading =false;
  final List<Widget> pages = [
    const AllProductsPage(),
    const Text("Design"),
    const Text("Communication"),
    const Text("Development"),
    const Text("Desing"),
    const Text("Development"),
  ];
  ScrollController scrollController = ScrollController();





  @override
  Widget build(BuildContext context) {
    ScreenConfig().init(context);
    return Scaffold(
        backgroundColor: Colors.white,
        body:loading?Center(child: CircularProgressIndicator(),): Stack(
          children: [
            CustomScrollView(
              physics: const AlwaysScrollableScrollPhysics(),
              controller: scrollController,
              slivers: [
                SliverAppBar(
                  automaticallyImplyLeading: false,
                  systemOverlayStyle:  SystemUiOverlayStyle(
                    // Status bar color
                    statusBarColor:
                   Palette.globalColor,


                    // Status bar brightness (optional)
                    statusBarIconBrightness: Brightness.light,
                    // For Android (dark icons)
                    statusBarBrightness:
                    Brightness.light, // For iOS (dark icons)
                  ),
                  expandedHeight:
                 200,

                  actions: <Widget>[Container()],
                  // expandedHeight: maxExtent,

                  //  collapsedHeight:   // floating: false,
                  //                // snap: false, 1,
                  backgroundColor: const Color(0xff1A73E8),
                  // pinned: true,
                  //primary: true,
                  centerTitle: true,
                  // titleSpacing: 0,
                  floating: false,
                  pinned: true,
                  toolbarHeight: 40,
                  //  expandedHeight: height * 0.2,
                  //collapsedHeight: MediaQuery.of(context).size.height * 0.1,

                  // collapsedHeight: 3,
                  flexibleSpace: FlexibleSpaceBar(
                    background:  Column(
                     // mainAxisAlignment: MainAxisAlignment.end,
                      children: [
                        Column(
                         // mainAxisAlignment: MainAxisAlignment.end,
                          //crossAxisAlignment: CrossAxisAlignment.end,
                          children: [
                            const SizedBox(
                              height: 60,
                            ),
                            Padding(
                              padding: const EdgeInsets.symmetric(horizontal: 18.0),
                              child: Row(
                                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                   CircleAvatar(
                                      backgroundColor: Colors.blue.shade200,
                                 child: const Icon(Icons.menu),
                                    radius: 23,
                                  ),
                                  const SizedBox(
                                    width: 10,
                                  ),
                                  SizedBox(
                                    width: ScreenConfig.blockWidth * 78,
                                    child: Padding(
                                      padding: const EdgeInsets.only(
                                          left: 14.0, right: 14, bottom: 10),
                                      child: Stack(
                                        children: [
                                          TextFormField(


                                            decoration: InputDecoration(
                                                enabledBorder: OutlineInputBorder(
                                                    borderRadius: BorderRadius.circular(25),
                                                    borderSide: const BorderSide(
                                                        color: Colors.transparent)),
                                                disabledBorder: OutlineInputBorder(
                                                    borderRadius: BorderRadius.circular(25),
                                                    borderSide: const BorderSide(
                                                        color: Colors.transparent)),
                                                focusedBorder: OutlineInputBorder(
                                                    borderRadius: BorderRadius.circular(25),
                                                    borderSide: const BorderSide(
                                                        color: Colors.transparent)),
                                                border: OutlineInputBorder(
                                                    borderRadius: BorderRadius.circular(25),
                                                    borderSide: const BorderSide(
                                                        color: Colors.transparent)),
                                                hintText: "Search here",
                                                fillColor: Colors.blue.shade300,
                                                contentPadding: const EdgeInsets.only(
                                                    top: 2, bottom: 2, left: 16, right: 6),
                                                hintStyle: const TextStyle(
                                                    fontFamily: 'mulish',
                                                    color: Colors.white),
                                                suffixIcon: const SizedBox(),
                                                filled: true),

                                          ),
                                          const Positioned(
                                              top: 2,
                                              bottom: 2,
                                              right: 1,
                                              child: CircleAvatar(
                                                  radius: 23,
                                                  child: Padding(
                                                padding: EdgeInsets.all(8.0),
                                                child: Icon(Icons.search,size: 27,),
                                              )))
                                        ],
                                      ),
                                    ),
                                  ),
                                ],
                              ),
                            )
                          ],
                        ),
                        // const SizedBox(
                        //   height: 110,
                        // )
                      ],
                    ),
                    centerTitle: true,
                  ),
                  bottom:  const PreferredSize(
                    preferredSize: Size.fromHeight(30),
                    child: Column(
                      children: [
                        SizedBox(
                          // height: ScreenConfig.blockHeight * 20,
                          // width: ScreenConfig.screenWidth * 100,
                          child: Row(
                            children: [

                              Padding(
                                padding: EdgeInsets.symmetric(horizontal: 22.0),
                                child: Column(

                                  crossAxisAlignment:
                                  CrossAxisAlignment.start,
                                  children: [
                                    AutoSizeText(
                                      "Good Morning, Qubo! ",
                                      style: TextStyle(

                                        color: Colors.white,
                                        fontSize: 22,
                                        fontWeight: FontWeight.bold
                                      ),
                                    ),

                                    Text(
                                      "Be educated so that you can change the world. ",
                                      style: TextStyle(

                                          color: Colors
                                              .white,
                                          fontSize: 15,
                                        ),
                                    ),
                                    SizedBox(
                                      height: 10,
                                    ),
                                  ],
                                ),
                              ),
                            ],
                          ),
                        ),
                        SizedBox(height: 5,)



                      ],
                    ),
                  ),
                  shape:const OutlineInputBorder(borderRadius: BorderRadius.only(bottomLeft: Radius.circular(32),bottomRight:  Radius.circular(32)))  ,
                ),
                SliverFillRemaining(
                  child:  Column(
                    children: [
                      const SizedBox(height: 20,),
                      SizedBox(
                        height: 35.0,
                        child: ListView.builder(
                          scrollDirection: Axis.horizontal,
                          itemCount: tabs.length,
                          itemBuilder: (context, index) {
                            return GestureDetector(
                              onTap: () {
                                setState(() {
                                  _tabController.animateTo(index);
                                });

                              },
                              child: Container(
                                padding: const EdgeInsets.symmetric(horizontal: 10.0),
                                alignment: Alignment.center,
                                child: Container(
                                 // width: 110,
                                  height: 40,
                                  decoration: BoxDecoration(color:_tabController.index == index ? Palette.globalColor : Colors.grey.shade200,borderRadius: BorderRadius.circular(25)),
                                  child: Center(
                                    child: Padding(
                                      padding: const EdgeInsets.symmetric(horizontal: 18.0,vertical: 5),
                                      child: Text(
                                        tabs[index],
                                        style: TextStyle(
                                          fontSize: 16.0,
                                          color: _tabController.index == index ? Colors.white : Colors.black,
                                        ),
                                      ),
                                    ),
                                  ),
                                ),
                              ),
                            );
                          },
                        ),
                      ),
                      Expanded(
                        child: TabBarView(
                          controller: _tabController,
                          physics: NeverScrollableScrollPhysics(),

                          children: pages.map((page) {
                            return Center(
                              child: page,
                            );
                          }).toList(),
                        ),
                      ),
                    ],
                  ),
                ),


              ],
            ),

          ],
        ));
  }
}

class CustomShapeBorder extends ContinuousRectangleBorder {
  @override
  Path getOuterPath(Rect rect, {TextDirection? textDirection}) {
    final double height = rect.height;
    final double width = rect.width;
    final double radius = 20.0; // Radius for the curved corners

    Path path = Path()
      ..moveTo(0, height - radius) // Start at the bottom-left corner
      ..lineTo(0, radius) // Move to the top-left corner
      ..quadraticBezierTo(0, 0, radius, 0) // Draw a curved corner at the top-left
      ..lineTo(width - radius, 0) // Move to the top-right corner
      ..quadraticBezierTo(width, 0, width, radius) // Draw a curved corner at the top-right
      ..lineTo(width, height - radius) // Move to the bottom-right corner
      ..lineTo(0, height - radius); // Draw a straight line to the bottom-left corner

    return path;
  }
}