import 'package:cake_que/login_screen.dart';
import 'package:flutter/material.dart';

class SignupScreen extends StatefulWidget {
  const SignupScreen({Key? key}) : super(key: key);

  @override
  _SignupScreenState createState() => _SignupScreenState();
}

class _SignupScreenState extends State<SignupScreen> {
  String poppins = 'Poppins';
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: SingleChildScrollView(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Container(
                padding: EdgeInsets.all(20),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.start,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    Container(
                      child: Text('SIGN UP',style: TextStyle(fontWeight: FontWeight.bold,fontSize: 22,fontFamily:poppins),),
                    ),
                    SizedBox(height: 10,),
                    Container(
                      child: Text('Add your detials to sign up',style: TextStyle(fontFamily:poppins),),
                    ),
                    SizedBox(height: 40,),
                    Container(
                        padding: EdgeInsets.only(left: 30),
                        height: 55,
                        width: MediaQuery.of(context).size.width,
                        decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(30),
                            color: Colors.blueGrey[50]
                        ),
                        child: TextField(
                          decoration: InputDecoration(
                              border: InputBorder.none,
                              hintText: 'Name',
                              hintStyle: TextStyle(fontFamily:poppins)

                          ),
                        )
                    ),
                    SizedBox(height: 25,),
                    Container(
                        padding: EdgeInsets.only(left: 30),
                        height: 55,
                        width: MediaQuery.of(context).size.width,
                        decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(30),
                            color: Colors.blueGrey[50]
                        ),
                        child: TextField(
                          decoration: InputDecoration(
                              border: InputBorder.none,
                              hintText: 'Email',
                              hintStyle: TextStyle(fontFamily:poppins)

                          ),
                        )
                    ),
                    SizedBox(height: 25,),
                    Container(
                        padding: EdgeInsets.only(left: 30),
                        height: 55,
                        width: MediaQuery.of(context).size.width,
                        decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(30),
                            color: Colors.blueGrey[50]
                        ),
                        child: TextField(
                          decoration: InputDecoration(
                              border: InputBorder.none,
                              hintText: 'Mobile No',
                              hintStyle: TextStyle(fontFamily:poppins)

                          ),
                        )
                    ),
                    SizedBox(height: 25,),
                    Container(
                        padding: EdgeInsets.only(left: 30),
                        height: 55,
                        width: MediaQuery.of(context).size.width,
                        decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(30),
                            color: Colors.blueGrey[50]
                        ),
                        child: TextField(
                          decoration: InputDecoration(
                              border: InputBorder.none,
                              hintText: 'Address',
                              hintStyle: TextStyle(fontFamily:poppins)
                          ),
                        )
                    ),
                    SizedBox(height: 25,),
                    Container(
                        padding: EdgeInsets.only(left: 30),
                        height: 55,
                        width: MediaQuery.of(context).size.width,
                        decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(30),
                            color: Colors.blueGrey[50]
                        ),
                        child: TextField(
                          decoration: InputDecoration(
                              border: InputBorder.none,
                              hintText: 'Password',
                              hintStyle: TextStyle(fontFamily:poppins)
                          ),
                        )
                    ),
                    SizedBox(height: 25,),
                    Container(
                        padding: EdgeInsets.only(left: 30),
                        height: 55,
                        width: MediaQuery.of(context).size.width,
                        decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(30),
                            color: Colors.blueGrey[50]
                        ),
                        child: TextField(
                          decoration: InputDecoration(
                              border: InputBorder.none,
                              hintText: 'Confirm Password',
                            hintStyle: TextStyle(fontFamily:poppins)
                          ),
                        )
                    ),
                    SizedBox(height: 25,),
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
                          onPressed:(){
                          //  Navigator.push(context, MaterialPageRoute(builder: (contex)=>LoginScreen()));

                          },
                          child: Text('Sign Up',style: TextStyle(color: Colors.white,fontSize: 16,fontFamily:poppins),)),
                    ),

                  ],
                ),
              ),
              Container(
                  padding: EdgeInsets.only(bottom: 10),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Text('Already have an Account?',style: TextStyle(fontSize: 15,fontFamily:poppins),),
                      TextButton(onPressed: (){
                        Navigator.push(context, MaterialPageRoute(builder: (contex)=>LoginScreen()));
                      }, child: Text('Login',style: TextStyle(color: Colors.red,fontSize: 15,fontWeight: FontWeight.bold,fontFamily:poppins),))
                    ],
                  )
              )
            ],
          ),
        ),
      ),
    );;
  }
}
