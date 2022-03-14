import 'package:ayats_splitting/popUpCard.dart';
import 'package:ayats_splitting/secondS.dart';
import 'package:flutter/material.dart';
import 'quranText.dart';

class slicing extends StatefulWidget {
  slicing({Key? key}) : super(key: key);

  static var string = quranText[0]['content'].toString();
  final word = string.split(' ');

  @override
  State<slicing> createState() => _slicingState();
}

class _slicingState extends State<slicing> {
  final splitted = slicing.string.split(' ');

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.white,
        title: Text(
          'Tilawah',
          style: TextStyle(
              fontSize: 20,
              fontWeight: FontWeight.bold,
              color: Colors.deepPurple[500]),
        ),
        leading: Icon(
          Icons.arrow_back_sharp,
          size: 25,
          color: Colors.grey,
        ),
        actions: [
          IconButton(
            icon: Icon(
              Icons.arrow_left,
              size: 50,
              color: Colors.deepPurple[500],
            ),
            onPressed: () {},
          ),
          IconButton(
            icon: Icon(
              Icons.arrow_right,
              size: 50,
              color: Colors.deepPurple[500],
            ),
            onPressed: () {},
          ),
          IconButton(
            icon: Icon(
              Icons.repeat,
              size: 30,
              color: Colors.deepPurple[500],
            ),
            onPressed: () {},
          ),
        ],
      ),
      body: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          children: [
        SizedBox(
          height: 10,
        ),
        Container(
            margin: EdgeInsets.fromLTRB(30, 5, 0, 0),
            alignment: Alignment.topLeft,
            child: Text(
              'Al-Fatihah',
              style:
                  TextStyle(letterSpacing: 1, fontSize: 20, fontFamily: 'idk'),
            )),
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
                slicing.string,
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
