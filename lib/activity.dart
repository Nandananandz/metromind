import 'package:flutter/material.dart';
import 'package:flutterapp/update.dart';

class activityScreen extends StatefulWidget {
  const activityScreen({super.key});

  @override
  State<activityScreen> createState() => _activityScreenState();
}

class _activityScreenState extends State<activityScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          
          Container(
            margin: EdgeInsets.fromLTRB(5, 30, 0, 0),
            child: InkWell(
              onTap: () {
                Navigator.of(context).pop();
              },
              child: Icon(Icons.arrow_back_ios_new,size: 30,color: Colors.black,))),
            SizedBox(height: 30,),
            Column(
              children: [
                Align(
                  alignment: Alignment.topLeft,

                  child: Padding(padding: EdgeInsets.only(left: 13),
                    child: Image.asset("assets/text2.png"))),
                    SizedBox(height: 30,),
          
            
            
                 Container(width: 320,
                 height: 100,
                decoration: BoxDecoration(
                  image: DecorationImage(image: AssetImage("assets/rect1.png"),
                  fit: BoxFit.fill )
                
                ),
                
                 child: Row(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    SizedBox(width: 34,),
                    Image.asset("assets/Anxiety.png"),
                    Expanded(child: Container()),
                    Image.asset("assets/g10.png")
                  ],
                ),
                ),
                   SizedBox(height: 12,),
                   
                 Container(width: 320,
                 height: 100,
                decoration: BoxDecoration(
                  image: DecorationImage(image: AssetImage("assets/rect2.png"),
                  
                  fit: BoxFit.fill )
                
                ),
                 child: Row(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    SizedBox(width: 34,),
                    Image.asset("assets/Sleep.png"),
                    Expanded(child: Container()),
                    Image.asset("assets/g134.png")
                  ],
                ),
                ),
                
                   SizedBox(height: 12,),
                   
                 Container(width: 320,
                 height: 100,
                decoration: BoxDecoration(
                  image: DecorationImage(image: AssetImage("assets/rect3.png"),
                  fit: BoxFit.fill, )
                
                ),
                 child: Row(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    SizedBox(width: 34,),
                    Image.asset("assets/Stress.png"),
                   
                    Image.asset("assets/stresspic.png")
                  ],
                ),
                ),
                
                   SizedBox(height: 12,),
                    Container(width: 320,
                 height: 100, decoration: BoxDecoration(
                  image: DecorationImage(image: AssetImage("assets/rect4.png"),
                  fit: BoxFit.fill, )
                
                ),
                 child: Row(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    SizedBox(width: 34,),
                    Image.asset("assets/couple.png"),
                    Expanded(child: Container()),
                    Image.asset("assets/cpic.png")
                  ],
                ),
                ),
                SizedBox(height: 24,),
                   InkWell(
                    onTap: () {
                      Navigator.of(context).push(MaterialPageRoute(builder: (context) => updateScreen()));
                    },
                     child: Container(width: 320,
                                    height: 55,
                                   decoration: BoxDecoration(
                                     image: DecorationImage(image: AssetImage("assets/frame2.png"),
                                     fit: BoxFit.fill )
                                   
                                   ),
                                  
                                     ),
                   )
            
          
          
              ],
            ),
 

        ],
      ),
    );
  }
}