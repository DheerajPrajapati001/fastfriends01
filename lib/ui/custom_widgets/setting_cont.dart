import 'package:fastfriends/utils/my_colors.dart';
import 'package:flutter/material.dart';

// ignore: must_be_immutable
class SettingCont extends StatelessWidget {

   String mainText;
   var widget;

 SettingCont({this.mainText,this.widget});

  @override
  Widget build(BuildContext context) {
    return Container(
      height: MediaQuery.of(context).size.height*.06,
      width: MediaQuery.of(context).size.width,
      decoration: BoxDecoration(
        boxShadow: [
          BoxShadow(
            color: Colors.grey.withOpacity(.20),
            offset: Offset(5,5),
            spreadRadius: 5,
            blurRadius: 5
          )
        ],
        color: Colors.white,
        border: Border.all(color: MyColors.contBorderClr,width: .5)
      ),
      child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 10),
        child: Row(
          children: [
            Text(mainText,style: TextStyle(fontSize: MediaQuery.of(context).size.width*.045),),
            Spacer(),
            Row(
              children: [
                widget
              ],
            )
          ],
        ),
      ),
    );
  }
}
