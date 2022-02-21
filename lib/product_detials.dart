import 'dart:ui';
import 'package:cake_que/cart_activity.dart';
import 'package:cake_que/other_vendors.dart';
import 'package:group_button/group_button.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_rating_bar/flutter_rating_bar.dart';

class ProductDetials extends StatefulWidget {
  const ProductDetials({Key? key}) : super(key: key);

  @override
  _ProductDetialsState createState() => _ProductDetialsState();
}

class _ProductDetialsState extends State<ProductDetials> {

  Color pink = Color(0Xffc40ca3);
  int _selected =0;
  int _selectedval =0;

  String flavours = "Chocolate";
  final List<String> flavourlist = ["Chocolate", "Vennila", "Strawberry", "Lemon"];
  String caketype = "Vennila";
  final List<String> cakelist = ["Chocolate", "Vennila", "Strawberry", "Lemon"];

  bool icolor = false;
  bool icolor1 = false;
  bool icolor2 = false;


  var rating = 0.0;
double opacity = 0.0;
  int cartItemCount = 0;
  List<int> addedCart = [];


  void _toggleicolor(){
   setState(() {
     if(icolor){
       icolor=false;
     }else{
       icolor=true;
     }
   });
  }
  void _toggleicolor1(){
    setState(() {
      if(icolor1){
        icolor1=false;
      }else{
        icolor1=true;
      }
    });
  }
  void _toggleicolor2(){
    setState(() {
      if(icolor2){
        icolor2=false;
      }else{
        icolor2=true;
      }
    });
  }

