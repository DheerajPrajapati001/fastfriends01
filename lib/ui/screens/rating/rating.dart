import 'package:fastfriends/ui/custom_widgets/blue_button.dart';
import 'package:fastfriends/ui/custom_widgets/custom_app_bar.dart';
import 'package:fastfriends/utils/my_colors.dart';
import 'package:fastfriends/utils/my_images.dart';
import 'package:fastfriends/utils/my_strings.dart';
import 'package:flutter/material.dart';

class Rating extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: MyColors.mainBgClr,
      body: Column(
        children: [
          CustomAppbar(
            backIcon: false,
            title: MyStrings.rating,
          ),
          SizedBox(
            height: MediaQuery.of(context).size.height*.02,
          ),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 15),
            child: Row(
              children: [
                Image.asset(MyImages.roundGirl,width: MediaQuery.of(context).size.height*.08,),
                SizedBox(
                  width: MediaQuery.of(context).size.width*.02,
                ),
                Text("Mona",style: TextStyle(fontSize: MediaQuery.of(context).size.width*.08),),
                SizedBox(
                  width: MediaQuery.of(context).size.width*.3,
                ),
                Image.asset(MyImages.triangleGreen,width: MediaQuery.of(context).size.height*.07,),
                Image.asset(MyImages.triangleRed,width: MediaQuery.of(context).size.height*.07,),
              ],
            ),
          ),
          Spacer(),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 50),
            child: BlueButton(
              text: MyStrings.submit,
            ),
          ),
          SizedBox(
            height: MediaQuery.of(context).size.height*.02,
          )
        ],
      ),
    );
  }
}
