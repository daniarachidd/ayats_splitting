import 'package:ayats_splitting/popUpCard.dart';
import 'package:flutter/material.dart';
import 'quranText.dart';

class AyatSplitting extends StatefulWidget {
  AyatSplitting({Key? key}) : super(key: key);
  //array list


  late String ayat;

  //static var string = quranText[0]['content'].toString();
 // final word = string.split(' ');

  @override
  State<AyatSplitting> createState() => _AyatSplittingState();
}


class _AyatSplittingState extends State<AyatSplitting> {
  late var splitted;
  int surah_number = 1;
  int ayat_index = 0;
  List<String> surah_ayats = [];
  late String current_ayat;

  void getAyat() {
    for (int i =0; i < quranText.length; i++) {
      if (quranText[i]['surah_number'] == surah_number) {
        surah_ayats.add(quranText[i]['content'].toString());
      }
    }

  }

  @override
  void initState() {
    getAyat();
    splitted = surah_ayats[ayat_index].split(' ');
    super.initState();
  }



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
            onPressed: () {
              setState(() {
                if (ayat_index > 0) {
                  ayat_index = ayat_index - 1;

                }
                else
                  {
                    ayat_index = surah_ayats.length - 1;
                  }
                splitted = surah_ayats[ayat_index].split(' ');

              });
            },
          ),
          IconButton(
            icon: Icon(
              Icons.arrow_right,
              size: 50,
              color: Colors.deepPurple[500],
            ),
            onPressed: () {
              setState(() {
                if (ayat_index < surah_ayats.length - 1) {
                  ayat_index = ayat_index + 1;
                } else {
                  ayat_index = 0;
                }
                splitted = surah_ayats[ayat_index].split(' ');
              });
            },
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
                surah_ayats[ayat_index],
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
