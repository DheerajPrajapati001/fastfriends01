import 'package:fastfriends/utils/my_colors.dart';
import 'package:fastfriends/utils/my_strings.dart';
import 'package:flutter/material.dart';

class EventsFriends extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      height: MediaQuery.of(context).size.height * .2,
      width: MediaQuery.of(context).size.width,
      color: MyColors.blackCont,
      child: Column(
        children: [
          Padding(
            padding: const EdgeInsets.only(left: 10,top: 10),
            child: SafeArea(
              child: Row(
                children: [
                  Material(
                    child: InkWell(
                      onTap: (){},
                      borderRadius: BorderRadius.circular(50),
                      splashColor: Colors.black,
                      radius: 100,
                      child: Icon(
                        Icons.arrow_back_ios,
                        color: Colors.white,
                      ),
                    ),
                    color: Colors.transparent,
                  ),
                ],
              ),
            ),
          ),
           SizedBox(
            height: MediaQuery.of(context).size.height*.015,
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              GradientContainer(
                text: MyStrings.events,
              ),
              GradientContainer(
                text: MyStrings.friends,
              )
            ],
          )
        ],
      ),
    );
  }
}


class GradientContainer extends StatelessWidget {

  final text;

  const GradientContainer({Key key, this.text}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      width: MediaQuery.of(context).size.width*.25,
      decoration: BoxDecoration(
        gradient: LinearGradient(
          colors: [Color(0xff78EDFF),Color(0xff6500FF)],
          begin: Alignment.topCenter,
          end: Alignment.bottomCenter
        )
      ),
        child: Material(
          color: Colors.transparent,
          child: InkWell(
            onTap: (){},
            splashColor: Colors.blue,
            radius: 100,
            child: Padding(
              padding: const EdgeInsets.all(8.0),
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
                          ..strokeWidth = 4
                          ..color = MyColors.contBorderClr,
                      ),
                    ),

                    Text(
                      text,
                      style: TextStyle(
                        fontSize: MediaQuery.of(context).size.width*.07,
                        fontWeight: FontWeight.w100,
                        color: Colors.white,
                      ),
                    ),
                  ],
                ),
              ),
            ),
          ),
        )
    );
  }
}

