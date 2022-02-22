import 'package:cake_que/checkout_activity.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class CartActivity extends StatefulWidget {
  const CartActivity({Key? key}) : super(key: key);

  @override
  _CartActivityState createState() => _CartActivityState();
}

class _CartActivityState extends State<CartActivity> {
  String poppins = 'Poppins';
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        elevation: 0,
        backgroundColor: Colors.white,
        leading: IconButton(
          onPressed: (){
            Navigator.pop(context);
          },
          icon: Icon(CupertinoIcons.back),
          color: Colors.deepPurple,
          iconSize: 30,
        ),
        title: Text('Cart',style: TextStyle(color: Colors.deepPurple,fontWeight: FontWeight.bold,fontSize: 22,
        fontFamily: poppins),),
        actions: [
          CircleAvatar(
            radius: 19,
            backgroundImage: NetworkImage("https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcTaNqxHhXxQo-mMKSsSU0wv9spXmfSzInG_sg&usqp=CAU"),
          ),
          SizedBox(
            width: 15,
          )
        ],
      ),
      body: Container(
        height: MediaQuery.of(context).size.height,
        width: MediaQuery.of(context).size.height,
        child: Scrollbar(
          thickness: 6,
          child: SingleChildScrollView(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: <Widget>[
                //List View
                ListView.builder(
                  physics: NeverScrollableScrollPhysics(),
                  itemCount: 4,
                  shrinkWrap: true,
                    itemBuilder: (context , index){
                      return Container(
                        color: Colors.grey[100],
                        margin: EdgeInsets.only(top: 2),
                        height: 80,
                        child: Row(
                          children: [
                            Column(
                              mainAxisAlignment: MainAxisAlignment.center,
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Row(
                                  children: [
                                    SizedBox(
                                      width: 15,
                                    ),
                                    Container(
                                      margin: EdgeInsets.all(3),
                                      decoration: BoxDecoration(
                                        border: Border.all(
                                          color: Colors.green,
                                          width: 1,
                                        ),
                                          borderRadius: BorderRadius.circular(8),
                                      ),
                                      padding: EdgeInsets.all(6.5),
                                      child: CircleAvatar(
                                        radius: 5.5,
                                        backgroundColor: Colors.green,
                                      ),
                                    ),
                                    Container(
                                      width: 170,
                                      child: Text(' Black forest ${index}',style:
                                      TextStyle(color: Colors.deepPurple,fontWeight: FontWeight.bold,fontSize: 17,
                                          fontFamily: poppins),
                                        maxLines: 2,
                                      ),
                                    )
                                  ],
                                ),
                                Container(
                                  child: Text('   ₹120',style:
                                  TextStyle(color: Colors.black45,fontWeight: FontWeight.bold,fontSize: 19,
                                      fontFamily: poppins),),
                                ),
                              ],
                            ),
                            Expanded(
                                child: Container(
                                  child: Row(
                                    mainAxisAlignment: MainAxisAlignment.end,
                                    children: [
                                      GestureDetector(
                                        onTap:(){print('hello');},
                                        child: CircleAvatar(
                                          radius:19,
                                          backgroundColor: Colors.pink,
                                          child: CircleAvatar(
                                            backgroundColor: Colors.white,
                                            child: Text("-",style:
                                            TextStyle(color: Colors.deepPurple,fontWeight: FontWeight.bold,fontSize: 20),),
                                            radius: 17,
                                          ),
                                        ),
                                      ),

                                      Padding(
                                        padding:EdgeInsets.all(4.0),
                                        child: Text('03',style:
                                        TextStyle(color: Colors.deepPurple,fontWeight: FontWeight.bold,fontSize: 15,
                                            fontFamily: poppins),),
                                      ),

                                      GestureDetector(
                                        onTap:(){print('hello');},
                                        child: CircleAvatar(
                                          radius:19,
                                          backgroundColor: Colors.pink,
                                          child: CircleAvatar(
                                            backgroundColor: Colors.pink,
                                            child: Text("+",style:
                                            TextStyle(color: Colors.white,fontWeight: FontWeight.bold,fontSize: 25),),
                                            radius: 17,
                                          ),
                                        ),
                                      ),
                                      SizedBox(
                                        width: 15,
                                      )
                                    ],
                                  ),
                                )
                            )
                          ],
                        ),
                      );
                    }
                ),
                //Notes Add
                  Container(
                    margin: EdgeInsets.only(top: 30,left: 15),
                    child: InkWell(
                      onTap:(){print('hello');},
                      child: Text("+ Add Notes",
                        style:TextStyle(color: Colors.pink,fontWeight: FontWeight.bold,fontSize: 19,
                            fontFamily: poppins),
                      ),
                    ),
                  ),
                //Coupon Code
                Container(
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(10),
                    color: Colors.grey[100],
                  ),
                  margin: EdgeInsets.only(top: 25,left: 9, right: 9),
                  child: TextFormField(
                    decoration: InputDecoration(
                      contentPadding: EdgeInsets.all(3),
                      hintText: "Apply coupons",
                      hintStyle:TextStyle(color: Colors.black45,fontSize: 18,
                          fontFamily: poppins),
                      border: InputBorder.none
                    ),
                  ),
                ),
                Container(
                  margin: EdgeInsets.only(left: 15 , right: 20,top: 30),
                  child: Column(
                    children: [
                      Row(
                        children: [
                          Text('Sub Total',
                            style:TextStyle(color: Colors.black,fontWeight: FontWeight.w600,fontSize: 16,
                                fontFamily: poppins),
                          ),
                          Expanded(
                            child: Container(
                              alignment: Alignment.centerRight,
                              child: Text("\₹120",
                                style:TextStyle(color: Colors.deepPurple,fontSize: 20,
                                    fontFamily: poppins),),
                            ),
                          )
                        ],
                      ),
                      SizedBox(
                        height: 10,
                      ),
                      Row(
                        children: [
                          Text('Delivery Cost',
                            style:TextStyle(color: Colors.black,fontWeight: FontWeight.w600,fontSize: 16,
                                fontFamily: poppins),
                          ),
                          Expanded(
                            child: Container(
                              alignment: Alignment.centerRight,
                              child: Text("\₹70",
                                style:TextStyle(color: Colors.deepPurple,fontSize: 20,
                                    fontFamily: poppins),),
                            ),
                          )
                        ],
                      ),
                      Container(
                        margin: EdgeInsets.only(left:7,right: 7,top: 15,bottom: 10),
                        height: 1,
                        color: Colors.black,
                      ),
                      Row(
                        children: [
                          Text('Total',
                            style:TextStyle(color: Colors.black,fontWeight: FontWeight.w900,fontSize: 22,
                                fontFamily: poppins),
                          ),
                          Expanded(
                            child: Container(
                              alignment: Alignment.centerRight,
                              child: Text("\₹190",
                                style:TextStyle(color: Colors.deepPurple,fontWeight: FontWeight.w900,fontSize: 22,
                                    fontFamily: poppins),),
                            ),
                          )
                        ],
                      ),
                    ],
                  ),
                ),
                //Checkout BTN
                GestureDetector(
                  onTap: (){
                    print("BTN working....");
                    Navigator.push(context, MaterialPageRoute(builder: (context)=>CheckoutActivity()));
                  },
                  child: Container(
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(25),
                        color: Colors.deepPurple
                    ),
                    width: MediaQuery.of(context).size.width,
                    height: 50,
                    alignment: Alignment.center,
                    margin: EdgeInsets.only(top: 75 , left: 20 , right: 20 , bottom: 15),
                    child: MaterialButton(
                      onPressed: (){
                        print("BTN working....");
                        Navigator.push(context, MaterialPageRoute(builder: (context)=>CheckoutActivity()));
                      },
                      child: Text('Checkout'
                        , style:TextStyle(color: Colors.white,fontWeight: FontWeight.bold,fontSize: 18,
                            fontFamily: poppins),
                      ),
                    ),
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
