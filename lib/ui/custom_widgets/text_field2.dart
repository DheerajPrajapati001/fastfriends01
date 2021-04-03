import 'package:fastfriends/utils/my_colors.dart';
import 'package:flutter/material.dart';

class TextField2 extends StatelessWidget {

  final String text;

  const TextField2({Key key, this.text}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 60),
      child: Container(
          height: MediaQuery.of(context).size.height*.075,
          decoration: BoxDecoration(
            border: Border.all(
              color: MyColors.contBorderClr
            ),
              borderRadius: BorderRadius.circular(50),
              color: MyColors.liteGrey
          ),
          child: Padding(
            padding: const EdgeInsets.symmetric(horizontal: 30),
            child: Center(
              child: TextField(
                decoration: InputDecoration(
                    hintText: text,
                    hintStyle: TextStyle(fontSize: MediaQuery.of(context).size.width*.05,color: MyColors.greyFont),
                    border: InputBorder.none
                ),
              ),
            ),
          )),
    );
  }
}
