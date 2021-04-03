import 'package:fastfriends/ui/custom_widgets/blue_button.dart';
import 'package:fastfriends/utils/my_colors.dart';
import 'package:fastfriends/utils/my_images.dart';
import 'package:fastfriends/utils/my_strings.dart';
import 'package:flutter/material.dart';

class OtherPreview extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: MyColors.mainBgClr,
      body: SafeArea(
        child: SingleChildScrollView(
          child: Padding(
            padding: const EdgeInsets.symmetric(vertical: 10,horizontal: 10),
            child: Column(
              children: [
                Row(
                  children: [
                    Icon(Icons.arrow_back_ios,color: MyColors.greyFont,),
                  ],
                ),
                Image.asset(MyImages.squareGirl,height: MediaQuery.of(context).size.height*.4,),
                Text('Lisa, 21',style: TextStyle(fontSize: MediaQuery.of(context).size.width*.1),),
                SizedBox(
                  height: 10,
                ),
                Image.asset(MyImages.diamond,height: MediaQuery.of(context).size.width*.08,),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    Column(
                      children: [
                        Text('Karma',style: TextStyle(fontSize: MediaQuery.of(context).size.width*.06),),
                        Text('2000',style: TextStyle(fontSize: MediaQuery.of(context).size.width*.05,color: MyColors.blueClr),),
                      ],
                    ),
                    Column(
                      children: [
                        Text('Level',style: TextStyle(fontSize: MediaQuery.of(context).size.width*.06),),
                        Text('6',style: TextStyle(fontSize: MediaQuery.of(context).size.width*.05,color: MyColors.blueClr),),
                      ],
                    ),
                  ],
                ),
                SizedBox(
                  height: 30,
                ),
                Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 50),
                  child: Text(MyStrings.iAmAstrologist,textAlign: TextAlign.center,style: TextStyle(fontSize: MediaQuery.of(context).size.width*.04),),
                ),
                SizedBox(
                  height: MediaQuery.of(context).size.height*.1,
                ),
                Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 100),
                  child: Container(
                      height: MediaQuery.of(context).size.height*.075,
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
                          color: MyColors.redClr
                      ),
                      child: Padding(
                        padding: const EdgeInsets.only(bottom: 5),
                        child: Center(
                          child:  Stack(
                            children: <Widget>[
// Stroked text as border.
                              Text(
                                MyStrings.report,
                                style: TextStyle(
                                  fontSize: MediaQuery.of(context).size.width*.07,
                                  foreground: Paint()
                                    ..style = PaintingStyle.stroke
                                    ..strokeWidth = 3
                                    ..color = MyColors.fontBorderClr,
                                ),
                              ),

                              Text(
                                MyStrings.report,
                                style: TextStyle(
                                  fontSize: MediaQuery.of(context).size.width*.07,
                                  color: Colors.white,
                                ),
                              ),
                            ],
                          ),
                        ),
                      )),
                )
              ],
            ),
          ),
        ),
      ),
    );
  }
}
