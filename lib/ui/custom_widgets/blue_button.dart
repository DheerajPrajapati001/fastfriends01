import 'package:fastfriends/utils/my_colors.dart';
import 'package:flutter/material.dart';

class BlueButton extends StatelessWidget {

  final String text;

  const BlueButton({Key key, this.text}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 60),
      child: InkWell(
        onTap: (){},
        splashColor: Colors.black,
        radius: 5,
        highlightColor: Colors.yellow,
        child: Container(
            height: MediaQuery.of(context).size.height*.075,
            width: MediaQuery.of(context).size.width,
            decoration: BoxDecoration(
                border: Border.all(
                  width: 1.5,
                    color: MyColors.contBorderClr
                ),
                boxShadow: [
                  BoxShadow(
                      color: Colors.grey.withOpacity(0.3),
                      blurRadius: 5,
                      spreadRadius: 5,
                      offset: Offset(2,2)
                  )
                ],
                borderRadius: BorderRadius.circular(50),
                color: MyColors.blueClr
            ),
            child: Center(
              child:  Stack(
                children: <Widget>[
// Stroked text as border.
                  Text(
                    text,
                    style: TextStyle(
                      fontSize: MediaQuery.of(context).size.width*.07,
                      foreground: Paint()
                        ..style = PaintingStyle.stroke
                        ..strokeWidth = 2
                        ..color = MyColors.fontBorderClr,
                    ),
                  ),

                  Text(
                    text,
                    style: TextStyle(
                      fontSize: MediaQuery.of(context).size.width*.07,
                      color: Colors.white,
                    ),
                  ),
                ],
              ),
            )),
      ),
    );
  }
}
