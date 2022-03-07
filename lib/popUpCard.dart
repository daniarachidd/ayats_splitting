import 'package:ayats_splitting/text.dart';
import 'package:flutter/material.dart';
import 'package:characters/characters.dart';


import 'appButton.dart';

final String string = 'بِسْمِ ٱللَّهِ ٱلرَّحْمَـٰنِ ٱلرَّحِيمِ';
final s1 = string.characters.getRange(4, 8).toString();
final s2 = string.characters.getRange(0, 3).toString();
final s3 = string.characters.getRange(17, 23).toString();
final s4 = string.characters.getRange(9, 16).toString();

showDialog1(context) {
  return showDialog(
      context: context,
      builder: (context) {
        return Center(
          child: Material(
            type: MaterialType.transparency,
            child: Container(
              decoration: BoxDecoration(
                  border: Border.all(color: Colors.black),
                  borderRadius: BorderRadius.circular(15),
                  color: Colors.deepPurple[100]),
              padding: EdgeInsets.all(15),
              height: 220,
              width: MediaQuery.of(context).size.width * .8,
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  appText(
                    text: s1,
                    size: 20,
                  ),
                  Divider(
                    height: 10,
                    thickness: 1,
                    color: Colors.black,
                  ),
                  Wrap(
                    alignment: WrapAlignment.center,
                    children: [
                      letterButton(
                          letter: s1.characters.characterAt(3).toString()),
                      letterButton(
                          letter: s1.characters.characterAt(2).toString()),
                      letterButton(
                          letter: s1.characters.characterAt(1).toString()),
                      letterButton(
                          letter: s1.characters.characterAt(0).toString())
                    ],
                  )
                ],
              ),
            ),
          ),
        );
      });
}

showDialog2(context) {
  return showDialog(
      context: context,
      builder: (context) {
        return Center(
          child: Material(
            type: MaterialType.transparency,
            child: Container(
              decoration: BoxDecoration(
                  border: Border.all(color: Colors.black),
                  borderRadius: BorderRadius.circular(15),
                  color: Colors.deepPurple[100]),
              padding: EdgeInsets.all(15),
              height: 220,
              width: MediaQuery.of(context).size.width * .8,
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  appText(
                    text: s2,
                    size: 20,
                  ),
                  Divider(
                    height: 10,
                    thickness: 1,
                    color: Colors.black,
                  ),
                  Wrap(
                    alignment: WrapAlignment.center,
                    children: [
                      letterButton(
                          letter: s2.characters.characterAt(2).toString()),
                      letterButton(
                          letter: s2.characters.characterAt(1).toString()),
                      letterButton(
                          letter: s2.characters.characterAt(0).toString())
                    ],
                  )
                ],
              ),
            ),
          ),
        );
      });
}

showDialog3(context) {
  return showDialog(
      context: context,
      builder: (context) {
        return Center(
          child: Material(
            type: MaterialType.transparency,
            child: Container(
              decoration: BoxDecoration(
                  border: Border.all(color: Colors.black),
                  borderRadius: BorderRadius.circular(15),
                  color: Colors.deepPurple[100]),
              padding: EdgeInsets.all(15),
              height: 280,
              width: MediaQuery.of(context).size.width * .8,
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  appText(
                    text: s3,
                    size: 20,
                  ),
                  Divider(
                    height: 10,
                    thickness: 1,
                    color: Colors.black,
                  ),
                  Wrap(
                    alignment: WrapAlignment.center,
                    children: [
                      letterButton(
                          letter: s3.characters.characterAt(3).toString()),
                      letterButton(
                          letter: s3.characters.characterAt(2).toString()),
                      letterButton(
                          letter: s3.characters.characterAt(1).toString()),
                      letterButton(
                          letter: s3.characters.characterAt(0).toString()),
                      letterButton(
                          letter: s3.characters.characterAt(5).toString()),
                      letterButton(
                          letter: s3.characters.characterAt(4).toString())
                    ],
                  )
                ],
              ),
            ),
          ),
        );
      });
}

showDialog4(context) {
  return showDialog(
      context: context,
      builder: (context) {
        return Center(
          child: Material(
            type: MaterialType.transparency,
            child: Container(
              decoration: BoxDecoration(
                  border: Border.all(color: Colors.black),
                  borderRadius: BorderRadius.circular(15),
                  color: Colors.deepPurple[100]),
              padding: EdgeInsets.all(15),
              height: 220,
              width: MediaQuery.of(context).size.width * .8,
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  appText(
                    text: s4,
                    size: 20,
                  ),
                  Divider(
                    height: 10,
                    thickness: 1,
                    color: Colors.black,
                  ),
                  Wrap(
                    alignment: WrapAlignment.center,
                    children: [
                      letterButton(
                          letter: s4.characters.characterAt(3).toString()),
                      letterButton(
                          letter: s4.characters.characterAt(2).toString()),
                      letterButton(
                          letter: s4.characters.characterAt(1).toString()),
                      letterButton(
                          letter: s4.characters.characterAt(0).toString()),
                      letterButton(
                          letter: s4.characters.characterAt(6).toString()),
                      letterButton(
                          letter: s4.characters.characterAt(4).toString())
                    ],
                  )
                ],
              ),
            ),
          ),
        );
      });
}
