import 'package:ayats_splitting/popUpCard.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import 'text.dart';

class testChar extends StatefulWidget {
  const testChar({Key? key}) : super(key: key);
  final String string = 'بِسْمِ ٱللَّهِ ٱلرَّحْمَـٰنِ ٱلرَّحِيمِ';

  @override
  State<testChar> createState() => _testCharState();
}

class _testCharState extends State<testChar> {
  final splitted = string.split(' ');
  //print(splitted);




  @override
  Widget build(BuildContext context) {


    return Scaffold(
        body: Container(
      width: double.maxFinite,
      height: double.maxFinite,
      child: Column(children: [
        Padding(
          padding: const EdgeInsets.fromLTRB(20, 30, 20, 0),
          //this can be done using the appbar
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Column(
                children: [
                  Row(
                    children: [
                      Icon(
                        Icons.arrow_back_sharp,
                        size: 25,
                        color: Colors.grey,
                      ),
                      SizedBox(width: 25),
                      Text(
                        'Tilawah',
                        style: TextStyle(
                            fontFamily: 'idk',
                            fontSize: 20,
                            fontWeight: FontWeight.bold,
                            color: Colors.deepPurple[500]),
                      )
                    ],
                  )
                ],
              ),
              Column(
                children: [
                  Row(
                    children: [
                      Icon(
                        Icons.arrow_left,
                        size: 50,
                        color: Colors.deepPurple[500],
                      ),
                      Icon(
                        Icons.arrow_right,
                        size: 50,
                        color: Colors.deepPurple[500],
                      ),
                      Icon(
                        Icons.repeat,
                        size: 30,
                        color: Colors.deepPurple[500],
                      )
                    ],
                  )
                ],
              ),
            ],
          ),
        ),
        Column(
          mainAxisAlignment: MainAxisAlignment.start,
          children: [
            Container(
                margin: EdgeInsets.fromLTRB(30, 5, 0, 0),
                alignment: Alignment.topLeft,
                child: Text(
                  'Al-Fatihah',
                  style: TextStyle(
                      letterSpacing: 1, fontSize: 20, fontFamily: 'idk'),
                ))
          ],
        ),
        Container(
          alignment: Alignment.center,
          margin: EdgeInsets.only(top: 30),
          width: 356,
          height: 57,
          decoration: BoxDecoration(
              border: Border.all(color: Colors.black),
              color: Colors.deepPurple[100],
              borderRadius: BorderRadius.circular(15)),
          child: Text(string, style: TextStyle(fontSize: 25)),
        ),
        /**
        Padding(
          padding: const EdgeInsets.fromLTRB(20, 25, 20, 0),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              GestureDetector(
                onTap: () {
                  showDialog1(context);
                },
                child: Container(
                  alignment: Alignment.center,
                  width: 125.98,
                  height: 57,
                  decoration: BoxDecoration(
                      border: Border.all(color: Colors.black),
                      color: Colors.deepPurple[100],
                      borderRadius: BorderRadius.circular(15)),
                  child: appText(
                    text: string.characters.getRange(4, 8).toString(),
                    size: 20,
                  ),
                ),
              ),
              GestureDetector(
                onTap: () {
                  showDialog2(context);
                },
                child: Container(
                  alignment: Alignment.center,
                  width: 125.98,
                  height: 57,
                  decoration: BoxDecoration(
                      border: Border.all(color: Colors.black),
                      color: Colors.deepPurple[100],
                      borderRadius: BorderRadius.circular(15)),
                  child: appText(
                    text: string.characters.getRange(0, 3).toString(),
                    size: 20,
                  ),
                ),
              )
            ],
          ),
        ),
        Padding(
          padding: const EdgeInsets.all(20.0),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              GestureDetector(
                onTap: () {
                  showDialog3(context);
                },
                child: Container(
                  alignment: Alignment.center,
                  width: 125.98,
                  height: 57,
                  decoration: BoxDecoration(
                      border: Border.all(color: Colors.black),
                      color: Colors.deepPurple[100],
                      borderRadius: BorderRadius.circular(15)),
                  child: appText(
                    text: string.characters.getRange(17, 23).toString(),
                    size: 20,
                  ),
                ),
              ),
              GestureDetector(
                onTap: () {
                  showDialog4(context);
                },
                child: Container(
                  alignment: Alignment.center,
                  width: 125.98,
                  height: 57,
                  decoration: BoxDecoration(
                      border: Border.all(color: Colors.black),
                      color: Colors.deepPurple[100],
                      borderRadius: BorderRadius.circular(15)),
                  child: appText(
                    text: string.characters.getRange(9, 16).toString(),
                    size: 20,
                  ),
                ),
              )
            ],
          ),
        ),

            **/
        //

      Padding(
              padding: EdgeInsets.all(10),
              child: SizedBox(
                height: 100 + 100,

                child: GridView.builder(
                  scrollDirection: Axis.horizontal,
                    itemCount: splitted.length,
                    itemBuilder: (BuildContext context, int index) =>
                        buildWord(index),

                  gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                    childAspectRatio: 0.5,
                    crossAxisCount: 2,),

                ),
              ),
            ),

        
      ]),
    ));
  }

  buildWord(int index) {
    final list = splitted;
    return GestureDetector(
      onTap: () {
        showDialog1(context);
      },
      child: Padding(
        padding: const EdgeInsets.all(10),
        child: Column(
          verticalDirection: VerticalDirection.down,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Container(
              margin: EdgeInsets.only(top: 5),
              alignment: Alignment.center,
              width: 150,
              height: 50,
              decoration: BoxDecoration(
                  border: Border.all(color: Colors.black),
                  color: Colors.deepPurple[100],
                  borderRadius: BorderRadius.circular(15)),
              child: appText(
                text: list[index],
                size: 20,
              ),
            ),
          ],
        )

        /**
         *
         *  Container(
            alignment: Alignment.center,
            width: 100,
            height: 50,
            decoration: BoxDecoration(
            border: Border.all(color: Colors.black),
            color: Colors.deepPurple[100],
            borderRadius: BorderRadius.circular(15)),
            child: appText(
            text: list[index],
            size: 20,
            ),
            ),
         */
      ),
    );
  }
}
