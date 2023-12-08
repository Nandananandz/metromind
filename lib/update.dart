import 'package:flutter/material.dart';
import 'package:flutterapp/next.dart';

class updateScreen extends StatefulWidget {
  const updateScreen({super.key});

  @override
  State<updateScreen> createState() => _updateScreenState();
}

class _updateScreenState extends State<updateScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        mainAxisAlignment: MainAxisAlignment.start,
        children: [
            Container(
            margin: EdgeInsets.fromLTRB(5, 30, 0, 0),
            child: InkWell(
              onTap: () {
                Navigator.of(context).pop();
              },
              child: Icon(Icons.arrow_back_ios_new,size: 30,color: Colors.black,))),
            SizedBox(height: 20,),
             Align(
              alignment: Alignment.center,
               child: Container(width: 230,
                   height: 330,
                   alignment: Alignment.bottomCenter,
                  decoration: BoxDecoration(
                    image: DecorationImage(image: AssetImage("assets/Ellipse.png"),
                    fit: BoxFit.fitWidth,)
                    ),
                    child: Column(
                      children: [
                        Container(
                          width: 300,
                          height: 300,
                          alignment: Alignment.topCenter,
                          child: Image.asset("assets/Group.png",)),  ],
                    ),
                  ),
                  
             ),
             Container(
                            width: 500,
              margin: EdgeInsets.only(left: 20),
              child: Image.asset("assets/text3.png"),
             ),
             SizedBox(height: 2,),
            Padding(
              padding: EdgeInsets.all(8),
              child: Wrap(
             
                children: [
                  
                  
                   Container(
                    margin: EdgeInsets.fromLTRB(8,15,0,0),
                    child: Image.asset("assets/Frame4.png")),
                       
                  Container(
                     margin: EdgeInsets.fromLTRB(8,15,0,0),
                    child: Image.asset("assets/Frame5.png")),
                
                  Container(
                     margin: EdgeInsets.fromLTRB(8,15,0,0)
                     ,child: Image.asset("assets/Frame6.png")),
                 
                  Container( margin: EdgeInsets.fromLTRB(8,15,0,0),
                    child: Image.asset("assets/Frame7.png")),
                   
                  Container( margin: EdgeInsets.fromLTRB(8,15,0,0),
                    child: Image.asset("assets/Frame8.png")),
                  
            
                  Container(margin: EdgeInsets.fromLTRB(8,15,0,0),
                    child: Image.asset("assets/Frame9.png")),
                
                    
                  Container(margin: EdgeInsets.fromLTRB(60,15,0,0),
                    child: Image.asset("assets/Frame10.png")),
                  SizedBox(width: 5,height: 3),
                  Container(margin: EdgeInsets.fromLTRB(8,15,0,0),
                    child: Image.asset("assets/Frame11.png")),
                    
                ], ),
            ),
            Row(
              children: [
                Expanded(child: Container()),
                Align(
                  alignment: Alignment.topRight,
                  child: Image.asset("assets/skip.png")
                  
                  ),
                  SizedBox(width: 20,),
              ],
            ),
            Container(
              margin: EdgeInsets.only(left: 13),
              child: Image.asset("assets/img.png")),
              SizedBox(height: 5,),
            Container(
              width: 400,
              height: 15,
              margin: EdgeInsets.only(left: 15),
              child: Stack(
                children: [
                    Image.asset("assets/Line1.png"),
              Image.asset("assets/Line2.png"),
                ],
              ),
            ),
           SizedBox(height: 10,),
            InkWell(
              onTap: () {
                Navigator.of(context).push(MaterialPageRoute(builder: (context) => nextScreen()));
              },
              
              child: Container(alignment: Alignment.center,
                child: Image.asset("assets/next.png")),
            ),
            
            ],),
    );
  }
}