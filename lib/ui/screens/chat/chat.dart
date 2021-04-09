import 'package:fastfriends/ui/custom_widgets/active_log.dart';
import 'package:fastfriends/ui/custom_widgets/chat_box.dart';
import 'package:fastfriends/utils/my_colors.dart';
import 'package:fastfriends/utils/my_images.dart';
import 'package:fastfriends/utils/my_strings.dart';
import 'package:flutter/material.dart';

class Chat extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          Container(
            height: 110,
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
                            splashColor: Colors.black,
                            radius: 500,
                            child: Icon(
                              Icons.arrow_back_ios,
                              size: MediaQuery.of(context).size.width*.04,
                              color: Colors.white,
                            ),
                          ),
                          color: Colors.transparent,
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
                            Text(MyStrings.hudsonPub,style: TextStyle(color: MyColors.liteGrey,fontFamily: 'Segu'),)
                          ],
                        ),
                        Spacer(),
                        Column(
                          children: [
                            Padding(
                              padding: const EdgeInsets.symmetric(horizontal: 5,),
                              child: Row(
                                children: [
                                  Text('5 in chat',style: TextStyle(color: MyColors.liteGrey,fontFamily: 'Segu'),),
                                  Icon(Icons.keyboard_arrow_up,color: MyColors.greyFont,)
                                ],
                              ),
                            )
                          ],
                        )
                      ],
                    ),
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
            height: MediaQuery.of(context).size.height*.09,
            color: MyColors.liteGrey,
            child: Padding(
              padding: const EdgeInsets.symmetric(horizontal: 10),
              child: Row(
                children: [
                  ActiveLog(
                    img: MyImages.roundGirl,
                  ),
                  ActiveLog(
                    img: MyImages.roundGirl2,
                  ),
                  ActiveLog(
                    img: MyImages.roundGirl,
                  ),
                  ActiveLog(
                    img: MyImages.roundGirl2,
                  ),
                ],
              ),
            ),
          ),
          Container(
            width: MediaQuery.of(context).size.width,
            height: MediaQuery.of(context).size.height*.003,
            color: MyColors.greyFont,
          ),
          Expanded(
            child: SingleChildScrollView(
              child: Column(
                children: [
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
                                  Text('Mona 2:45',style: TextStyle(color: MyColors.liteGreyFont,fontFamily: 'Segu'),),
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
                                  Text('Mona 2:45',style: TextStyle(color: MyColors.liteGreyFont,fontFamily: 'Segu'),),
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
                              child: Text('Nid 2:46',style: TextStyle(color: MyColors.liteGreyFont,fontFamily: 'Segu'),),
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
                                  Text('Mona 2:45',style: TextStyle(color: MyColors.liteGreyFont,fontFamily: 'Segu'),),
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
                              child: Text('Nid 2:46',style: TextStyle(color: MyColors.liteGreyFont,fontFamily: 'Segu'),),
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
                                  Text('Mona 2:45',style: TextStyle(color: MyColors.liteGreyFont,fontFamily: 'Segu'),),
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
                ],
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 10),
            child: Row(
              children: [
                // Container(
                //   decoration: BoxDecoration(
                //       color: Colors.white,
                //       shape: BoxShape.circle,
                //       border: Border.all(color: Colors.black)
                //   ),
                //   child: Icon(Icons.add,size: MediaQuery.of(context).size.width*.06,),
                // ),
                Expanded(
                  child: Padding(
                    padding: const EdgeInsets.only(bottom: 10),
                    child: TextField(
                      decoration: InputDecoration(
                        prefixIcon: Icon(Icons.add_circle_outline_outlined,color: Colors.black,size: MediaQuery.of(context).size.width*.08,),
                          border: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(50),
                            borderSide: BorderSide(color: MyColors.contBorderClr)
                          ),
                      ),
                    ),
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
