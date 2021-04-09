import 'package:fastfriends/ui/custom_widgets/events_friends.dart';
import 'package:fastfriends/ui/custom_widgets/small_blue_cont.dart';
import 'package:fastfriends/utils/my_colors.dart';
import 'package:fastfriends/utils/my_images.dart';
import 'package:fastfriends/utils/my_strings.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class MyEvents extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: MyColors.mainBgClr,
      body: Column(
        children: [
          EventsFriends(),
          SizedBox(
            height: MediaQuery.of(context).size.height * .05,
          ),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 25),
            child: Container(
              height: 220,
              width: MediaQuery.of(context).size.width,
              decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(20),
                  border:
                      Border.all(color: MyColors.contBorderClr, width: 1.5)),
              child: Padding(
                padding: const EdgeInsets.all(10),
                child: Column(
                  children: [
                    Row(
                      children: [
                        Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text(
                              "Hudsons Pub 6:00PM",
                              style: TextStyle(
                                fontWeight: FontWeight.bold,
                                  fontSize: MediaQuery.of(context).size.width * .05,fontFamily: 'Segu'),
                            ),
                            Text("shawnessy 1231 t2x",style: TextStyle(
                              color: MyColors.greyFont,
                              fontSize: MediaQuery.of(context).size.width * .04,
                                fontFamily: 'Segu'
                            ),),
                            Row(
                              children: [
                                Text(
                                  "Mona",
                                  style: TextStyle(
                                      color: Colors.blue,
                                      fontFamily: 'Segu',
                                      fontSize:
                                      MediaQuery.of(context).size.width *
                                          .05),
                                ),
                                Padding(
                                  padding: const EdgeInsets.only(top: 7),
                                  child: Image.asset(
                                    MyImages.diamond,
                                    width: MediaQuery.of(context).size.width * .05,
                                  ),
                                )
                              ],
                            ),
                            SizedBox(
                              height: 10,
                            ),
                            Container(
                              width: MediaQuery.of(context).size.width*.4,
                              height: 2,
                              color: MyColors.greyCont,
                            ),
                            SizedBox(
                              height: 10,
                            ),
                            Text("Hey we are going to eat and\ndrink at Hudsons tonight.",
                            style: TextStyle(
                              fontWeight: FontWeight.w500 ,
                              fontSize: MediaQuery.of(context).size.width*.04,
                                fontFamily: 'Segu'
                            ),
                            )
                          ],
                        ),
                        Spacer(),
                        Column(
                          children: [
                            Image.asset(MyImages.group1,width: MediaQuery.of(context).size.height*.15,),
                            Container(
                              height: MediaQuery.of(context).size.height*.1,
                              width: MediaQuery.of(context).size.width*.28,
                              decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(15),
                                image: DecorationImage(
                                  fit: BoxFit.fill,
                                  image: AssetImage(MyImages.foodImage,)
                                ),
                                border: Border.all(color: MyColors.blueClr,width: 3)
                              ),
                            )
                          ],
                        )
                      ],
                    ),
                    Spacer(),
                    Row(
                      children: [
                        Spacer(),
                        SmallBlueCont(
                          text: MyStrings.finishHangout,
                        ),
                        SizedBox(
                          width: 20,
                        ),
                        SmallBlueCont(
                          text: MyStrings.chatRoom,
                        ),
                      ],
                    )
                  ],
                ),
              ),
            ),
          )
        ],
      ),
    );
  }
}