  // @override
  // void initState() {
  //   setState(() {
  //     if (cartItemCount <= 0) {
  //       opacity = 0.0;
  //      // bottomSheetVisible = false;
  //     } else {
  //       opacity = 1.0;
  //     }
  //     //Getting item count from added food
  //     for (int i = 0; i <= 100; i++) {
  //       addedCart.add(0);
  //     }
  //   });
  //
  //   print(cartItemCount);
  //
  //
  //   // TODO: implement initState
  //   super.initState();
  //
  // }


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        backgroundColor: Colors.white,
        leading: IconButton(
          icon: Icon(CupertinoIcons.back,color: Colors.black,),
          onPressed: (){
            Navigator.pop(context);
          },
        ),
        bottomOpacity: 0.0,
        elevation: 0.0,
        title: Text('ProductDetials',style: TextStyle(color: Color(0Xff5432a8)),),
        actions: [
              Container(
              child: CircleAvatar(
              backgroundColor: Color(0Xff5432a8),
                  radius: 15,
                child: IconButton(onPressed: (){}, icon:Icon(Icons.person,color: Colors.white,size: 15,))
            )
            ),
            SizedBox(width: 10,),
            Container(
              padding: EdgeInsets.only(right: 7),
              child: Stack(
                children: [
                  Container(
                    margin: EdgeInsets.only(right: 10,top:12),
                      child: CircleAvatar(
                        backgroundColor: Color(0Xffc40ca3),
                          radius: 15,
                          child: IconButton(onPressed: (){
                            Navigator.push(context, MaterialPageRoute(builder: (context)=>CartActivity()));
                          },
                              icon:Icon(Icons.shopping_cart,color: Colors.white,size: 15,))
                      )
                  ),
                  Positioned(
                    top: 5,
                    right: 8,
                    child:  GestureDetector(
                        onTap: () {
                        },
                        child: CircleAvatar(
                          backgroundColor: Colors.red,
                          radius: 8,
                          child: Padding(
                            padding: const EdgeInsets.only(bottom: 1),
                            child: Text(
                              "3",
                              style: TextStyle(
                                  color: Colors.white,
                                  fontSize: 9,
                                  fontWeight: FontWeight.bold),
                            ),
                          ),
                        ),
                    ),
                  ),
                ],
              ),
            ),
        ],
      ),
      body: Container(
        height: MediaQuery.of(context).size.height,
        child: SingleChildScrollView(
          child: Container(
            width: MediaQuery.of(context).size.width,
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Stack(
                  children:[
                    Row(
                    mainAxisAlignment: MainAxisAlignment.end,
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      Container(
                        margin: EdgeInsets.only(top:60),
                        alignment: Alignment.centerRight,
                        height: 290,
                        width: 240,
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(35),
                          color: Colors.grey[100],

                        ),
                      ),
                    ],
                  ),

                    Positioned(
                      top: 30,
                        left: 30,
                        child: Container(
                          child: Row(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Container(
                                child: CircleAvatar(
                                    backgroundColor:(icolor)?Colors.white: pink,
                                    child: IconButton(icon: Icon(Icons.favorite,color: (icolor)?pink:Colors.white, ),
                                      onPressed: (){ _toggleicolor(); },)
                                ),
                              ),
                              Container(
                                padding: EdgeInsets.all(2),
                                decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(100),
                                  color: Colors.white,
                                  boxShadow:[ BoxShadow(
                                      color: Colors.grey,
                                      blurRadius: 6.0,
                                      offset:Offset(0.0,12.0)
                                  )
                                  ],
                                ),
                                height: 200,
                                width: 200,
                                child: Container(
                                  decoration: BoxDecoration(
                                    borderRadius: BorderRadius.circular(100),

                                    image: DecorationImage(
                                        image: new AssetImage('assets/images/image.jpeg'),fit: BoxFit.cover),
                                  ),
                                    height: 170,
                                    width: 170,
                                ),
                              )
                            ],
                          ),
                        ), ),
                    Positioned(
                      top:250,
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Container(
                            margin: EdgeInsets.only(left: 19,right: 10),
                            child: Text('Cake Name 1',style: TextStyle(fontSize: 20,fontWeight: FontWeight.bold)),
                          ),

                          Container(
                            margin: EdgeInsets.only(top: 5,left: 19,right: 10),
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                Container(
                                  child: Row(
                                    children: [
                                      Container(
                                        alignment: Alignment.center,
                                        width:80,
                                        padding: EdgeInsets.all(7),
                                        decoration: BoxDecoration(
                                            borderRadius: BorderRadius.circular(20),
                                            color: Colors.grey[100]
                                        ),
                                        child: Text('\$115',style: TextStyle(fontSize: 19,color: Color(0Xff5432a8),fontWeight: FontWeight.bold),),
                                      ),
                                      SizedBox(width: 14,),
                                      Container(
                                        child: Text('\$180',style: TextStyle(fontSize: 18,color: Color(0Xff97a1bd),fontWeight: FontWeight.bold,decoration:
                                        TextDecoration.lineThrough,)),
                                      )
                                    ],
                                  ),
                                ),
                                SizedBox(width: 80,),
                                Container(
                                  child: Row(
                                    children: [
                                      Container(
                                          decoration: BoxDecoration(
                                            borderRadius: BorderRadius.circular(50),
                                            border: Border.all(
                                              color: (icolor1)?Color(0Xffc40ca3):Colors.red,
                                              width: 1.0,
                                            ),
                                          ),
                                          child: CircleAvatar(
                                              backgroundColor:(icolor1)?Color(0Xffc40ca3):Colors.white,
                                              child: IconButton(onPressed: (){
                                                _toggleicolor1();
                                                if(cartItemCount != 0){
                                                  cartItemCount - 1 ;
                                                }
                                              }, icon: Icon(Icons.remove,color:(icolor1)?Colors.white:Color(0Xff5432a8),))
                                          )
                                      ),
                                      SizedBox(width: 10,),
                                      Text('$cartItemCount',style: TextStyle(color: Color(0Xff5432a8),fontWeight: FontWeight.bold),),
                                      SizedBox(width: 10,),
                                      Container(
                                          decoration: BoxDecoration(
                                            borderRadius: BorderRadius.circular(50),
                                            border: Border.all(
                                              color: (icolor2)?Color(0Xffc40ca3):Colors.red,
                                              width: 1.0,
                                            ),
                                          ),
                                          child: CircleAvatar(
                                              backgroundColor:(icolor2)?Color(0Xffc40ca3):Colors.white,
                                              child: IconButton(onPressed: (){
                                                _toggleicolor2();
                                                if(cartItemCount == 0){
                                                  for(int i=0;i<=0;i++) {
                                                    addedCart.add(0);
                                                  }
                                                }
                                              }, icon: Icon(Icons.add,color:(icolor2)?Colors.white:Color(0Xff5432a8),)))
                                      ),
                                    ],
                                  ),
                                )
                              ],
                            ),
                          ),
                        ],
                      ),
                    ),

            ]
                ),

                Container(
                  margin: EdgeInsets.only(left: 13,right: 13),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                Container(
                  padding: EdgeInsets.only(top:15,bottom: 10),
                  child: Text('Description',style: TextStyle(fontSize: 16,color: Colors.black,fontWeight: FontWeight.bold)),
                ),
                Container(
                  padding: EdgeInsets.only(bottom: 18),

                  child: Text('14There are a couple ways to add a border to a Flutter widget.built in.For output as above use a'
                         'Stack instead of Row because of Stack allows us to make multiple widgets overlay each other and you can align or position ',),

                ),
                Divider(color: Colors.black26,thickness: 1,),
                Container(
                  padding: EdgeInsets.only(top:7,bottom: 10),
                  child: Text('Widget',style: TextStyle(fontSize: 16,color: Colors.black,fontWeight: FontWeight.bold)),
                ),

            Container(
              margin: EdgeInsets.only(top: 7,bottom: 7),
              child: GroupButton(
                controller: GroupButtonController(),
                spacing: 5,
                isRadio: false,
                groupingType: GroupingType.wrap,
                direction: Axis.horizontal,
                onSelected: (index, isSelected) => debugPrint(
                  '$index button is ${isSelected ? 'selected' : 'unselected'}',
                ),
                buttons: const [
                  "1/2",
                  "1",
                  "1.5",
                  "2",
                  "5",

                ],
                selectedButtons: const [1],
                selectedTextStyle: const TextStyle(
                  fontWeight: FontWeight.w600,
                  fontSize: 16,
                  color: Colors.white,
                ),
                unselectedTextStyle: TextStyle(
                  fontWeight: FontWeight.w600,
                  fontSize: 14,
                  color:  Color(0Xff5432a8),
                ),
                selectedColor: Color(0Xffc40ca3),
                unselectedColor: Colors.white,
                unselectedBorderColor: Colors.grey[300],
                borderRadius: BorderRadius.circular(15),
                buttonHeight: 30,
                buttonWidth: 60,
              ),
            ),
                Divider(color: Colors.black26,thickness: 1,),
                Container(
                  padding: EdgeInsets.only(top:7,bottom: 10),
                  child: Text('Customize your order',style: TextStyle(fontSize: 16,color: Colors.black,fontWeight: FontWeight.bold)),
                ),
                Container(
                  padding: EdgeInsets.only(left: 20,right: 10),
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(10),
                      color: Colors.blueGrey[50]
                  ),
                  child: DropdownButtonFormField(
                    //value: flavours,
                    decoration: InputDecoration(border: InputBorder.none),

                    items: flavourlist
                        .map<DropdownMenuItem<String>>((String value) {
                      return DropdownMenuItem<String>(
                        value: value,
                        child: Text(value),
                      );
                    }).toList(),
                    onChanged: (String? newValue) {
                      setState(() {
                        flavours = newValue!;
                      });
                    },
                    hint: Text('-Select the flavour-'),
                  ),
                ),
                      SizedBox(height: 10,),

                      Container(
                        padding: EdgeInsets.only(left: 20,right: 10),
                        decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(10),
                            color: Colors.blueGrey[50]
                        ),
                        child: DropdownButtonFormField(
                         // value: caketype,
                            decoration: InputDecoration(border: InputBorder.none),
                            items: cakelist
                              .map<DropdownMenuItem<String>>((String value) {
                            return DropdownMenuItem<String>(
                              value: value,
                              child: Text(value),
                            );
                          }).toList(),
                          onChanged: (String? newValue) {
                            setState(() {
                              caketype = newValue!;
                            });
                          },
                          hint: Text('-Select the caketype-'),


                        ),
                      ),
                Container(
                  padding: EdgeInsets.only(top:7,bottom: 10),
                  child: Text('others',style: TextStyle(fontSize: 16,color: Colors.black,fontWeight: FontWeight.bold)),
                ),
                      Container(
                        padding: EdgeInsets.only(left: 20,right: 10),
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(10),
                            color: Colors.blueGrey[50]
                          ),
                        child: ListTile(
                          title: Text('option1',style: TextStyle(fontSize: 17),),
                            trailing:Radio(
                              value: 1,
                              groupValue: _selectedval,
                              onChanged: (int? val) {
                                setState(() {
                                  _selectedval = val!;
                                });
                              },
                            ),
                          ),
                      ),
                      SizedBox(height: 10,),
                      Container(
                          padding: EdgeInsets.only(left: 20,right: 10),
                          decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(10),
                              color: Colors.blueGrey[50]
                          ),
                          child: ListTile(
                            title: Text('option2',style: TextStyle(fontSize: 17),),
                            trailing:Radio(
                                  value: 2,
                                  groupValue: _selectedval,
                                  onChanged: (int? val) {
                                    setState(() {
                                      _selectedval = val!;
                                    });
                                  },
                                ),
                          ),
                      ),
                        SizedBox(height: 7,),
                        Divider(),
                      SizedBox(height: 7,),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Text('NearestVendor',style: TextStyle(color: Colors.black,fontWeight: FontWeight.bold,fontSize: 17),),
                                Text('Ramanathapuram'),
                              ],
                            ),
                                  TextButton(onPressed: (){
                                    Navigator.push(context, MaterialPageRoute(builder: (context)=> OtherVendors()));

                                  }, child: Text('+ othervendors',style: TextStyle(color: Colors.red))

                                  )

                          ],
                        ),
                      SizedBox(height: 10,),

                      Container(
                  height:200,
                  child: ListView.builder(
                    itemCount: 3,
                    itemBuilder: (BuildContext context, index) {
                      return Container(
                        height:57,
                        padding: EdgeInsets.only(left: 20,right: 10),
                        margin: EdgeInsets.only(top:10),
                        decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(10),
                            color: Colors.blueGrey[50]
                        ),
                          child: ListTile(
                            title: Text(
                              'MuthuKumar', style: TextStyle(fontSize: 17),),
                            subtitle: RatingBar.builder(
                              initialRating: 3,
                              minRating: 1,
                              direction: Axis.horizontal,
                              allowHalfRating: true,
                              itemCount: 5,
                              itemBuilder: (context, _) =>
                                  Icon(
                                    Icons.star,
                                    color: Colors.amber,
                                  ),
                              itemSize: 17,
                              onRatingUpdate: (rating) {
                                print(rating);
                              },
                            ),
                            trailing: Radio(
                              value: _selected,
                              groupValue: index,
                              activeColor: Colors.blue,
                              onChanged: (int? val) {
                                print("Radio $val");
                                setState(() {
                                  _selected = index!;
                                });
                              },
                            ),
                          ),
                      );
                    }
                  ),
                ),


                      SizedBox(height: 20,),

                      Container(
                        width: MediaQuery.of(context).size.width,
                        height: 50,
                        child: RaisedButton(
                            textColor: Colors.white,
                            //focusColor: Color(0Xff5432a8),
                            color:Color(0Xff5432a8) ,
                            shape: new RoundedRectangleBorder(
                              borderRadius: new BorderRadius.circular(25.0),
                            ),
                            onPressed:(){},
                            child: Text('ADD TO CART',style: TextStyle(color: Colors.white,fontSize: 16),)),
                      ),

                      SizedBox(
                        height: 20,
                      )

                    ],
                  ),
                )

                    ],
                  ),
                ),

        ),
      ),
    );
  }
}
