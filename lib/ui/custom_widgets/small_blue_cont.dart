import 'package:fastfriends/utils/my_colors.dart';
import 'package:flutter/material.dart';

class SmallBlueCont extends StatelessWidget {
  final String text;

  const SmallBlueCont({Key key, this.text}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      height: MediaQuery.of(context).size.height * .035,
      width: MediaQuery.of(context).size.width * .22,
      decoration: BoxDecoration(
          border: Border.all(width: 1.5, color: MyColors.contBorderClr),
          boxShadow: [
            BoxShadow(
              color: Colors.grey.withOpacity(0.3),
              blurRadius: 5,
              spreadRadius: 5,
              offset: Offset(2, 2),
            ),
          ],
          borderRadius: BorderRadius.circular(50),
          color: MyColors.blueClr),
      child: Center(
        child: Stack(
          children: <Widget>[
            Text(
              text,
              style: TextStyle(
                fontSize: MediaQuery.of(context).size.width * .03,
                color: Colors.white,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
