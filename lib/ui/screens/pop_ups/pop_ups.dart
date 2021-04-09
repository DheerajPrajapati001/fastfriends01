import 'package:fastfriends/ui/custom_widgets/small_blue_cont.dart';
import 'package:fastfriends/utils/my_colors.dart';
import 'package:fastfriends/utils/my_images.dart';
import 'package:fastfriends/utils/my_strings.dart';
import 'package:flutter/material.dart';

class PopUps extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Container(
          height: 200,
          width: MediaQuery.of(context).size.width*.8,
          decoration: BoxDecoration(
              color: Color(0xffECECEC),
              borderRadius: BorderRadius.circular(30),
              border: Border.all(color: MyColors.contBorderClr)
          ),
          child: Stack(
            children: [
              Column(
                children: [
                  Container(
                    height: MediaQuery.of(context).size.height*.06,
                    width: MediaQuery.of(context).size.width*.8,
                    decoration: BoxDecoration(
                      color: Color(0xff515252),
                      borderRadius: BorderRadius.only(topLeft: Radius.circular(30),topRight: Radius.circular(30)),
                    ),
                  ),
                  SizedBox(
                    height: 40,
                  ),
                  Row(
                    children: [
                      Expanded(child: Divider(
                        color: Colors.black,
                        thickness: 1,
                      )),
                      SizedBox(
                        width: 50,
                      ),
                      Expanded(child: Divider(
                        color: Colors.black,
                        thickness: 1,
                      )),
                    ],
                  ),
                  SizedBox(
                    height: 10,
                  ),
                  Text(MyStrings.monaWouldLike,style: TextStyle(fontFamily: 'Segu'),),
                  SizedBox(
                    height: 20,
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: [
                      SmallBlueCont(
                        text: MyStrings.accept,
                      ),
                      SmallBlueCont(
                        text: MyStrings.decline,
                      )
                    ],
                  )
                ],
              ),
              Positioned(
                  right: MediaQuery.of(context).size.width*.8/2.8,
                  top: MediaQuery.of(context).size.height*.02,
                  child: Image.asset(MyImages.roundGirl,height: MediaQuery.of(context).size.height*.1,))
            ],
          ),
        ),
      ),
    );
  }
}
