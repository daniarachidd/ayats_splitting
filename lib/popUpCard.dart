import 'package:flutter/material.dart';

popUpCard(context, splitted, index) {
  var splitToLetter = splitted[index]
      .split(' ')
      .toString()
      .replaceAll('[', '')
      .replaceAll(']', '');
  var letter = Characters(splitToLetter);

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
              height: 230,
              width: MediaQuery.of(context).size.width * .8,
              child: SingleChildScrollView(
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    Text(
                      splitted[index],
                      style: TextStyle(fontSize: 25),
                    ),
                    Divider(
                      height: 2,
                      thickness: 1,
                      color: Colors.black,
                    ),
                    Directionality(
                      textDirection: TextDirection.rtl,
                      child: GridView.builder(
                          physics: ScrollPhysics(),
                          shrinkWrap: true,
                          itemCount: letter.length,
                          gridDelegate:
                              SliverGridDelegateWithFixedCrossAxisCount(
                                  crossAxisCount: 4,
                                  mainAxisSpacing: 10,
                                  crossAxisSpacing: 10,
                                  childAspectRatio: 1),
                          itemBuilder: (context, index) {
                            return Container(
                              margin: EdgeInsets.only(top: 10),
                              alignment: Alignment.center,
                              decoration: BoxDecoration(
                                  color: Colors.white,
                                  border: Border.all(color: Colors.black),
                                  borderRadius: BorderRadius.circular(10)),
                              child: Text(
                                letter.elementAt(index),
                                style: TextStyle(fontSize: 20),
                              ),
                            );
                          }),
                    )
                  ],
                ),
              ),
            ),
          ),
        );
      });
}
