import 'package:cake_que/home_activity.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class CheckoutActivity extends StatefulWidget {
  const CheckoutActivity({Key? key}) : super(key: key);

  @override
  _CheckoutActivityState createState() => _CheckoutActivityState();
}

class _CheckoutActivityState extends State<CheckoutActivity> {
  int selectedRadio = 0;
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
        title: Text('Checkout',style: TextStyle(color: Colors.deepPurple,fontWeight: FontWeight.bold,fontSize: 22,
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
        child: SingleChildScrollView(
          child: Column(
            children: [
              Container(
                margin: EdgeInsets.only(left:10,right: 10 , top :10),
                decoration: BoxDecoration(
                  color: Color(0xffE4FFFD),
                  borderRadius: BorderRadius.circular(8),
                  // border: Border.all(
                  //   color: Colors.deepPurple,
                  //   width: 0.5,
                  // ),
                ),
                child: Column(
                  children: [
                    Container(
                      padding: EdgeInsets.all(12),
                      alignment: Alignment.centerLeft,
                      child: Text(" Delivery Address",style:
                      TextStyle(color: Colors.deepPurple,fontWeight: FontWeight.w900,fontSize: 17,
                          fontFamily: poppins)),
                    ),
                    Container(
                      margin: EdgeInsets.only(left:10,right: 10),
                      height: 2,
                      color: Colors.white,
                    ),

                    Container(
                      padding: EdgeInsets.only(top: 14 , left: 14 , right: 14 , bottom: 30),
                      child: Row(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Container(
                            width:190,
                            child: Text("1/4 Vellandipalayam,\nThekkalur, Avinashi ,\n"
                                "641654" ,style:
                            TextStyle(color: Colors.black45,fontWeight: FontWeight.w900,fontSize: 16,
                                fontFamily: poppins),
                              maxLines: 3,
                            ),
                          ),
                          Expanded(
                             child:
                            Row(
                              mainAxisAlignment: MainAxisAlignment.end,
                              children: [
                                Container(
                                  child:RaisedButton(
                                    color: Colors.white,
                                    shape: RoundedRectangleBorder(
                                        borderRadius: BorderRadius.circular(15)),
                                    onPressed: (){
                                      print('Address changing...');
                                    },
                                    child: Container(
                                      alignment: Alignment.center,
                                      width: 70,
                                      child:Text('Change',
                                        style: TextStyle(fontSize: 14 , color: Colors.deepPurple,
                                            fontFamily: poppins),
                                      ),
                                    ),
                                  ),
                                ),
                              ],
                            ),
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
              ),
              Container(
                padding: EdgeInsets.all(14),
                width: double.infinity,

                child: Text('Payment Method',style:
                TextStyle(color: Colors.black45,fontWeight: FontWeight.w900,fontSize: 17,
                    fontFamily: poppins)),
              ),

              Container(
                margin: EdgeInsets.only(left:10,right: 10 , top :10),
                decoration: BoxDecoration(
                  color:Color(0xffE4FFFD),
                    borderRadius: BorderRadius.circular(8),
                   border: Border.all(
                     color: Colors.black12,
                     width: 1,
                   ),
                ),
                height: 55,
                child: ListTile(
                  onTap: (){
                    setState(() {
                      selectedRadio = 1;
                    });
                  },
                  title: Text('Cash on delivery',style:
                  TextStyle(color: Colors.black,fontWeight: FontWeight.w500,fontSize: 17,
                      fontFamily: poppins)),
                  trailing: Radio(
                    value: 1,
                    groupValue: selectedRadio,
                    activeColor: Colors.blue,
                    onChanged: (int? val) {
                      print("Radio $val");
                      setState(() {
                        selectedRadio = val!;
                      });
                    },
                  ),
                ),
              ),
              Container(
                margin: EdgeInsets.only(left:10,right: 10 , top :10),
                decoration: BoxDecoration(
                  color: Color(0xffE4FFFD),
                  borderRadius: BorderRadius.circular(8),
                  border: Border.all(
                    color: Colors.black12,
                    width: 1,
                  ),
                ),
                height: 55,
                child: ListTile(
                  onTap: (){
                    setState(() {
                      selectedRadio = 2;
                    });
                  },
                  title: Text('Credit/Debit Card',style:
                  TextStyle(color: Colors.black,fontWeight: FontWeight.w500,fontSize: 17,
                      fontFamily: poppins)),
                  trailing: Radio(
                    value: 2,
                    groupValue: selectedRadio,
                    activeColor: Colors.blue,
                    onChanged: (int? val) {
                      print("Radio $val");
                      setState(() {
                        selectedRadio = val!;
                      });
                    },
                  ),
                ),
              ),
              Container(
                margin: EdgeInsets.only(left:10,right: 10 , top :10),
                decoration: BoxDecoration(
                  color: Color(0xffE4FFFD),
                  borderRadius: BorderRadius.circular(8),
                  border: Border.all(
                    color: Colors.black12,
                    width: 1,
                  ),
                ),
                height: 55,
                child: ListTile(
                  onTap: (){
                    setState(() {
                      selectedRadio = 3;
                    });
                  },
                  title: Text('UPI',style:
                  TextStyle(color: Colors.black,fontWeight: FontWeight.w500,fontSize: 17,
                      fontFamily: poppins)),
                  trailing: Radio(
                    value: 3,
                    groupValue: selectedRadio,
                    activeColor: Colors.blue,
                    onChanged: (int? val) {
                      print("Radio $val");
                      setState(() {
                        selectedRadio = val!;
                      });
                    },
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
                          style:TextStyle(color: Colors.black,fontWeight: FontWeight.w600,fontSize: 14.5,
                              fontFamily: poppins),
                        ),
                        Expanded(
                          child: Container(
                            alignment: Alignment.centerRight,
                            child: Text("\???120",
                              style:TextStyle(color: Colors.deepPurple,fontSize: 16,
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
                          style:TextStyle(color: Colors.black,fontWeight: FontWeight.w600,fontSize: 14.5,
                              fontFamily: poppins),
                        ),
                        Expanded(
                          child: Container(
                            alignment: Alignment.centerRight,
                            child: Text("\???70",
                              style:TextStyle(color: Colors.deepPurple,fontSize: 16,
                                  fontFamily: poppins),),
                          ),
                        )
                      ],
                    ),
                    Container(
                      margin: EdgeInsets.only(top: 15,bottom: 10),
                      height: 1,
                      color: Colors.black12,
                    ),
                    Row(
                      children: [
                        Text('Total',
                          style:TextStyle(color: Colors.black,fontWeight: FontWeight.w900,fontSize: 18,
                              fontFamily: poppins),
                        ),
                        Expanded(
                          child: Container(
                            alignment: Alignment.centerRight,
                            child: Text("\???190",
                              style:TextStyle(color: Colors.deepPurple,fontWeight: FontWeight.w900,fontSize: 18,
                                  fontFamily: poppins),),
                          ),
                        )
                      ],
                    ),
                  ],
                ),
              ),

              GestureDetector(
                onTap: (){
                  print("BTN working....");
                },
                child: Container(
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(25),
                      color: Colors.deepPurple
                  ),
                  width: MediaQuery.of(context).size.width,
                  height: 50,
                  alignment: Alignment.center,
                  margin: EdgeInsets.only(top: 50 , left: 20 , right: 20 , bottom: 8),
                  child: MaterialButton(
                    onPressed: (){
                      print("BTN working....");
                      _bottomSheet(context);
                    },
                    child: Text('Proceed to Pay'
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
    );
  }
  void _bottomSheet(context) async{

    showModalBottomSheet<void>(
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(20.0),
      ),
      backgroundColor: Colors.white,
      context: context,
      builder: (BuildContext context) {
        return Container(
          padding: EdgeInsets.only(top:30,left: 30,right: 30),
          height: MediaQuery.of(context).size.height*2.0,
          child: Center(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: <Widget>[
                Container(
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(100),
                    image: DecorationImage(
                        image: new AssetImage('assets/images/order.jpeg'),fit: BoxFit.cover),
                  ),
                  height: 120,
                  width: 120,
                ),
                SizedBox(height:20),
                Container(
                  child: Text('THANK YOU!',style: TextStyle(fontWeight: FontWeight.bold,fontSize: 30,color:Color(0Xff5432a8),
                  fontFamily: poppins),),
                ),
                Container(
                  child: Text('for your order',style: TextStyle(fontSize: 17,color:Color(0Xff5432a8) ,fontFamily: poppins),),
                ),
                SizedBox(height: 20,),
                Container(
                  child: Text('Your Order is now being processed.We will let you know once the order is picked from the outlet.',
                      style: TextStyle(fontSize: 15,fontFamily: poppins),textAlign: TextAlign.center),
                ),

                SizedBox(height: 25,),
                Container(
                  // child: Text(),
                  child: TextButton(child:Text('BACK TO HOME',
                       style: TextStyle(decoration: TextDecoration.underline,color: Colors.red,fontWeight: FontWeight.bold,fontFamily: poppins),),
                    onPressed:(){
                      Navigator.push(context, MaterialPageRoute(builder: (context)=>HomeActivity()));
                    } ,),
                ),
                SizedBox(height: 25,)
              ],
            ),
          ),
        );
      },
    );
  }
}
