import 'package:cake_que/login_screen.dart';
import 'package:cake_que/signup_screen.dart';
import 'package:flutter/material.dart';

class AuthScreen extends StatefulWidget {
  const AuthScreen({Key? key}) : super(key: key);

  @override
  _AuthScreenState createState() => _AuthScreenState();
}

class _AuthScreenState extends State<AuthScreen> {

  bool _bcolor1 = false;
  bool _bcolor2 = false;
  String poppins = 'Poppins';

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
                  child: Text('Login',style: TextStyle(color:(_bcolor1)?Colors.white:Colors.red,fontSize: 16,fontFamily:poppins),)),
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
                    Navigator.push(context, MaterialPageRoute(builder: (contex)=>SignupScreen()));
                  },
                  child: Text('Create an Account',style: TextStyle(color:(_bcolor2)?Colors.white:Colors.red,fontSize: 16,fontFamily:poppins),)),
            ),
          ],
        ),
      ),
    );
  }
}
