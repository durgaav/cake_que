import 'package:cake_que/home_activity.dart';
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
          ],
        ),
      ),
    );
  }
}

