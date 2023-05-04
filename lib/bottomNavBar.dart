import 'package:flutter/material.dart';
import 'package:nuntium/view/bookmarks/ui/bookmarks.dart';
import 'package:nuntium/view/categories/ui/categories.dart';
import 'package:nuntium/view/home/ui/home.dart';
import 'package:nuntium/view/profile/ui/profile.dart';


class BottomNavBar extends StatefulWidget {
  const BottomNavBar({Key? key}) : super(key: key);

  @override
  State<BottomNavBar> createState() => _BottomNavBarState();
}

class _BottomNavBarState extends State<BottomNavBar> {

  int current = 0;
  @override
  Widget build(BuildContext context) {
    List pages =[
      Home(),
      Categories(),
      Bookmarks(),
      Profile()
    ];
    return Scaffold(
      backgroundColor: Color(0xffffffff),
      body: pages[current],

      bottomNavigationBar: BottomNavigationBar(
        currentIndex: current,
        fixedColor: Color(0xff475ad7),
        // selectedItemColor: Color(0xff475ad7),
        unselectedItemColor: Colors.grey,
        onTap: (val){
          setState(() {
            current = val;
          });
        },

        items: [

          BottomNavigationBarItem(icon: Icon(Icons.home_outlined,),label: "Home"),
          BottomNavigationBarItem(icon: Icon(Icons.dashboard_outlined),label: "Categories"),
          BottomNavigationBarItem(icon: Icon(Icons.bookmark_outline),label: "Bookmarks"),
          BottomNavigationBarItem(icon: Icon(Icons.person_outline),label: "Profile"),
        ],
      ),
    );
  }
}
