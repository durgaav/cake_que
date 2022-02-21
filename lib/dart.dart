import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class Home extends StatefulWidget {
  const Home({Key? key}) : super(key: key);

  @override
  _HomeState createState() => _HomeState();
}

class _HomeState extends State<Home> {

  var cakeNames = [
    "Black forest",
    "Venila flaver",
    "Chocolate",
    "Strawberry",
    "Creamed cake",
    "Nuts cake"
  ];

  List<bool> selectedColor = [
    false , false , false , false , false , false , false
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Container(
          height: MediaQuery.of(context).size.height,
          child: Column(
            children: <Widget>[
              //region APP BAR
              ListTile(
                  leading: IconButton(
                    onPressed: (){},
                    icon: Icon(Icons.sort),
                    iconSize: 35,
                    color: Colors.deepPurpleAccent,
                  ),
                  title: Text('Surya',style: TextStyle(color: Colors.black45,fontWeight: FontWeight.w800)),
                  subtitle: Text('Avinashi',style: TextStyle(color: Colors.deepPurple,fontWeight: FontWeight.bold)),
                  trailing:Container(
                    width: 100,
                    child: Row(
                      children: <Widget>[
                        CircleAvatar(
                          radius: 22,
                          backgroundImage: NetworkImage("https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcTaNqxHhXxQo-mMKSsSU0wv9spXmfSzInG_sg&usqp=CAU"),
                        ),
                        SizedBox(
                          width: 10,
                        ),
                        Stack(
                          children: [
                            CircleAvatar(
                              backgroundColor: Colors.pink,
                              radius: 22,
                              child: Icon(
                                Icons.shopping_basket_outlined,
                                color: Colors.white,
                              ),
                            ),
                            Positioned(
                              left: 24,
                              child: CircleAvatar(
                                backgroundColor: Colors.deepPurple,
                                radius: 10,
                                child: Center(
                                  child: Text("5"),
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
                        color: Colors.white,
                        borderRadius: BorderRadius.circular(20)
                    ),
                    margin: EdgeInsets.only(left: 20,right: 20),
                    alignment: Alignment.centerLeft,
                    height: 55,
                    width: MediaQuery.of(context).size.width,
                    child: TextFormField(
                      maxLines: 1,
                      decoration: InputDecoration(
                          prefixIcon: Icon(Icons.search,color: Colors.black54,),
                          hintText: "Search Cake",
                          border: InputBorder.none,
                          hintStyle: TextStyle(color: Colors.black54,fontSize: 15,fontWeight: FontWeight.bold)
                      ),
                    ),
                  ),
                  //endregion

                  //region CATEGORIES
                  Container(
                    margin: EdgeInsets.only(top: 8),
                    height: MediaQuery.of(context).size.height * 0.26,
                    child: Column(
                      children: <Widget>[
                        Container(
                          margin: EdgeInsets.only(left: 20,right: 20),
                          child: Row(
                            children: [
                              Text("Categories",
                                style: TextStyle(color: Colors.deepPurple,fontSize: 20,fontWeight: FontWeight.bold),),
                              Expanded(
                                child: Container(
                                  alignment: Alignment.centerRight,
                                  child:InkWell(
                                    onTap: (){
                                      print("more clicked....");
                                    },
                                    child: Text("See all"
                                      ,style: TextStyle(color: Colors.pink,fontSize: 16,fontWeight: FontWeight.bold),),
                                  ),
                                ),
                              ),
                            ],
                          ),
                        ),
                        Container(
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
                                              Colors.white:Colors.black54,fontSize: 13.5,fontWeight: FontWeight.bold),
                                          maxLines: 2,
                                        )
                                      ],
                                    ),
                                  ),

                                );
                              }
                          ),
                        )
                      ],
                    ),
                  ),
                  //endregion

                  //region CAKE LIST
                  Container(
                    height: MediaQuery.of(context).size.height * 0.42,
                    child: ListView.builder(
                        itemCount: cakeNames.length,
                        itemBuilder: (context , index){
                          return Container(
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
                                    height : 110,
                                    width:110,
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
                                                "${cakeNames[index]}",style: TextStyle(color: Colors.pink,fontSize: 16,fontWeight: FontWeight.bold)
                                                ,maxLines: 2,)),
                                          Row(
                                            children: [
                                              Text('\$215',style: TextStyle(color: Colors.deepPurple,fontSize: 20,fontWeight: FontWeight.bold),),
                                              Text('  \$300',style: TextStyle(color: Colors.black54,fontSize: 16,fontWeight: FontWeight.normal
                                                  ,fontStyle: FontStyle.italic,decoration: TextDecoration.lineThrough
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
                          );
                        }
                    ),
                  ),
                  //endregion

                ],
              )
            ],
          ),
        ),
      ),
    );
  }
}
