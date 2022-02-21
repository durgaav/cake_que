import 'package:cake_que/cart_activity.dart';
import 'package:cake_que/checkout_activity.dart';
import 'package:cake_que/home_activity.dart';
import 'package:cake_que/welcome_activity.dart';
import 'package:flutter/material.dart';

class InitialScreen extends StatefulWidget {
  const InitialScreen({Key? key}) : super(key: key);

  @override
  _InitialScreenState createState() => _InitialScreenState();
}

class _InitialScreenState extends State<InitialScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Init screen"),
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [
            FlatButton(
                onPressed: (){
                  Navigator.push(context, MaterialPageRoute(builder: (context)=>HomeActivity()));
                },
                child: Text('Home Activity')
            ),
            FlatButton(
                onPressed: (){
                  Navigator.push(context, MaterialPageRoute(builder: (context)=>CartActivity()));
                },
                child: Text('Cart Activity')
            ),
            FlatButton(
                onPressed: (){
                  Navigator.push(context, MaterialPageRoute(builder: (context)=>WelcomeActivity()));
                },
                child: Text('Welcome Activity')
            ),
            FlatButton(
                onPressed: (){
                  Navigator.push(context, MaterialPageRoute(builder: (context)=>CheckoutActivity()));
                },
                child: Text('Checkout Activity')
            ),
          ],
        ),
      ),
    );
  }
}

