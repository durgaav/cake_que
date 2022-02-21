import 'package:cake_que/login_screen.dart';
import 'package:flutter/material.dart';

class AuthScreen extends StatefulWidget {
  const AuthScreen({Key? key}) : super(key: key);

  @override
  _AuthScreenState createState() => _AuthScreenState();
}

class _AuthScreenState extends State<AuthScreen> {

  bool _bcolor1 = false;
  bool _bcolor2 = false;

  void _toggleclr() {
    setState(() {
      if (_bcolor1) {
        _bcolor1 = false;
      } else {
        _bcolor1 = true;
      }
    });
  }
  void _togglecolor() {
    setState(() {
      if (_bcolor2) {
        _bcolor2 = false;
      } else {
        _bcolor2 = true;
      }
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        padding: EdgeInsets.all(20),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Container(
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(100),
                image: DecorationImage(
                    image: new AssetImage('assets/images/img1.jpeg'),fit: BoxFit.cover),
              ),
              height: 170,
              width: 170,
            ),
            SizedBox(height: 40,),
            Container(
              width: MediaQuery.of(context).size.width,
              height: 50,
              child: RaisedButton(
                  color:(_bcolor1)?Color(0Xff5432a8):Colors.white ,
                  shape: new RoundedRectangleBorder(
                      borderRadius: new BorderRadius.circular(25.0),
                      side: BorderSide(color:(_bcolor1)?Color(0Xff5432a8): Colors.red)
                  ),
                  onPressed:(){
                     Navigator.push(context, MaterialPageRoute(builder: (contex)=>LoginScreen()));
                    _toggleclr();
                  },
                  child: Text('Login',style: TextStyle(color:(_bcolor1)?Colors.white:Colors.red,fontSize: 16),)),
            ),
            SizedBox(height: 20,),
            Container(
              width: MediaQuery.of(context).size.width,
              height: 50,
              child: RaisedButton(
                  color:(_bcolor2)?Color(0Xff5432a8):Colors.white ,
                  shape: new RoundedRectangleBorder(
                    borderRadius: new BorderRadius.circular(25.0),
                    side: BorderSide(color:(_bcolor2)?Color(0Xff5432a8): Colors.red)
                  ),
                  onPressed:(){
                    _togglecolor();
                    _bottomSheet(context);
                  },
                  child: Text('Create an Account',style: TextStyle(color:(_bcolor2)?Colors.white:Colors.red,fontSize: 16),)),
            ),
          ],
        ),
      ),
    );
  }
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
                    child: Text('THANK YOU!',style: TextStyle(fontWeight: FontWeight.bold,fontSize: 30,color:Color(0Xff5432a8) ),),
                  ),
              Container(
                child: Text('for your order',style: TextStyle(fontSize: 17,color:Color(0Xff5432a8) ),),
              ),
              SizedBox(height: 20,),
              Container(
                child: Text('Your Order is now being processed.We will let you know once the order is picked from the outlet.',style: TextStyle(fontSize: 17,),textAlign: TextAlign.center),
              ),

              SizedBox(height: 50,),
              Container(
                child: Text('BACK TO HOME',style: TextStyle(decoration: TextDecoration.underline,color: Colors.red,fontWeight: FontWeight.bold,),),
              )
            ],
          ),
        ),
      );
    },
  );
}