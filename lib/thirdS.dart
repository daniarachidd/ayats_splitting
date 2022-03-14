import 'package:alfatia/popUpCard.dart';
import 'package:flutter/material.dart';
import 'quranText.dart';
import 'fourthS.dart';

class thirdS extends StatefulWidget {
  thirdS({Key? key}) : super(key: key);

  static var string = quranText[2]['content'].toString();
  final word = string.split(' ');

  @override
  State<thirdS> createState() => thirdSState();
}

class thirdSState extends State<thirdS> {
  final splitted = thirdS.string.split(' ');

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(children: [
        Padding(
            padding: const EdgeInsets.fromLTRB(20, 30, 20, 0),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Row(
                  children: [
                    Icon(
                      Icons.arrow_back_sharp,
                      size: 25,
                      color: Colors.grey,
                    ),
                    SizedBox(
                      width: 25,
                    ),
                    Text(
                      'Tilawah',
                      style: TextStyle(
                          fontSize: 20,
                          fontWeight: FontWeight.bold,
                          color: Colors.deepPurple[500]),
                    ),
                  ],
                ),
                Row(
                  children: [
                    GestureDetector(
                      onTap: () {
                        Navigator.pop(context);
                      },
                      child: Icon(
                        Icons.arrow_left,
                        size: 50,
                        color: Colors.deepPurple[500],
                      ),
                    ),
                    GestureDetector(
                      onTap: () {
                        Navigator.push(context,
                            MaterialPageRoute(builder: (context) => fourthS()));
                      },
                      child: Icon(
                        Icons.arrow_right,
                        size: 50,
                        color: Colors.deepPurple[500],
                      ),
                    ),
                    Icon(
                      Icons.repeat,
                      size: 30,
                      color: Colors.deepPurple[500],
                    )
                  ],
                ),
              ],
            )),
        Column(mainAxisAlignment: MainAxisAlignment.start, children: [
          Container(
              margin: EdgeInsets.fromLTRB(30, 5, 0, 0),
              alignment: Alignment.topLeft,
              child: Text(
                'Al-Fatihah',
                style: TextStyle(
                    letterSpacing: 1, fontSize: 20, fontFamily: 'idk'),
              ))
        ]),
        Padding(
            padding: const EdgeInsets.fromLTRB(20, 30, 20, 0),
            child: Container(
              alignment: Alignment.center,
              width: MediaQuery.of(context).size.width * .9,
              height: 80,
              decoration: BoxDecoration(
                  border: Border.all(color: Colors.black),
                  color: Colors.deepPurple[200],
                  borderRadius: BorderRadius.circular(15)),
              child: Text(
                thirdS.string,
                style: TextStyle(fontSize: 25),
              ),
            )),
        Padding(
          padding: const EdgeInsets.all(20.0),
          child: Directionality(
            textDirection: TextDirection.rtl,
            child: GridView.builder(
                shrinkWrap: true,
                itemCount: splitted.length,
                gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                    crossAxisCount: 2,
                    mainAxisSpacing: 30,
                    crossAxisSpacing: 30,
                    childAspectRatio: 2.5),
                itemBuilder: (context, index) {
                  return GestureDetector(
                    onTap: () {
                      popUpCard(context, splitted, index);
                    },
                    child: Container(
                      alignment: Alignment.center,
                      decoration: BoxDecoration(
                          border: Border.all(color: Colors.black),
                          color: Colors.deepPurple[200],
                          borderRadius: BorderRadius.circular(15)),
                      child: Text(
                        splitted[index].toString(),
                        textDirection: TextDirection.rtl,
                        style: TextStyle(fontSize: 20),
                      ),
                    ),
                  );
                }),
          ),
        )
      ]),
    );
  }
}
