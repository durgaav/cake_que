import 'package:cake_que/home_activity.dart';
import 'package:cake_que/screens/home.dart';
import 'package:cake_que/signup_screen.dart';
import 'package:flutter/material.dart';

class LoginScreen extends StatefulWidget {
  const LoginScreen({Key? key}) : super(key: key);

  @override
  _LoginScreenState createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> {
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
                      child: Text('LOGIN',style: TextStyle(fontWeight: FontWeight.bold,fontSize: 22),),
                    ),
                    SizedBox(height: 10,),
                    Container(
                      child: Text('Add your detials to login'),
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
                          hintText: 'Your Email'
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
                              hintText: 'Password'
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
                          child: Text('Login',style: TextStyle(color: Colors.white,fontSize: 16),)),
                    ),
                    Container(
                      child: TextButton(
                        onPressed: (){},
                        child: Text('Forgot your password?',style: TextStyle(color: Colors.red, decoration: TextDecoration.underline,)),
                      ),
                    ),
                    Container(
                      child: Text('(OR)'),
                    ),
                    SizedBox(height: 20,),
                    Container(
                      child: Text('login With'),
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
                                color: Colors.blueAccent
                            ),
                            child: IconButton(onPressed: (){}, icon: Icon(Icons.facebook_outlined,color: Colors.white,))
                        ),
                        SizedBox(width: 10,),
                        Container(
                            height: 40,
                            width: 40,
                            decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(30),
                                color: Colors.red
                            ),
                            child: IconButton(onPressed: (){}, icon: Icon(Icons.g_mobiledata,color: Colors.white,size: 30,))
                        ),

                      ],
                    ),)
                  ],
                ),
              ),
              Container(
                padding: EdgeInsets.only(bottom: 10),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Text('Dont have an Account?',style: TextStyle(fontSize: 15),),
                    TextButton(onPressed: (){
                      Navigator.push(context, MaterialPageRoute(builder: (contex)=>SignupScreen()));
                    }, child: Text('Sign Up',style: TextStyle(color: Colors.red,fontSize: 15,fontWeight: FontWeight.bold),))
                  ],
                )
              )
            ],
          ),
        ),
      ),
    );
  }
}
