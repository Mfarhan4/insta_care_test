import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:insta_task/config/screen_config.dart';
import 'package:insta_task/screens/TapBars/all_products_page.dart';
import 'package:insta_task/screens/home_page.dart';
import 'package:insta_task/theme/palette.dart';

// class BottomBarPage extends StatefulWidget {
//   const BottomBarPage({Key? key}) : super(key: key);
//
//   @override
//   State<BottomBarPage> createState() => _BottomBarPageState();
// }
//
// class _BottomBarPageState extends State<BottomBarPage> {
//   @override
//   Widget build(BuildContext context) {
//     return const Placeholder();
//   }
// }




class MyHomePage extends StatefulWidget {
  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  int _currentIndex = 0;

  void _onSelectedItem(int index) {
    setState(() {
      _currentIndex = index;
    });
  }

  final List<Widget> _myAllWidget = [
    const HomePage(),
    Center(child: Text("Working")),
    Container(child: Text("Working")),
    Center(child: Text("Working")),

  ];


  @override
  Widget build(BuildContext context) {
    ScreenConfig().init(context);
    return Scaffold(

      body:  _myAllWidget.elementAt(_currentIndex),
      bottomNavigationBar: Padding(
        padding: const EdgeInsets.only(left: 18.0,right:18,bottom: 16),
        child: ClipRRect(
         borderRadius: BorderRadius.circular(25),


          child: SizedBox(
            height: 70,
            child: Theme(
              data: Theme.of(context).copyWith(
                // sets the background color of the `BottomNavigationBar`
                  canvasColor: Colors.blue,
                  // sets the active color of the `BottomNavigationBar` if `Brightness` is light
                  primaryColor: Colors.red,
                  textTheme: Theme
                      .of(context)
                      .textTheme
                      .copyWith(caption: new TextStyle(color: Colors.yellow))),
              child: BottomNavigationBar(
                currentIndex: _currentIndex,
                backgroundColor: Colors.blue,

                selectedItemColor: Colors.white,
                unselectedItemColor: Colors.white.withOpacity(0.8),
                showUnselectedLabels: true,

                onTap: (index) {
                  setState(() {
                    _currentIndex = index;
                    _onSelectedItem(index);
                  });
                },

                items:  [
                  BottomNavigationBarItem(
                    icon: Icon(Icons.home),
                    label: 'Home',
                  ),
                  BottomNavigationBarItem(
                    icon: Icon(Icons.file_copy),
                    label: 'Saved',
                  ),
                  BottomNavigationBarItem(
                    icon: Icon(Icons.countertops_rounded),
                    label: 'Course',
                  ),
                  BottomNavigationBarItem(
                    icon: Icon(Icons.video_collection_rounded),
                    label: 'Library',
                  ),
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}