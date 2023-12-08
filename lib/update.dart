import 'package:flutter/material.dart';
import 'package:flutterapp/next.dart';

class updateScreen extends StatefulWidget {
  const updateScreen({super.key});

  @override
  State<updateScreen> createState() => _updateScreenState();
}

class _updateScreenState extends State<updateScreen> {
  List OptionList = [
    "Happy",
    "Sad",
    "Calm",
    "Angry",
    "Stressed",
    "Anixous",
    "Excited",
    "Annoyed"
  ];

  String selected = "";

  List SelectedList = [];

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
                  child: Icon(
                    Icons.arrow_back_ios_new,
                    size: 30,
                    color: Colors.black,
                  ))),
          SizedBox(
            height: 20,
          ),
          Align(
            alignment: Alignment.center,
            child: Container(
              width: 230,
              height: 330,
              alignment: Alignment.bottomCenter,
              decoration: BoxDecoration(
                  image: DecorationImage(
                image: AssetImage("assets/Ellipse.png"),
                fit: BoxFit.fitWidth,
              )),
              child: Column(
                children: [
                  Container(
                      width: 300,
                      height: 300,
                      alignment: Alignment.topCenter,
                      child: Image.asset(
                        "assets/Group.png",
                      )),
                ],
              ),
            ),
          ),
          Container(
            width: 500,
            margin: EdgeInsets.only(left: 20),
            child: Image.asset("assets/text3.png"),
          ),
          SizedBox(
            height: 2,
          ),
          Padding(
            padding: EdgeInsets.all(8),
            child: Wrap(
              runSpacing: 15,
              spacing: 10,
              alignment: WrapAlignment.center,
              crossAxisAlignment: WrapCrossAlignment.center,
              runAlignment: WrapAlignment.center,
              children: [
                // loop to execute option
                for (var data in OptionList)
                  InkWell(
                    onTap: () {
                      setState(() {
                        if (SelectedList.indexOf(data) > -1)
                          SelectedList.remove(data);
                        else {
                          SelectedList.add(data);
                        }

                        // assign value selected for finding which is selected
                      });
                    },
                    child: Container(
                      padding:
                          EdgeInsets.symmetric(horizontal: 29, vertical: 5.5),
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(40),
                          color: (SelectedList.indexOf(data) > -1)
                              ? Color(0xff009789)
                              : Color(0xffF2F2F2)),
                      child: Text(data),
                    ),
                  )
              ],
            ),
          ),
          Row(
            children: [
              Expanded(child: Container()),
              Align(
                  alignment: Alignment.topRight,
                  child: Image.asset("assets/skip.png")),
              SizedBox(
                width: 20,
              ),
            ],
          ),
          Container(
              margin: EdgeInsets.only(left: 13),
              child: Image.asset("assets/img.png")),
          SizedBox(
            height: 5,
          ),
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
          SizedBox(
            height: 10,
          ),
          InkWell(
            onTap: () {
              Navigator.of(context)
                  .push(MaterialPageRoute(builder: (context) => nextScreen()));
            },
            child: Container(
                alignment: Alignment.center,
                child: Image.asset("assets/next.png")),
          ),
        ],
      ),
    );
  }
}
