import 'package:cake_que/home_activity.dart';
import 'package:cake_que/signup_screen.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class LoginScreen extends StatefulWidget {
  const LoginScreen({Key? key}) : super(key: key);

  @override
  _LoginScreenState createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> {

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
                  children: [
                    Container(
                      child: Text('LOGIN',style: TextStyle(fontWeight: FontWeight.bold,fontSize: 22,fontFamily:poppins),),
                    ),
                    SizedBox(height: 10,),
                    Container(
                      child: Text('Add your details to login',style: TextStyle(fontFamily:poppins),),
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
                          hintText:'Your Email',
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
                            Navigator.push(context, MaterialPageRoute(builder: (context)=>HomeActivity()));
                          },
                          child: Text('Login',style: TextStyle(color: Colors.white,fontSize: 16,fontFamily:poppins),)),
                    ),
                    Container(
                      child: TextButton(
                        onPressed: (){},
                        child: Text('Forgot your password?',style: TextStyle(color: Colors.red, decoration: TextDecoration.underline,fontFamily:poppins)),
                      ),
                    ),
                    Container(
                      child: Text('(OR)',style: TextStyle(fontFamily:poppins),),
                    ),
                    SizedBox(height: 20,),
                    Container(
                      child: Text('login With',style: TextStyle(fontFamily:poppins),),
                    ),
                    SizedBox(height: 15,),
                    Container(child: Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Container(
                          height: 40,
                            width: 40,
                            decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(30),
                                color: Colors.blueAccent,
                              boxShadow:[ BoxShadow(
                                  color: Colors.grey,
                                  blurRadius: 4.0,
                                  offset:Offset(1.0,1.0)
                              )
                              ],
                            ),
                            child: IconButton(onPressed: (){}, icon: Icon(Icons.facebook_outlined,color: Colors.white,))
                        ),
                        SizedBox(width: 10,),
                        Container(
                            height: 40,
                            width: 40,
                            decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(30),
                                color: Colors.red,
                              boxShadow:[ BoxShadow(
                                  color: Colors.grey,
                                  blurRadius: 4.0,
                                  offset:Offset(1.0,1.0)
                              )
                              ],
                            ),
                            child: IconButton(onPressed: (){},icon: Icon(FontAwesomeIcons.google,color: Colors.white,size: 20,))
                        ),
                      ],
                    ),)
                  ],
                ),
              ),
              Container(
                margin: EdgeInsets.only(top:160),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Text('Dont have an Account?',style: TextStyle(fontSize: 15,fontFamily: poppins),),
                    TextButton(onPressed: (){
                      Navigator.push(context, MaterialPageRoute(builder: (contex)=>SignupScreen()));
                    }, child: Text('Sign Up',style: TextStyle(color: Colors.red,fontSize: 15,fontWeight: FontWeight.bold),))
                  ],
                )
              ),
            ],
          ),
        ),
      ),
    );
  }
}
