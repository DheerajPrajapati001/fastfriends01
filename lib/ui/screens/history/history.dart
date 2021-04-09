import 'package:fastfriends/ui/custom_widgets/custom_app_bar.dart';
import 'package:fastfriends/ui/custom_widgets/participates.dart';
import 'package:fastfriends/ui/custom_widgets/small_blue_cont.dart';
import 'package:fastfriends/utils/my_colors.dart';
import 'package:fastfriends/utils/my_images.dart';
import 'package:fastfriends/utils/my_strings.dart';
import 'package:flutter/material.dart';

class History extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          Container(
            height: 110,
            width: MediaQuery.of(context).size.width,
            color: MyColors.blackCont,
            child: Padding(
              padding: const EdgeInsets.all(8.0),
              child: SafeArea(
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Icon(
                      Icons.arrow_back_ios,
                      size: MediaQuery.of(context).size.width*.04,
                      color: Colors.white,
                    ),
                    SizedBox(
                      height: 10,
                    ),
                    Row(
                      children: [
                        Text(
                          MyStrings.yourHangouts,
                          style: TextStyle(
                              color: Colors.white,
                              fontSize: MediaQuery.of(context).size.width*.08
                          ),
                        ),
                        Spacer(),
                        Container(
                          height: MediaQuery.of(context).size.height*.04,
                          width: MediaQuery.of(context).size.width*.2,
                          decoration: BoxDecoration(
                            color: Color(0xff717171),
                            borderRadius: BorderRadius.circular(50)
                          ),
                          child: Material(
                            color: Colors.transparent,
                            child: InkWell(
                              onTap: (){},
                              borderRadius: BorderRadius.circular(50),
                              splashColor: Colors.black,
                              radius: 100,
                              child: Center(
                                child: Text(MyStrings.past,style: TextStyle(color: Colors.white,fontSize: MediaQuery.of(context).size.width*.05),),
                              ),
                            ),
                          ),
                        ),
                      ],
                    ),
                  ],
                ),
              ),
            ),
          ),
          Container(
            height: MediaQuery.of(context).size.height*.08,
            width: MediaQuery.of(context).size.width,
            color: MyColors.liteGrey.withOpacity(0.5),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.center,
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 10),
                  child: Row(
                    children: [
                      Column(
                        children: [
                          Text('2020-10-25 6:45',style: TextStyle(fontSize: MediaQuery.of(context).size.width*.05),),
                          Text('Actives        ',style: TextStyle(fontSize: MediaQuery.of(context).size.width*.05),)
                        ],
                      ),
                      SizedBox(
                        width: MediaQuery.of(context).size.width*.2,
                      ),
                      Text('+4 Karma',style: TextStyle(color: Color(0xff16F60E),fontSize: MediaQuery.of(context).size.width*.04,fontFamily: 'Segu' ),),
                      Spacer(),
                      Image.asset(MyImages.dropDownIcon,height: MediaQuery.of(context).size.height*.025,)
                    ],
                  ),
                ),
              ],
            ),
          ),
          Container(
            height: 240,
            width: MediaQuery.of(context).size.width,
            decoration: BoxDecoration(
              color: MyColors.liteGrey,
              border: Border.all(color: MyColors.contBorderClr)
            ),
            child: Padding(
              padding: const EdgeInsets.all(10),
              child: Column(
                children: [
                  Row(
                    children: [
                      Column(
                        children: [
                          Container(
                            height: MediaQuery.of(context).size.height*.12,
                            width: MediaQuery.of(context).size.width*.32,
                            decoration: BoxDecoration(
                                boxShadow: [
                                  BoxShadow(
                                      color: Colors.black.withOpacity(0.1),
                                      offset: Offset(5,5),
                                      blurRadius: 10,
                                      spreadRadius: 5
                                  )
                                ],
                                borderRadius: BorderRadius.circular(15),
                                image: DecorationImage(
                                    fit: BoxFit.fill,
                                    image: AssetImage(MyImages.foodImage,)
                                ),
                                border: Border.all(color: MyColors.blueClr,width: 2)
                            ),
                          ),
                        ],
                      ),
                      SizedBox(
                        width: 10,
                      ),
                      Column(
                        mainAxisAlignment: MainAxisAlignment.start,
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            "Hudsons Pub 6:00-11:00PM",
                            style: TextStyle(
                              fontFamily: 'Sego',
                                fontSize: MediaQuery.of(context).size.width * .05,
                                fontWeight: FontWeight.bold),
                          ),
                          Text("shawnessy 1231 t2x",style: TextStyle(
                            color: MyColors.greyFont,
                            fontFamily: 'Sego',
                            fontSize: MediaQuery.of(context).size.width * .035,
                          ),),
                          Padding(
                            padding: const EdgeInsets.symmetric(vertical: 5),
                            child: Container(
                              width: MediaQuery.of(context).size.width*.5,
                              height: 2,
                              color: MyColors.greyCont,
                            ),
                          ),
                          Text("Participates",style: TextStyle(
                            color: MyColors.greyFont,
                            fontFamily: 'Sego',
                            fontSize: MediaQuery.of(context).size.width * .035,
                          ),),
                          SizedBox(
                            height: 5,
                          ),
                          Row(
                            children: [
                              Participates(
                                img: MyImages.roundGirl,
                              ),
                              Participates(
                                img: MyImages.roundGirl2,
                              ),
                              Participates(
                                img: MyImages.roundGirl,
                              ),
                              Participates(
                                img: MyImages.roundGirl2,
                              ),
                            ],
                          ),
                        ],
                      )
                    ],
                    crossAxisAlignment: CrossAxisAlignment.start,
                    mainAxisAlignment: MainAxisAlignment.start,
                  ),
                  SizedBox(
                    height: 20,
                  ),
                  Row(
                    children: [
                      Text("Hey we are going to eat and\ndrink at Hudsons tonight.",
                        style: TextStyle(
                            fontFamily: 'Sego',
                            fontSize: MediaQuery.of(context).size.width*.04
                        ),
                      )
                    ],
                  ),
                  SizedBox(
                    height: 20,
                  ),
                  Row(
                    children: [
                      Spacer(),
                      SmallBlueCont(
                        text: MyStrings.rate,
                      ),
                      SizedBox(
                        width: 20,
                      ),
                      SmallBlueCont(
                        text: MyStrings.chatRoom,
                      ),
                    ],
                  ),
                ],
              ),
            ),
          )
        ],
      ),
    );
  }
}
