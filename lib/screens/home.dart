import 'package:cake_que/authscreen.dart';
import 'package:cake_que/cart_activity.dart';
import 'package:cake_que/login_screen.dart';
import 'package:cake_que/product_detials.dart';
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
    false , false , false , false , false , false , false
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
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
                        Navigator.pop(context);
                        Navigator.push(context, MaterialPageRoute(builder: (context)=>AuthScreen()));
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
                        child: Text('${locationText}  v',
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
                          color: Colors.black12,
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
                            style: TextStyle(color: Colors.deepPurple,fontSize: 20,fontWeight: FontWeight.bold,
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
                      padding: EdgeInsets.only(bottom: 10),
                      height: MediaQuery.of(context).size.height * 0.66,
                      child: NestedScrollView(
                          headerSliverBuilder: (context, scrolled){
                            return <Widget>[
                              SliverAppBar(
                                expandedHeight:MediaQuery.of(context).size.height * 0.24,
                                //forceElevated: scrolled,
                                //floating: true,
                                pinned: false,
                                backgroundColor: Colors.white,
                                flexibleSpace: FlexibleSpaceBar(
                                  background: Container(
                                    height: 250,
                                    width: double.infinity,
                                    child:Container(
                                      margin: EdgeInsets.only(top: 10,right: 10),
                                      height: MediaQuery.of(context).size.height * 0.18,
                                      child: ListView.builder(
                                          itemCount: 7,
                                          scrollDirection: Axis.horizontal,
                                          itemBuilder: (context , index){
                                            return GestureDetector(
                                              onTap: (){
                                                setState(() {
                                                  if(selectedColor[index]==false){
                                                    selectedColor[index]=true;
                                                  }else{
                                                    selectedColor[index]=false;
                                                  }
                                                });
                                              },
                                              child:Container(
                                                padding:EdgeInsets.all(3),
                                                margin: EdgeInsets.only(left: 20),
                                                decoration: BoxDecoration(
                                                    color: selectedColor[index]==true?Colors.deepPurple:Colors.white,
                                                    borderRadius: BorderRadius.circular(15)
                                                ),
                                                height: 130,
                                                width: 120,
                                                child: Column(
                                                  mainAxisAlignment: MainAxisAlignment.center,
                                                  crossAxisAlignment: CrossAxisAlignment.center,
                                                  children: [
                                                    Container(
                                                      height: 110,
                                                      decoration: BoxDecoration(
                                                          image: DecorationImage(
                                                              image: AssetImage("assets/images/cake.png")
                                                          )
                                                      ),
                                                    ),
                                                    Text('Birthday cakes',
                                                      style: TextStyle(
                                                          color: selectedColor[index]==true?
                                                          Colors.white:Colors.black54,fontSize: 13.5,fontWeight: FontWeight.bold,
                                                          fontFamily: poppins),
                                                      maxLines: 2,textAlign: TextAlign.center,
                                                    )
                                                  ],
                                                ),
                                              ),

                                            );
                                          }
                                      ),
                                    )
                                  ),

                                ),
                                leading: Container(),
                              ),
                            ];
                          },
                          body: CustomScrollView(
                              slivers: [
                                SliverList(
                                    delegate: SliverChildBuilderDelegate(
                                        (context , index)=>GestureDetector(
                                          onTap: (){
                                            Navigator.push(context, MaterialPageRoute(
                                                builder: (context)=>ProductDetials()));
                                          },
                                          child: Container(
                                            margin: EdgeInsets.only(left: 10,right: 10,bottom: 10),
                                            child:Stack(
                                              children: [
                                                Container(
                                                  margin: EdgeInsets.only(top: 55),
                                                  height: 100,
                                                  child: Card(
                                                    shape: RoundedRectangleBorder(
                                                      borderRadius: BorderRadius.circular(18.0),
                                                    ),
                                                    elevation: 10,
                                                    child: ListTile(),
                                                  ),
                                                ),
                                                Positioned(
                                                  bottom:40,
                                                  left:20,
                                                  child: Container(
                                                    height : 100,
                                                    width:100,
                                                    decoration: BoxDecoration(
                                                      image: DecorationImage(
                                                          image: NetworkImage("https://www.pngitem.com/pimgs/m/22-221065_pastry-cake-png-transparent-png.png"),
                                                          fit: BoxFit.cover
                                                      ),
                                                      color: Colors.white54,
                                                      shape: BoxShape.circle,
                                                    ),
                                                  ),
                                                ),
                                                Positioned(
                                                  left:140,
                                                  top:70,
                                                  child: Row(
                                                    children: [
                                                      Column(
                                                        crossAxisAlignment: CrossAxisAlignment.start,
                                                        children: [
                                                          Container(
                                                              width:100,
                                                              child: Text(
                                                                "${cakeNames[index]}",style: TextStyle(color: Colors.pink,fontSize: 16,fontWeight: FontWeight.bold,
                                                                  fontFamily: poppins)
                                                                ,maxLines: 2,)),
                                                          Row(
                                                            children: [
                                                              Text('₹215 ',style: TextStyle(color: Colors.deepPurple,fontSize: 20,fontWeight: FontWeight.bold,
                                                                  fontFamily: poppins),),
                                                              Text('₹300',style: TextStyle(color: Colors.black54,fontSize: 16,fontWeight: FontWeight.normal
                                                                  ,fontStyle: FontStyle.italic,decoration: TextDecoration.lineThrough,
                                                                  fontFamily: poppins
                                                              ),),
                                                            ],
                                                          )
                                                        ],
                                                      ),
                                                      SizedBox(
                                                        width: 10,
                                                      ),
                                                      // ,
                                                      InkWell
                                                        (
                                                          onTap: (){
                                                            print("add to favorite");
                                                          },
                                                          child:Icon(Icons.shopping_basket_outlined,color: Colors.pink,)),
                                                      SizedBox(
                                                        width: 10,
                                                      ),
                                                      InkWell
                                                        (
                                                          onTap: (){
                                                            print("add to favorite");
                                                          },
                                                          child: Icon(Icons.favorite,color: Colors.deepPurple,))
                                                    ],
                                                  ),
                                                ),
                                              ],
                                            ),
                                          ),
                                        ),
                                       childCount: cakeNames.length
                                    )
                                )
                              ],
                          )
                      ),
                    )

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
