import 'package:cake_que/screens/home.dart';
import 'package:cake_que/screens/menu.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class HomeActivity extends StatefulWidget {
  @override
  _HomeActivityState createState() => _HomeActivityState();
}

class _HomeActivityState extends State<HomeActivity> {

  //region Variables

  List<DropdownMenuItem<String>> get dropdownItems{
    List<DropdownMenuItem<String>> menuItems = [
      DropdownMenuItem(child: Text("Avinashi"),value: "Avinashi"),
      DropdownMenuItem(child: Text("Coimbatore"),value: "Coimbatore"),
    ];
    return menuItems;
  }

  String dropDownValue = "Coimbatore";
  //endregion

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
  }

  int currentIndex = 0;
  var screens = [
    Menu(),
    Home(),
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
              currentIndex = 1;
            });
          }),
      bottomNavigationBar: BottomAppBar(
          shape: CircularNotchedRectangle(),
          child: Container(
            padding: EdgeInsets.only(left: 15,right: 15),
            height: 80,
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: <Widget>[
                GestureDetector(
                  onTap: (){
                    print("menu");
                    setState(() {
                      currentIndex = 0;
                    });
                  },
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.center,
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Icon(Icons.grid_view,color: Colors.black54,size: 30,),
                      Text('Menu',style: TextStyle(fontWeight: FontWeight.bold,color: Colors.black54,),)
                    ],
                  ),
                ),
                Column(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Icon(CupertinoIcons.bag,color: Colors.black54,size: 30,),
                    Text('Offers',style: TextStyle(fontWeight: FontWeight.bold,color: Colors.black54,))
                  ],
                ),
                SizedBox(width: 40),
                Column(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Icon(Icons.person,color: Colors.black54,size: 30,),
                    Text('Profile',style: TextStyle(fontWeight: FontWeight.bold,color: Colors.black54,))
                  ],
                ), // The dummy child
                Column(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Icon(Icons.format_align_right ,color: Colors.black54,size: 30,),
                    Text('More',style: TextStyle(fontWeight: FontWeight.bold,color: Colors.black54,))
                  ],
                ),
              ],
            ),
          )),
    );
  }
}

