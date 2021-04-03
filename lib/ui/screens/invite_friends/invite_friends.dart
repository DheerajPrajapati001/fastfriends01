import 'package:fastfriends/ui/custom_widgets/custom_app_bar.dart';
import 'package:fastfriends/utils/my_colors.dart';
import 'package:fastfriends/utils/my_images.dart';
import 'package:fastfriends/utils/my_strings.dart';
import 'package:flutter/material.dart';

class InviteFriends extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: MyColors.mainBgClr,
      body: SafeArea(
        child: Column(
          children: [
            CustomAppbar(
              title: MyStrings.invite,
              backIcon: true,
            ),
            SizedBox(
              height: MediaQuery.of(context).size.height * .02,
            ),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 10),
              child: Container(
                height: MediaQuery.of(context).size.height * .06,
                width: MediaQuery.of(context).size.width,
                decoration: BoxDecoration(
                    color: MyColors.liteGrey,
                    border: Border.all(color: MyColors.contBorderClr),
                    borderRadius: BorderRadius.circular(30)),
                child: Row(
                  children: [
                    SizedBox(
                      width: 10,
                    ),
                    Image.asset(
                      MyImages.search,
                      color: MyColors.contBorderClr,
                      height: MediaQuery.of(context).size.width * .06,
                    ),
                    SizedBox(
                      width: 10,
                    ),
                    Expanded(
                      child: TextField(
                        decoration: InputDecoration(border: InputBorder.none),
                      ),
                    )
                  ],
                ),
              ),
            ),
            SizedBox(
              height: MediaQuery.of(context).size.height * .02,
            ),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 10),
              child: Container(
                height: MediaQuery.of(context).size.height * .1,
                width: MediaQuery.of(context).size.width,
                decoration: BoxDecoration(
                    color: Color(0xffFFFEFE),
                    gradient: LinearGradient(
                        begin: Alignment.topCenter,
                        end: Alignment.bottomCenter,
                        colors: [Color(0xffFFFEFE),Color(0xffE5E5E5)]
                    ),
                    border: Border.all(color: MyColors.contBorderClr),
                    boxShadow: [
                      BoxShadow(
                          color: Colors.grey.withOpacity(0.2),
                          offset: Offset(5, 5),
                          spreadRadius: 5,
                          blurRadius: 5),
                    ],
                    borderRadius: BorderRadius.circular(15)),
                child: Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 10),
                  child: Row(
                    children: [
                      Stack(
                        children: [
                          Container(
                            height: MediaQuery.of(context).size.height*.07,
                            width: MediaQuery.of(context).size.height*.06,
                            decoration: BoxDecoration(
                                color: Colors.white,
                                shape: BoxShape.circle,
                                border:
                                    Border.all(color: MyColors.contBorderClr)),
                          ),
                          Positioned(
                            left: 30,
                            child: Container(
                              height: 20,
                              width: 20,
                              decoration: BoxDecoration(
                                  color: Colors.blue,
                                  border:
                                      Border.all(color: MyColors.contBorderClr),
                                  shape: BoxShape.circle),
                            ),
                          )
                        ],
                      ),
                      SizedBox(
                        width: 5,
                      ),
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Row(
                            children: [
                              Text(
                                "Jacky",
                                style: TextStyle(
                                    color: Colors.blue,
                                    fontSize:
                                        MediaQuery.of(context).size.width *
                                            .05),
                              ),
                              Image.asset(
                                MyImages.diamond,
                                width: MediaQuery.of(context).size.width * .05,
                              )
                            ],
                          ),
                          Text(
                            "Chilling",
                            style: TextStyle(
                                color: MyColors.greyFont,
                                fontSize:
                                    MediaQuery.of(context).size.width * .04),
                          ),
                          Row(
                            children: [
                              Text(
                                "Currently at Cineplex 3/5",
                                style: TextStyle(
                                    color: MyColors.liteGreyFont,
                                    fontSize:
                                        MediaQuery.of(context).size.width *
                                            .03),
                              ),
                              SizedBox(
                                width: MediaQuery.of(context).size.width * .23,
                              ),
                              Text(
                                "Currently in an event",
                                style: TextStyle(
                                    color: MyColors.liteGreyFont,
                                    fontSize:
                                        MediaQuery.of(context).size.width *
                                            .03),
                              ),
                            ],
                          ),
                        ],
                      )
                    ],
                  ),
                ),
              ),
            ),
            SizedBox(
              height: MediaQuery.of(context).size.height * .01,
            ),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 10),
              child: Container(
                height: MediaQuery.of(context).size.height * .1,
                width: MediaQuery.of(context).size.width,
                decoration: BoxDecoration(
                    gradient: LinearGradient(
                        begin: Alignment.topCenter,
                        end: Alignment.bottomCenter,
                        colors: [Color(0xffFFFEFE),Color(0xffE5E5E5)]
                    ),
                    color: Color(0xffFFFEFE),
                    border: Border.all(color: MyColors.contBorderClr),
                    boxShadow: [
                      BoxShadow(
                          color: Colors.grey.withOpacity(0.2),
                          offset: Offset(5, 5),
                          spreadRadius: 5,
                          blurRadius: 5),
                    ],
                    borderRadius: BorderRadius.circular(15)),
                child: Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 10),
                  child: Row(
                    children: [
                      Stack(
                        children: [
                          Container(
                            height: MediaQuery.of(context).size.height*.07,
                            width: MediaQuery.of(context).size.height*.06,
                            decoration: BoxDecoration(
                                color: Colors.white,
                                shape: BoxShape.circle,
                                border:
                                Border.all(color: MyColors.contBorderClr)),
                          ),
                          Positioned(
                            left: 30,
                            child: Container(
                              height: 20,
                              width: 20,
                              decoration: BoxDecoration(
                                  color: Color(0xff0CFF3C),
                                  border:
                                  Border.all(color: MyColors.contBorderClr),
                                  shape: BoxShape.circle),
                            ),
                          )
                        ],
                      ),
                      SizedBox(
                        width: 5,
                      ),
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Row(
                            children: [
                              Text(
                                "Lisa",
                                style: TextStyle(
                                    color: Colors.blue,
                                    fontSize:
                                    MediaQuery.of(context).size.width *
                                        .05),
                              ),
                              Image.asset(
                                MyImages.diamond,
                                width: MediaQuery.of(context).size.width * .05,
                              )
                            ],
                          ),
                          Text(
                            "Looking for fun",
                            style: TextStyle(
                                color: MyColors.greyFont,
                                fontSize:
                                MediaQuery.of(context).size.width * .04),
                          ),
                          Text(
                            "",
                            style: TextStyle(
                                color: Colors.blue,
                                fontSize:
                                MediaQuery.of(context).size.width *
                                    .05),
                          ),
                        ],
                      ),
                      Spacer(),
                      Column(
                        children: [
                          Padding(
                            padding: const EdgeInsets.all(8.0),
                            child: Text(
                              "Online",
                              style: TextStyle(
                                  color: MyColors.liteGreyFont,
                                  fontSize:
                                  MediaQuery.of(context).size.width *
                                      .03),
                            ),
                          ),
                          Spacer(),
                          Padding(
                            padding: const EdgeInsets.symmetric(vertical: 5),
                            child: Container(
                              width: 50,
                              height: 20,
                              decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(20),
                                color: MyColors.blueClr
                              ),
                              child: Center(
                                child: Text(MyStrings.invite,style: TextStyle(color: Colors.white),),
                              ),
                            ),
                          )
                        ],
                      )
                    ],
                  ),
                ),
              ),
            ),
            SizedBox(
              height: MediaQuery.of(context).size.height * .01,
            ),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 10),
              child: Container(
                height: MediaQuery.of(context).size.height * .1,
                width: MediaQuery.of(context).size.width,
                decoration: BoxDecoration(
                    gradient: LinearGradient(
                        begin: Alignment.topCenter,
                        end: Alignment.bottomCenter,
                        colors: [Color(0xffFFFEFE),Color(0xffE5E5E5)]
                    ),
                    color: Color(0xffFFFEFE),
                    border: Border.all(color: MyColors.contBorderClr),
                    boxShadow: [
                      BoxShadow(
                          color: Colors.grey.withOpacity(0.2),
                          offset: Offset(5, 5),
                          spreadRadius: 5,
                          blurRadius: 5),
                    ],
                    borderRadius: BorderRadius.circular(15)),
                child: Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 10),
                  child: Row(
                    children: [
                      Stack(
                        children: [
                          Container(
                            height: MediaQuery.of(context).size.height*.07,
                            width: MediaQuery.of(context).size.height*.06,
                            decoration: BoxDecoration(
                                color: Colors.white,
                                shape: BoxShape.circle,
                                border:
                                Border.all(color: MyColors.contBorderClr)),
                          ),
                          Positioned(
                            left: 30,
                            child: Container(
                              height: 20,
                              width: 20,
                              decoration: BoxDecoration(
                                  color: Color(0xff0CFF3C),
                                  border:
                                  Border.all(color: MyColors.contBorderClr),
                                  shape: BoxShape.circle),
                            ),
                          )
                        ],
                      ),
                      Spacer(),
                      Column(
                        children: [
                          Padding(
                            padding: const EdgeInsets.all(8.0),
                            child: Text(
                              "Online",
                              style: TextStyle(
                                  color: MyColors.liteGreyFont,
                                  fontSize:
                                  MediaQuery.of(context).size.width *
                                      .03),
                            ),
                          ),
                          Spacer(),
                          Padding(
                            padding: const EdgeInsets.symmetric(vertical: 5),
                            child: Container(
                              width: 50,
                              height: 20,
                              decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(20),
                                  color: MyColors.blueClr
                              ),
                              child: Center(
                                child: Text(MyStrings.invite,style: TextStyle(color: Colors.white),),
                              ),
                            ),
                          )
                        ],
                      )
                    ],
                  ),
                ),
              ),
            ),
            SizedBox(
              height: MediaQuery.of(context).size.height * .01,
            ),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 10),
              child: Container(
                height: MediaQuery.of(context).size.height * .1,
                width: MediaQuery.of(context).size.width,
                decoration: BoxDecoration(
                    gradient: LinearGradient(
                        begin: Alignment.topCenter,
                        end: Alignment.bottomCenter,
                        colors: [Color(0xffFFFEFE),Color(0xffE5E5E5)]
                    ),
                    color: Color(0xffFFFEFE),
                    border: Border.all(color: MyColors.contBorderClr),
                    boxShadow: [
                      BoxShadow(
                          color: Colors.grey.withOpacity(0.2),
                          offset: Offset(5, 5),
                          spreadRadius: 5,
                          blurRadius: 5),
                    ],
                    borderRadius: BorderRadius.circular(15)),
                child: Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 10),
                  child: Row(
                    children: [
                      Stack(
                        children: [
                          Container(
                            height: MediaQuery.of(context).size.height*.07,
                            width: MediaQuery.of(context).size.height*.06,
                            decoration: BoxDecoration(
                                color: Colors.white,
                                shape: BoxShape.circle,
                                border:
                                Border.all(color: MyColors.contBorderClr)),
                          ),
                          Positioned(
                            left: 30,
                            child: Container(
                              height: 20,
                              width: 20,
                              decoration: BoxDecoration(
                                  color: Colors.redAccent,
                                  border:
                                  Border.all(color: MyColors.contBorderClr),
                                  shape: BoxShape.circle),
                            ),
                          )
                        ],
                      ),
                      Spacer(),
                      Column(
                        children: [
                          Spacer(),
                          Padding(
                            padding: const EdgeInsets.all(5),
                            child: Text(
                              "Do Not Disturb",
                              style: TextStyle(
                                  color: MyColors.liteGreyFont,
                                  fontSize:
                                  MediaQuery.of(context).size.width *
                                      .03),
                            ),
                          ),
                        ],
                      )
                    ],
                  ),
                ),
              ),
            ),
            SizedBox(
              height: MediaQuery.of(context).size.height * .01,
            ),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 10),
              child: Container(
                height: MediaQuery.of(context).size.height * .1,
                width: MediaQuery.of(context).size.width,
                decoration: BoxDecoration(
                    gradient: LinearGradient(
                        begin: Alignment.topCenter,
                        end: Alignment.bottomCenter,
                        colors: [Color(0xffFFFEFE),Color(0xffE5E5E5)]
                    ),
                    color: Color(0xffFFFEFE),
                    border: Border.all(color: MyColors.contBorderClr),
                    boxShadow: [
                      BoxShadow(
                          color: Colors.grey.withOpacity(0.2),
                          offset: Offset(5, 5),
                          spreadRadius: 5,
                          blurRadius: 5),
                    ],
                    borderRadius: BorderRadius.circular(15)),
                child: Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 10),
                  child: Row(
                    children: [
                      Stack(
                        children: [
                          Container(
                            height: MediaQuery.of(context).size.height*.07,
                            width: MediaQuery.of(context).size.height*.06,
                            decoration: BoxDecoration(
                                color: Colors.white,
                                shape: BoxShape.circle,
                                border:
                                Border.all(color: MyColors.contBorderClr)),
                          ),
                          Positioned(
                            left: 30,
                            child: Container(
                              height: 20,
                              width: 20,
                              decoration: BoxDecoration(
                                  color: Colors.grey,
                                  border:
                                  Border.all(color: MyColors.contBorderClr),
                                  shape: BoxShape.circle),
                            ),
                          )
                        ],
                      ),
                      Spacer(),
                      Column(
                        children: [
                          Padding(
                            padding: const EdgeInsets.all(8.0),
                            child: Text(
                              "Offline",
                              style: TextStyle(
                                  color: MyColors.liteGreyFont,
                                  fontSize:
                                  MediaQuery.of(context).size.width *
                                      .03),
                            ),
                          ),
                          Spacer(),
                          Padding(
                            padding: const EdgeInsets.symmetric(vertical: 5),
                            child: Container(
                              width: 50,
                              height: 20,
                              decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(20),
                                  color: MyColors.blueClr
                              ),
                              child: Center(
                                child: Text(MyStrings.invite,style: TextStyle(color: Colors.white),),
                              ),
                            ),
                          )
                        ],
                      )
                    ],
                  ),
                ),
              ),
            ),
            Spacer(),
           Row(
             mainAxisAlignment: MainAxisAlignment.end,
             children: [
               Padding(
                 padding: const EdgeInsets.all(10),
                 child: Container(
                   height: 50,
                   width: 50,
                   decoration: BoxDecoration(
                     color: Colors.white,
                     shape: BoxShape.circle,
                     border: Border.all(color: Colors.black)
                   ),
                   child: Center(child: Icon(Icons.add,size: MediaQuery.of(context).size.width*.1,),),
                 ),
               ),
             ],
           )
          ],
        ),
      ),
    );
  }
}
