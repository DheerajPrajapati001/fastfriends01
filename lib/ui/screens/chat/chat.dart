import 'package:fastfriends/ui/custom_widgets/chat_box.dart';
import 'package:fastfriends/ui/custom_widgets/custom_app_bar.dart';
import 'package:fastfriends/utils/my_colors.dart';
import 'package:fastfriends/utils/my_images.dart';
import 'package:fastfriends/utils/my_strings.dart';
import 'package:flutter/material.dart';

class Chat extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Column(
          children: [
            Container(
              height: MediaQuery.of(context).size.height * .1,
              width: MediaQuery.of(context).size.width,
              color: MyColors.blackCont,
              child: Column(
                children: [
                  Padding(
                    padding: const EdgeInsets.only(left: 10,top: 10),
                    child: Row(
                      children: [
                        Icon(
                          Icons.arrow_back_ios,
                          size: MediaQuery.of(context).size.width*.04,
                          color: Colors.white,
                        ),
                        SizedBox(
                          width: 10,
                        ),
                        Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text(
                              MyStrings.monaHangout,
                              style: TextStyle(
                                  color: Colors.white,
                                  fontSize: MediaQuery.of(context).size.width*.07
                              ),
                            ),
                            Text(MyStrings.hudsonPub,style: TextStyle(color: MyColors.liteGrey),)
                          ],
                        ),
                        Spacer(),
                        Column(
                          children: [
                            Padding(
                              padding: const EdgeInsets.symmetric(horizontal: 5,),
                              child: Row(
                                children: [
                                  Text('5 in chat',style: TextStyle(color: MyColors.liteGrey),),
                                  Icon(Icons.keyboard_arrow_up,color: MyColors.greyFont,)
                                ],
                              ),
                            )
                          ],
                        )
                      ],
                    ),
                  ),
                ],
              ),
            ),
            Container(
              width: MediaQuery.of(context).size.width,
              height: MediaQuery.of(context).size.height*.003,
              color: MyColors.greyFont,
            ),
            Container(
              width: MediaQuery.of(context).size.width,
              height: MediaQuery.of(context).size.height*.07,
              color: MyColors.liteGrey,
              child: Padding(
                padding: const EdgeInsets.symmetric(horizontal: 10),
                child: Row(
                  children: [
                    Image.asset(MyImages.activeLog,height: MediaQuery.of(context).size.height*.05,)
                  ],
                ),
              ),
            ),
            Container(
              width: MediaQuery.of(context).size.width,
              height: MediaQuery.of(context).size.height*.003,
              color: MyColors.greyFont,
            ),
            Spacer(),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Row(
                children: [
                  Spacer(),

                  SizedBox(
                    width:
                    10,
                  ),
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Padding(
                        padding: const EdgeInsets.only(bottom: 5),
                        child: Row(
                          children: [
                            SizedBox(
                              width: MediaQuery.of(context).size.width*.36,
                            ),
                            Text('Mona 2:45',style: TextStyle(color: MyColors.liteGreyFont,fontWeight: FontWeight.w500),),
                          ],
                        ),
                      ),
                      ChatBox(
                        msg: 'hi im mona. hudsons tonight at 7pm',
                      ),
                    ],
                  ),
                  SizedBox(
                    width:
                    10,
                  ),
                  Padding(
                    padding: const EdgeInsets.only(bottom: 30),
                    child: Column(
                      children: [
                        Image.asset(MyImages.crown,height: MediaQuery.of(context).size.height*.04,),
                        Image.asset(MyImages.roundGirl,height: MediaQuery.of(context).size.height*.04,),
                      ],
                    ),
                  ),
                ],
              ),
            ),
            SizedBox(
              height: 8,
            ),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Row(
                children: [
                  Image.asset(MyImages.roundGirl2,height: MediaQuery.of(context).size.height*.04,),
                  SizedBox(
                    width:
                    10,
                  ),
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Padding(
                        padding: const EdgeInsets.only(bottom: 5),
                        child: Text('Nid 2:46',style: TextStyle(color: MyColors.liteGreyFont,fontWeight: FontWeight.w500),),
                      ),
                      ChatBox(
                        msg: 'Yeah I\'m excited to meet you',
                      ),
                    ],
                  )
                ],
              ),
            ),
            SizedBox(
              height: 10,
            ),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 15,vertical: 20),
              child: Container(
                width: MediaQuery.of(context).size.width,
                height: MediaQuery.of(context).size.height*.05,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(50),
                  border: Border.all(
                    color: MyColors.contBorderClr,
                    width: 1.5
                  )
                ),
                child: Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 10),
                  child: Row(
                    children: [
                      Container(
                        decoration: BoxDecoration(
                            color: Colors.white,
                            shape: BoxShape.circle,
                            border: Border.all(color: Colors.black)
                        ),
                        child: Icon(Icons.add,size: MediaQuery.of(context).size.width*.06,),
                      ),
                    ],
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
