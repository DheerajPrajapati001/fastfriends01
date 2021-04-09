import 'package:fastfriends/ui/custom_widgets/blue_button.dart';
import 'package:fastfriends/ui/custom_widgets/social_media.dart';
import 'package:fastfriends/ui/custom_widgets/text_field2.dart';
import 'package:fastfriends/utils/my_colors.dart';
import 'package:fastfriends/utils/my_images.dart';
import 'package:fastfriends/utils/my_strings.dart';
import 'package:flutter/material.dart';

class PhoneNumber extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Stack(
          children: [
            Container(
              height: MediaQuery.of(context).size.height,
              width: MediaQuery.of(context).size.width,
              decoration: BoxDecoration(
                image: DecorationImage(
                  fit: BoxFit.fill,
                  image: AssetImage(MyImages.mainBg),
                ),
              ),
            ),
            Column(
              children: [
                SizedBox(
                  height: MediaQuery.of(context).size.height*.15,
                ),
                Stack(
                  children: <Widget>[
                    Text(
                      MyStrings.droppin,
                      style: TextStyle(
                        fontSize: MediaQuery.of(context).size.width*.17,
                        foreground: Paint()
                          ..style = PaintingStyle.stroke
                          ..strokeWidth = 2
                          ..color = Colors.white,
                      ),
                    ),
                    Text(
                      MyStrings.droppin,
                      style: TextStyle(
                        fontSize: MediaQuery.of(context).size.width*.17,
                        color: MyColors.mainFontGrey,
                      ),
                    ),
                  ],
                ),
                SizedBox(
                  height: MediaQuery.of(context).size.height*.01,
                ),
                Image.asset(MyImages.friend,width: MediaQuery.of(context).size.width*.15,),
                SizedBox(
                  height: MediaQuery.of(context).size.height*.05,
                ),
                Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 60),
                  child: Container(
                      height: MediaQuery.of(context).size.height*.07,
                      decoration: BoxDecoration(
                          border: Border.all(
                              color: MyColors.contBorderClr
                          ),
                          borderRadius: BorderRadius.circular(50),
                          color: MyColors.liteGrey
                      ),
                      child: Padding(
                        padding: const EdgeInsets.symmetric(horizontal: 30),
                        child: Center(
                          child: TextField(
                            keyboardType: TextInputType.number,
                            textAlign: TextAlign.center,
                            decoration: InputDecoration(
                                hintText: MyStrings.phoneNo,
                                hintStyle: TextStyle(fontSize: MediaQuery.of(context).size.width*.05,color: MyColors.greyFont),
                                border: InputBorder.none
                            ),
                          ),
                        ),
                      )),
                ),
                SizedBox(
                  height: MediaQuery.of(context).size.height*.05,
                ),
                BlueButton(
                  text: MyStrings.enter,
                ),
                SizedBox(
                  height: MediaQuery.of(context).size.height*.2,
                ),
                Row(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    SocialMediaCont(
                      img: MyImages.facebook,
                    ),
                    SizedBox(
                      width: 20,
                    ),
                    SocialMediaCont(
                      img: MyImages.google,
                    ),
                    SizedBox(
                      width: 20,
                    ),
                    SocialMediaCont(
                      img: MyImages.outlook,
                    )
                  ],
                ),
                SizedBox(
                  height: MediaQuery.of(context).size.height*.15,
                )
              ],
            ),
          ],
        ),
      ),
    );
  }
}



