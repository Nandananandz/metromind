import 'package:flutter/material.dart';
import 'package:flutterapp/activity.dart';

class getstart extends StatefulWidget {
  const getstart({super.key});

  @override
  State<getstart> createState() => _getstartState();
}

class _getstartState extends State<getstart> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: 
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Container(
                margin: EdgeInsets.fromLTRB(10,30,0,0),
                child: Image.asset("assets/image1.png")),
                SizedBox(height: 45,),
                 Container(
              height:390,
              width: 1000,
              alignment: Alignment.bottomRight,
              child: Image.asset("assets/image2.png"),
            ),
           Column(
             children: [
               Align(
                alignment: Alignment.topLeft,
                
                child: Padding(padding: EdgeInsets.only(left: 18),
                  child: Image.asset("assets/text.png"))),
                  
           Image.asset("assets/text1.png"),
            SizedBox(height: 35,),
           InkWell(
            onTap: () {
              Navigator.of(context).push(MaterialPageRoute(builder: (context) => activityScreen()));
            },
            child: Image.asset("assets/frame1.png")),
          
             ],
           ),
             
            ],
          ),

           
           
        
      
       
    );
  }
}