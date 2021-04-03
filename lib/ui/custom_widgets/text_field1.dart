import 'package:fastfriends/utils/my_colors.dart';
import 'package:flutter/material.dart';

class TextField1 extends StatelessWidget {

  final String text;

  const TextField1({Key key, this.text}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 30),
      child: Container(
        height: MediaQuery.of(context).size.height*.09,
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(50),
            color: MyColors.greyCont
          ),
          child: Padding(
            padding: const EdgeInsets.symmetric(horizontal: 30),
            child: Center(
              child: TextField(
                decoration: InputDecoration(
                  hintText: text,
                  hintStyle: TextStyle(fontWeight: FontWeight.bold,fontSize: MediaQuery.of(context).size.width*.05,fontFamily: 'TekoBold'),
                  border: InputBorder.none
                ),
              ),
            ),
          )),
    );
  }
}
