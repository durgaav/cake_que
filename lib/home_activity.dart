import 'package:cake_que/screens/home.dart';
import 'package:cake_que/screens/menu.dart';
import 'package:cake_que/screens/more.dart';
import 'package:cake_que/screens/offers.dart';
import 'package:cake_que/screens/profile.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class HomeActivity extends StatefulWidget {
  @override
  _HomeActivityState createState() => _HomeActivityState();
}

class _HomeActivityState extends State<HomeActivity> {

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
  }

  String poppins = 'Poppins';

  int currentIndex = 2;
  var screens = [
    Menu(),
    Offers(),
    Home(),
    Profile(),
    More(),
  ];

  @override
  Widget build(BuildContext context) {
    return  Scaffold(

      body: screens[currentIndex],

      floatingActionButtonLocation: FloatingActionButtonLocation.centerDocked,
      floatingActionButton:
      FloatingActionButton(
          backgroundColor: Colors.deepPurple,
          child: Icon(Icons.home,size: 40,),
          onPressed: () {
            setState(() {
              currentIndex = 2;
            });
          }),
      bottomNavigationBar: BottomAppBar(
          notchMargin: 10,
          shape: CircularNotchedRectangle(),
          child: Container(
            padding: EdgeInsets.only(left: 15,right: 15),
            height: 80,
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: <Widget>[
                InkWell(
                  onTap: (){
                    print("menu");
                    setState(() {
                      currentIndex = 0;
                      print(currentIndex);
                    });
                  },
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.center,
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Icon(Icons.grid_view,color: Colors.black54,size: 26,),
                      Text('Menu',style: TextStyle(fontSize:13,fontWeight: FontWeight.bold,color: Colors.black54,
                          fontFamily: poppins),)
                    ],
                  ),
                ),
                InkWell(
                  onTap: (){
                    print("menu");
                    setState(() {
                      currentIndex = 1;
                      print(currentIndex);
                    });
                  },
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.center,
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Icon(CupertinoIcons.bag,color: Colors.black54,size: 26,),
                      Text('Offers',style: TextStyle(fontSize:13,fontWeight: FontWeight.bold,color: Colors.black54,
                          fontFamily: poppins))
                    ],
                  ),
                ),
                SizedBox(width: 40),
                InkWell(
                  onTap: (){
                    print("menu");
                    setState(() {
                      currentIndex = 3;
                      print(currentIndex);
                    });
                  },
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.center,
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Icon(Icons.person,color: Colors.black54,size: 26,),
                      Text('Profile',style: TextStyle(fontSize:13,fontWeight: FontWeight.bold,color: Colors.black54,fontFamily: poppins))
                    ],
                  ),
                ), // The dummy child
                InkWell(
                  onTap: (){
                    print("menu");
                    setState(() {
                      currentIndex = 4;
                      print(currentIndex);
                    });
                  },
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.center,
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Icon(Icons.format_align_right ,color: Colors.black54,size: 26,),
                      Text('More',style: TextStyle(fontSize:13,fontWeight: FontWeight.bold,color: Colors.black54,fontFamily: poppins))
                    ],
                  ),
                ),
              ],
            ),
          )),
    );
  }
}

