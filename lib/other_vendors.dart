import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_rating_bar/flutter_rating_bar.dart';

class OtherVendors extends StatefulWidget {
  const OtherVendors({Key? key}) : super(key: key);

  @override
  _OtherVendorsState createState() => _OtherVendorsState();
}

class _OtherVendorsState extends State<OtherVendors> {
int _selectedradio = 0;
  bool value =  false;
  String poppins = 'Poppins';
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
        title: Text('OtherVendors',style: TextStyle(color: Color(0Xff5432a8),fontFamily: poppins),),
        actions: [
           Container(
             padding: EdgeInsets.symmetric(horizontal: 10),
             child: CircleAvatar(
                    backgroundColor: Color(0Xff5432a8),
                    radius: 15,
                    child: IconButton(onPressed: (){}, icon:Icon(Icons.person,color: Colors.white,size: 15,))
                ),
           )
        ],
      ),
      body: SingleChildScrollView(
        child: Container(
          padding: EdgeInsets.all(10),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Container(
                decoration: BoxDecoration(
                  boxShadow:[ BoxShadow(
                      color: Colors.black12,
                      blurRadius: 6.0,
                      offset:Offset(0.0,0.0)
                  )
                  ],
                ),
                child: Card(
                  child: Container(
                    padding: EdgeInsets.symmetric(horizontal: 10),
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(15),
                    ),
                    child: TextFormField(
                      decoration: InputDecoration(
                          contentPadding: EdgeInsets.all(10),
                          hintText: "Search",
                          hintStyle: TextStyle(fontFamily: poppins),
                          border: InputBorder.none,
                          prefixIcon: IconButton(
                            onPressed: () {},
                            icon: Icon(Icons.search),
                          )),
                    ),
                  ),
                ),
              ),
              Container(
                padding: EdgeInsets.only(top:10),
                child: Text('Saibaba Colony',style: TextStyle(fontFamily: poppins),),
              ),
              SizedBox(height: 10,),
              Container(
                child: SingleChildScrollView(
                  child: ListView.builder(
                   // physics:,
                    shrinkWrap: true,
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
                              'MuthuKumar', style: TextStyle(fontSize: 17,fontFamily: poppins),),
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
                              value: 3,
                              groupValue: index,
                              activeColor: Colors.blue,
                              onChanged: (int? val) {
                                print("Radio $val");
                                setState(() {
                                  _selectedradio = index!;
                                });
                              },
                            ),
                          ),
                        );
                      }
                  ),
                ),
              ),
            SizedBox(height: 10,),


              Container(
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.end,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    Container(
                      child:Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                            Checkbox(
                              shape: RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(4.0),
                              ),
                              side: MaterialStateBorderSide.resolveWith(
                                    (states) => BorderSide(width: 2.0, color: Colors.green),
                              ),
                            activeColor: Colors.green,
                            value: value,
                            onChanged: (bool? newvalue) {
                              setState(() {
                                value = newvalue!;
                              });
                            },
                          ),
                          Text('Other vendors 100rs charge extra',style: TextStyle(fontFamily: poppins),),
                        ],
                      ) ,
                    ),
                    //SizedBox(height: 5,),
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
                          child: Text('Add vendor',style: TextStyle(color: Colors.white,fontSize: 16,fontFamily: poppins),)),
                    ),

                  ],
                ),
              ),

            ],
          ),
        ),
      ),
    );
  }
}
  