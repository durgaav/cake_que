import 'package:cake_que/home_activity.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class WelcomeActivity extends StatefulWidget {
  const WelcomeActivity({Key? key}) : super(key: key);

  @override
  _WelcomeActivityState createState() => _WelcomeActivityState();
}

class _WelcomeActivityState extends State<WelcomeActivity> {

  PageController pg = new PageController(viewportFraction: 1, keepPage: true);
  double postition = 100.0;
  int currindex = 0;
  String poppins = 'Poppins';
  List quotes = [
    "Find cake you love",
    "Easy to customize",
    "Fast Delivery"
  ];

  List description = [
    "Lorem Ipsum is simply dummy text of the printing and "
        "typesetting industry. Lorem Ipsum has been the industry's "
        "standard dummy text ever since the 1500s, when an unknown printer "
        "took a galley of type and scrambled it to make a type specimen book.",
    "Lorem Ipsum is simply dummy text of the printing and "
        "typesetting industry. Lorem Ipsum has been the industry's "
        "standard dummy text ever since the 1500s, when an unknown printer "
        "took a galley of type and scrambled it to make a type specimen book.",
    "Lorem Ipsum is simply dummy text of the printing and "
        "typesetting industry. Lorem Ipsum has been the industry's "
        "standard dummy text ever since the 1500s, when an unknown printer "
        "took a galley of type and scrambled it to make a type specimen book.",
  ];

  @override
  Widget build(BuildContext context) {
    if(currindex == 0){
      setState(() {
        postition = 100.0;
      });
    }else if(currindex == 1){
      setState(() {
        postition = 80.0;
      });
    }else{
      setState(() {
        postition = 140.0;
      });
    }
    return Scaffold(
      body: Container(
        height: MediaQuery.of(context).size.height,
        width: MediaQuery.of(context).size.width,
        child: Stack(
          children: [
            /*Positioned(
              top: 120,
              left: postition,
              child: Container(
                decoration: BoxDecoration(
                    color: Colors.grey[300],
                    shape: BoxShape.circle
                ),
                height: 160,
                width: 160,
              ),
            ),*/
            PageView.builder(
              controller: pg,
              itemCount: 3,
                itemBuilder: (context,index){
                  currindex = index;
                  return Center(
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Container(
                          height: 200,
                          width: 150,
                          decoration: BoxDecoration(
                            image: DecorationImage(
                              fit: BoxFit.fill,
                              image: AssetImage('assets/images/cake.png'),
                            ),
                          ),
                        ),
                        SizedBox(
                          height: 40,
                        ),

                        Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            CircleAvatar(
                              radius: 5,
                              backgroundColor: index==0?Colors.pink:Colors.black54,
                            ),
                            SizedBox(
                              width: 8,
                            ),
                            CircleAvatar(
                              radius: 5,
                              backgroundColor: index==1?Colors.pink:Colors.black54,
                            ),
                            SizedBox(
                              width: 8,
                            ),
                            CircleAvatar(
                              radius: 5,
                              backgroundColor: index==2?Colors.pink:Colors.black54,
                            ),
                          ],
                        ),

                        SizedBox(
                          height: 40,
                        ),

                        Text("${quotes[index]}",
                          style: TextStyle(fontSize: 23 , color: Colors.deepPurple,fontWeight: FontWeight.w900,
                              fontFamily: poppins),
                        ),
                        SizedBox(
                          height: 30,
                        ),
                        Container(
                          margin: EdgeInsets.only(left: 25 , right: 25),
                          child: Text("${description[index]}",
                            style: TextStyle(fontSize: 16 , color: Colors.black45,
                                fontFamily: poppins),
                            textAlign: TextAlign.center,
                            maxLines: 3,
                          ),
                        ),

                        Container(
                          margin: EdgeInsets.only(top: 55 , left: 20 , right: 20),
                          child: index!=2?Row(
                            children: [
                              InkWell(
                                onTap: (){
                                  print('skipped welcome...');
                                  Navigator.of(context).pop();
                                  Navigator.push(context, MaterialPageRoute(builder: (context)=>HomeActivity()));
                                },
                                child: Text('Skip',
                                  style: TextStyle(fontSize: 20 , color: Colors.pink,fontWeight: FontWeight.w900,
                                      fontFamily: poppins),
                                ),
                              ),
                              Expanded(
                                  child: Container(
                                    width: double.infinity,
                                    alignment: Alignment.centerRight,
                                    child: RaisedButton(
                                      color: Colors.white,
                                      shape: RoundedRectangleBorder(
                                          borderRadius: BorderRadius.circular(15)),
                                      onPressed: (){
                                        if(index==0){
                                          pg.jumpToPage(1);
                                        }else{
                                          pg.jumpToPage(2);
                                        }
                                      },
                                      child: Container(
                                        alignment: Alignment.center,
                                        width: 80,
                                        child: Row(
                                          mainAxisAlignment: MainAxisAlignment.end,
                                          children: [
                                            Text('Next ',
                                              style: TextStyle(fontSize: 18 , color: Colors.deepPurple,
                                                  fontFamily: poppins),
                                            ),
                                            Icon(Icons.arrow_forward,color: Colors.deepPurple,),
                                          ],
                                        ),
                                      ),
                                    ),
                                  ),
                              )

                            ],
                          ):RaisedButton(
                          color: Colors.deepPurple,
                          shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(15)),
                          onPressed: (){
                            Navigator.of(context).pop();
                            Navigator.push(context, MaterialPageRoute(builder: (context)=>HomeActivity()));
                          },
                          child: Container(
                            alignment: Alignment.center,
                            width: 80,
                            child:Text('Done',
                              style: TextStyle(fontSize: 18 , color: Colors.white,
                                  fontFamily: poppins),
                            ),
                          ),
                        ),
                        ),
                      ],
                    ),
                  );
                }
            ),
          ],
        ),
      ),
    );
  }
}
