import 'package:flutter/material.dart';

class finalScreen extends StatefulWidget {
  const finalScreen({super.key});

  @override
  State<finalScreen> createState() => _finalScreenState();
}

class _finalScreenState extends State<finalScreen> {
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
                    image: DecorationImage(image: AssetImage("assets/fellipse.png"),
                    fit: BoxFit.fitWidth,)
                    ),
                    child: Column(
                      children: [
                        Container(
                          width: 350,
                          height: 250,
                          alignment: Alignment.center,
                          child: Image.asset("assets/fgroup.png",)),  ],
                    ),
                  ),
                  
             ),
             Container(
                            width: 500,
              margin: EdgeInsets.only(left: 20),
              child: Image.asset("assets/ftext.png"),
             ),
             SizedBox(height: 2,),
            Padding(
              padding: EdgeInsets.all(8),
              child: Wrap(
             
                children: [
                  
                  
                 
                       
                  Container(
                     margin: EdgeInsets.fromLTRB(8,15,0,0),
                    child: Image.asset("assets/fframe1.png")),
                
                  Container(
                     margin: EdgeInsets.fromLTRB(8,15,0,0)
                     ,child: Image.asset("assets/fframe2.png")),
                 
                  Container( margin: EdgeInsets.fromLTRB(8,15,0,0),
                    child: Image.asset("assets/fframe3.png")),
                   
                  Container( margin: EdgeInsets.fromLTRB(8,15,0,0),
                    child: Image.asset("assets/fframe4.png")),
                  
            
                  Container(margin: EdgeInsets.fromLTRB(8,15,0,0),
                    child: Image.asset("assets/fframe5.png")),
                 Container(
                     margin: EdgeInsets.fromLTRB(8,15,0,0)
                     ,child: Image.asset("assets/fframe6.png")),
                      Container(
                     margin: EdgeInsets.fromLTRB(8,15,0,0)
                     ,child: Image.asset("assets/fframe7.png")),
                      Container(
                     margin: EdgeInsets.fromLTRB(8,15,0,0)
                     ,child: Image.asset("assets/fframe8.png")),
                    
                  
                    
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
              child: Image.asset("assets/finalstep.png")),
              SizedBox(height: 5,),
            Container(
              width: 400,
              height: 15,
              margin: EdgeInsets.only(left: 15),
              child: Stack(
                children: [
                    Image.asset("assets/Line1s.png"),
              Image.asset("assets/flines2.png"),
                ],
              ),
            ),
           SizedBox(height: 10,),
            InkWell(
              onTap: () {
                Navigator.of(context).push(MaterialPageRoute(builder: (context) => finalScreen()));
              },
              
              child: Container(alignment: Alignment.center,
                child: Image.asset("assets/next.png")),
            ),
        ],
      ),
    );
  }
}