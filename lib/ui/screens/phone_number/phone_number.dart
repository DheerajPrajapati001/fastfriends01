import 'package:fastfriends/ui/custom_widgets/blue_button.dart';
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
// Stroked text as border.
                    Text(
                      MyStrings.droppin,
                      style: TextStyle(
                        fontSize: MediaQuery.of(context).size.width*.2,
                        fontWeight: FontWeight.w100,
                        fontFamily: 'TekoLight',
                        foreground: Paint()
                          ..style = PaintingStyle.stroke
                          ..strokeWidth = 2
                          ..color = Colors.white,
                      ),
                    ),
// Solid text as fill.
                    Text(
                      MyStrings.droppin,
                      style: TextStyle(
                        fontSize: MediaQuery.of(context).size.width*.2,
                        fontWeight: FontWeight.w100,
                        fontFamily: 'TekoLight',
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
                TextField2(
                  text: MyStrings.phone,
                ),
                SizedBox(
                  height: MediaQuery.of(context).size.height*.05,
                ),
                BlueButton(
                  text: MyStrings.enter,
                )
              ],
            ),
          ],
        ),
      ),
    );
  }
}



