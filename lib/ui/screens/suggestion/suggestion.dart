import 'package:fastfriends/ui/custom_widgets/blue_button.dart';
import 'package:fastfriends/ui/custom_widgets/custom_app_bar.dart';
import 'package:fastfriends/utils/my_colors.dart';
import 'package:fastfriends/utils/my_strings.dart';
import 'package:flutter/material.dart';

class Suggestion extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: MyColors.mainBgClr,
      body: SingleChildScrollView(
        child: Column(
          children: [
            CustomAppbar(
              backIcon: true,
              title: MyStrings.feedback,
            ),
            SizedBox(
              height: MediaQuery.of(context).size.height*.05,
            ),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 70),
              child: Text(MyStrings.weWouldLike,textAlign: TextAlign.center,style: TextStyle(fontSize: MediaQuery.of(context).size.width*.04,fontFamily: 'Segu'),),
            ),
            SizedBox(
              height: MediaQuery.of(context).size.height*.05,
            ),
            Container(
              height: MediaQuery.of(context).size.height * .25,
              width: MediaQuery.of(context).size.width * .85,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(10),
                  boxShadow: [
                    BoxShadow(
                      color: Colors.black.withOpacity(0.1),
                      offset: Offset(5,5),
                      blurRadius: 10,
                      spreadRadius: 5
                    )
                  ],
                  color: Colors.white,
                  border: Border.all(color: MyColors.contBorderClr)),
              child: Padding(
                padding: const EdgeInsets.symmetric(horizontal: 10),
                child: TextField(
                  textAlign: TextAlign.start,
                  decoration: InputDecoration(
                      border: InputBorder.none
                  ),
                ),
              ),
            ),
            SizedBox(
              height: MediaQuery.of(context).size.height*.2,
            ),
            Text(MyStrings.thankYou,style: TextStyle(fontSize: MediaQuery.of(context).size.width*.03,fontFamily: 'Segu'),),
            SizedBox(
              height: MediaQuery.of(context).size.height*.02,
            ),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 10),
              child: BlueButton(
                text: MyStrings.submit,
              ),
            )
          ],
        ),
      ),
    );
  }
}
