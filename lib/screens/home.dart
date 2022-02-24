import 'package:cake_que/cart_activity.dart';
import 'package:cake_que/product_details.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class Home extends StatefulWidget {
  const Home({Key? key}) : super(key: key);

  @override
  _HomeState createState() => _HomeState();
}

class _HomeState extends State<Home> {

  String poppins = 'Poppins';

  var cakeNames = [
    "Black forest",
    "Venila flaver",
    "Chocolate",
    "Strawberry",
    "Creamed cake",
    "Nuts cake"
  ];

  String locationText = "Coimbatore";

  String selectedValue = "USA";

  List<bool> selectedColor = [
    true , false , false , false , false , false , false
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xffFCFAFB),
      body: SafeArea(
        child: Container(
          color: Colors.white,
          height: MediaQuery.of(context).size.height,
          child: SingleChildScrollView(
            child: Column(
              children: <Widget>[
                //region APP BAR
                ListTile(
                    leading:InkWell(
                      onTap: (){
                        print("Top menu...");
                      },
                      child: Container(
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.center,
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Container(
                              width: 30,height: 6,
                              decoration: BoxDecoration(
                                  color: Colors.deepPurple,
                                  borderRadius: BorderRadius.circular(3)
                              ),
                            ),
                            SizedBox(
                              height: 4,
                            ),
                            Container(
                              width: 20,height: 6,
                              decoration: BoxDecoration(
                                  color: Colors.deepPurple,
                                  borderRadius: BorderRadius.circular(3)
                              ),
                            ),
                            SizedBox(
                              height: 4,
                            ),
                            CircleAvatar(
                              radius: 5,
                              backgroundColor: Colors.pink,
                            )
                          ],
                        ),
                      ),
                    ),
                    title: Container(
                        child: Text('Surya',
                            style: TextStyle(color: Colors.black45,fontWeight: FontWeight.w800,
                                fontFamily: poppins))
                    ),
                    subtitle:InkWell(
                        onTap: (){
                          showMenu(
                              context: context,
                              position: RelativeRect.fromLTRB(100, 100, 100, 100),
                              items: [
                                PopupMenuItem(
                                  value: 1,
                                  child: Text("Ooty"),
                                  onTap: (){
                                    setState(() {
                                      locationText = "Ooty";
                                    });
                                  },
                                ),
                                PopupMenuItem(
                                  value: 2,
                                  child: Text("Avinashi"),
                                  onTap: (){
                                    setState(() {
                                      locationText = "Avinashi";
                                    });
                                  },
                                ),
                                PopupMenuItem(
                                  value: 3,
                                  child: Text("Trichy"),
                                  onTap: (){
                                    setState(() {
                                      locationText = "Trichy";
                                    });
                                  },
                                ),
                              ]
                          );
                        },
                        child: Text('${locationText}',
                            style: TextStyle(color: Colors.deepPurple,fontWeight: FontWeight.w900,
                                fontFamily: poppins)
                        )
                    ),
                    trailing:Container(
                      width: 100,
                      child: Row(
                        children: <Widget>[
                          SizedBox(width: 13,),
                          CircleAvatar(
                            radius: 19,
                            backgroundImage: NetworkImage("https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcTaNqxHhXxQo-mMKSsSU0wv9spXmfSzInG_sg&usqp=CAU"),
                          ),
                          SizedBox(
                            width: 10,
                          ),
                          Stack(
                            children: [
                              InkWell(
                                onTap:(){
                                  Navigator.push(context, MaterialPageRoute(builder: (context)=>CartActivity()));
                                },
                                child: CircleAvatar(
                                  backgroundColor: Colors.pink,
                                  radius: 19,
                                  child: Icon(
                                    Icons.shopping_basket_outlined,
                                    color: Colors.white,
                                  ),
                                ),
                              ),
                              Positioned(
                                left: 22,
                                top: -1,
                                child: CircleAvatar(
                                  backgroundColor: Colors.deepPurple,
                                  radius: 8,
                                  child: Center(
                                    child: Text("5",style: TextStyle(color: Colors.white,fontSize: 12),),
                                  ),
                                ),
                              )
                            ],
                          ),
                        ],
                      ),
                    )
                ),
                //endregion
                Column(
                  children: <Widget>[
                    //region SEARCH BAR
                    Container(
                      decoration: BoxDecoration(
                          color: Color(0xffFCFAFB),
                          borderRadius: BorderRadius.circular(12)
                      ),
                      margin: EdgeInsets.only(left: 10,right: 10),
                      alignment: Alignment.centerLeft,
                      height: 47,
                      width: MediaQuery.of(context).size.width,
                      child: TextFormField(
                        maxLines: 1,
                        decoration: InputDecoration(
                            prefixIcon: Icon(Icons.search,color: Colors.black54,),
                            hintText: "Search Cake",
                            border: InputBorder.none,
                            hintStyle: TextStyle(color: Colors.black54,fontSize: 15,fontWeight: FontWeight.bold,
                                fontFamily: poppins)
                        ),
                      ),
                    ),

                    Container(
                      margin: EdgeInsets.only(left: 20,right: 20,top: 10),
                      child: Row(
                        children: [
                          Text("Categories",
                            style: TextStyle(color: Colors.deepPurple,fontSize: 17,fontWeight: FontWeight.bold,
                                fontFamily: poppins),),
                          Expanded(
                            child: Container(
                              alignment: Alignment.centerRight,
                              child:InkWell(
                                onTap: (){
                                  print("more clicked....");
                                  print(MediaQuery.of(context).size.height * 0.64);
                                },
                                child: Text("See all"
                                  ,style: TextStyle(color: Colors.pink,fontSize: 16,fontWeight: FontWeight.bold,
                                      fontFamily: poppins),),
                              ),
                            ),
                          ),
                        ],
                      ),
                    ),
                    //endregion

                    Container(
                      height:MediaQuery.of(context).size.height * 0.66,
                      child: SingleChildScrollView(
                        child: Column(
                          children: [
                            Container(
                                height: 120,
                                padding: EdgeInsets.only(bottom: 4),
                                // color:Colors.black12,
                                child:ListView.builder(
                                    scrollDirection: Axis.horizontal,
                                    itemCount: selectedColor.length,
                                    itemBuilder: (context , index)=>
                                        InkWell(
                                          onTap:(){
                                            setState(() {
                                              if(selectedColor[index]==false){
                                                selectedColor[index]=true;
                                              }else{
                                                selectedColor[index]=false;
                                              }
                                            });
                                          },
                                          child: Container(
                                            padding: EdgeInsets.all(4),
                                            width: 90,
                                            decoration: BoxDecoration(
                                              color: selectedColor[index]==true?Colors.deepPurple:Color(0xffFCFAFB),
                                              borderRadius:BorderRadius.circular(7),
                                            ),
                                            margin: EdgeInsets.all(2),
                                            child: Column(
                                              crossAxisAlignment: CrossAxisAlignment.center,
                                              mainAxisAlignment: MainAxisAlignment.center,
                                              children: [
                                                Container(
                                                  height: 50,
                                                  width: 50,
                                                  child: Image(
                                                    image: NetworkImage(
                                                        "https://justquikr.com/wp-content/uploads/2020/11/Special-Unique-Happy-Birthday-Cake-HD-Pics-Images-for-Honey-4.jpg"
                                                    ),
                                                  ),
                                                ),
                                                Text('Birthday \ncake',style:
                                                TextStyle(color:selectedColor[index]==true?
                                                Colors.white:Colors.black54,fontSize: 12,fontWeight: FontWeight.w600)
                                                  ,textAlign: TextAlign.center,)
                                              ],
                                            ),
                                          ),
                                        )
                                )
                            ),
                            Container(
                              child: ListView.builder(
                                itemCount: 10,
                                shrinkWrap: true,
                                physics: NeverScrollableScrollPhysics(),
                                itemBuilder: (context , index)=>
                                    GestureDetector(
                                      onTap: (){
                                        Navigator.push(context, MaterialPageRoute(builder: (context)=>ProductDetials()));
                                      },
                                      child: Container(
                                          alignment: Alignment.bottomLeft,
                                          margin: EdgeInsets.only(top:2),
                                          child:Stack(
                                            alignment: Alignment.center,
                                            children: [
                                              Container(
                                                margin: EdgeInsets.only(top:25),
                                                height: 80,
                                                child: Card(
                                                  shape: RoundedRectangleBorder(
                                                    borderRadius: BorderRadius.circular(18.0),
                                                  ),
                                                  elevation: 10,
                                                  child: ListTile(),
                                                ),
                                              ),
                                              Positioned(
                                                bottom:20,
                                                left:20,
                                                child: Container(
                                                  height : 80,
                                                  width:80,
                                                  decoration: BoxDecoration(
                                                    image: DecorationImage(
                                                        image:
                                                        NetworkImage("https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcTaNqxHhXxQo-mMKSsSU0wv9spXmfSzInG_sg&usqp=CAU"),
                                                        fit: BoxFit.cover
                                                    ),
                                                    color: Colors.white54,
                                                    shape: BoxShape.circle,
                                                  ),
                                                ),
                                              ),
                                              Positioned(
                                                  left: 110,
                                                  top: 40,
                                                  child: Row(
                                                    children: [
                                                      Column(
                                                        mainAxisAlignment: MainAxisAlignment.center,
                                                        crossAxisAlignment: CrossAxisAlignment.start,
                                                        children: [
                                                          Text('Cake name $index',style: TextStyle(
                                                              fontSize: 15,color: Colors.pink,fontFamily: poppins),maxLines: 1,),
                                                          Row(
                                                            children: [
                                                              Text('\$125',style: TextStyle(
                                                                  fontSize: 17,color: Colors.deepPurple,fontWeight: FontWeight.bold,fontFamily: poppins
                                                              ),),
                                                              Text('\t\$125',style: TextStyle(
                                                                  fontSize: 14,
                                                                  color: Colors.black26,fontWeight: FontWeight.w600,decoration: TextDecoration.lineThrough,fontFamily: poppins
                                                              ),),
                                                            ],
                                                          ),
                                                        ],
                                                      ),
                                                    ],
                                                  )
                                              ),
                                              Positioned(
                                                right: 20,
                                                bottom: 20,
                                                child: Container(
                                                  width: 150,
                                                  child: Row(
                                                    mainAxisAlignment: MainAxisAlignment.end,
                                                    children: [
                                                      InkWell(
                                                        onTap:(){print('cart icon');},
                                                        child: CircleAvatar(
                                                            backgroundColor: Colors.black12,
                                                            child: Icon(Icons.shopping_basket_outlined,color: Colors.pink,)
                                                        ),
                                                      ),
                                                      SizedBox(width: 10,),
                                                      InkWell(
                                                        onTap:(){print('Fav icon');},
                                                        child: CircleAvatar(
                                                            backgroundColor: Colors.black12,
                                                            child: Icon(Icons.favorite,color: Colors.deepPurple)
                                                        ),
                                                      ),
                                                    ],
                                                  ),
                                                ),
                                              )
                                            ],
                                          )
                                      ),
                                    ),
                              ),
                            ),
                          ],
                        ),
                      ),
                    ),
                  ],
                )
              ],
            ),
          ),
        ),
      ),
    );
  }
}