import 'package:fastfriends/ui/custom_widgets/events_friends.dart';
import 'package:fastfriends/utils/my_colors.dart';
import 'package:fastfriends/utils/my_images.dart';
import 'package:flutter/material.dart';

class MyFriendsEvents extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          EventsFriends(),
          SizedBox(
            height: MediaQuery.of(context).size.height*.03,
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
                    Container(
                      height: MediaQuery.of(context).size.height*.07,
                      width: MediaQuery.of(context).size.height*.06,
                      decoration: BoxDecoration(
                          color: Colors.white,
                          shape: BoxShape.circle,
                          border:
                          Border.all(color: MyColors.blueClr)),
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
                              width: MediaQuery.of(context).size.width * .22,
                            ),
                            Text(
                              "started 20 mins ago",
                              style: TextStyle(
                                  color: MyColors.greyFont,
                                  fontSize:
                                  MediaQuery.of(context).size.width * .03),
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
          BlankCont(),
          SizedBox(
            height: MediaQuery.of(context).size.height * .01,
          ),
          BlankCont(),
          SizedBox(
            height: MediaQuery.of(context).size.height * .01,
          ),
          BlankCont(),
          SizedBox(
            height: MediaQuery.of(context).size.height * .01,
          ),
          BlankCont(),
        ],
      ),
    );
  }
}



class BlankCont extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 10),
      child: Container(
        height: MediaQuery.of(context).size.height * .1,
        width: MediaQuery.of(context).size.width,
        decoration: BoxDecoration(
            color: Color(0xffFFFEFE),
            border: Border.all(color: MyColors.contBorderClr),
            gradient: LinearGradient(
              begin: Alignment.topCenter,
              end: Alignment.bottomCenter,
              colors: [Color(0xffFFFEFE),Color(0xffE5E5E5)]
            ),
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
              Container(
                height: MediaQuery.of(context).size.height*.07,
                width: MediaQuery.of(context).size.height*.06,
                decoration: BoxDecoration(
                    color: Colors.white,
                    shape: BoxShape.circle,
                    border:
                    Border.all(color: MyColors.contBorderClr)),
              ),
            ],
          ),
        ),
      ),
    );
  }
}

