import 'package:fastfriends/ui/custom_widgets/blue_button.dart';
import 'package:fastfriends/ui/custom_widgets/custom_app_bar.dart';
import 'package:fastfriends/utils/my_colors.dart';
import 'package:fastfriends/utils/my_strings.dart';
import 'package:flutter/material.dart';

class EditProfile extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: MyColors.mainBgClr,
      body: SingleChildScrollView(
        child: Column(
          children: [
            CustomAppbar(
              title: MyStrings.editProfile,
              backIcon: true,
            ),
            SizedBox(
              height: MediaQuery.of(context).size.height*.05,
            ),
            Text(MyStrings.uploadPhotos,style: TextStyle(fontSize: MediaQuery.of(context).size.width*.05),),
            SizedBox(
              height: MediaQuery.of(context).size.height*.01,
            ),
            Container(
              height: MediaQuery.of(context).size.height*.2,
              width: MediaQuery.of(context).size.width*.7,
              decoration: BoxDecoration(
                  boxShadow: [
                    BoxShadow(
                        color: Colors.black.withOpacity(0.1),
                        offset: Offset(2,2),
                        blurRadius: 10,
                        spreadRadius: 5
                    )
                  ],
                border: Border.all(color: MyColors.contBorderClr),
                color: MyColors.liteGrey
              ),
              child: Material(
                color: Colors.transparent,
                child: InkWell(
                  onTap: (){},
                  splashColor: Colors.black.withOpacity(0.1),
                  radius: 500,
                  child: Center(
                    child: Icon(Icons.add),
                  ),
                ),
              ),
            ),
            SizedBox(
              height: MediaQuery.of(context).size.height*.02,
            ),
            Text(MyStrings.summary,style: TextStyle(fontSize: MediaQuery.of(context).size.width*.05),),
            SizedBox(
              height: MediaQuery.of(context).size.height*.01,
            ),
            Container(
              height: MediaQuery.of(context).size.height*.2,
              width: MediaQuery.of(context).size.width*.7,
              decoration: BoxDecoration(
                  boxShadow: [
                    BoxShadow(
                        color: Colors.black.withOpacity(0.1),
                        offset: Offset(2,2),
                        blurRadius: 10,
                        spreadRadius: 5
                    )
                  ],
                  border: Border.all(color: MyColors.contBorderClr),
                  color: MyColors.liteGrey
              ),
              child: Padding(
                padding: const EdgeInsets.all(10),
                child: Center(
                  child: TextField(
                    textAlign: TextAlign.center,
                    decoration: InputDecoration(
                      border: InputBorder.none,
                      hintText: MyStrings.addBio,
                      hintStyle: TextStyle(
                          color: MyColors.greyFont.withOpacity(0.5),fontFamily: 'Segu'),
                    ),
                  ),
                ),
              ),
            ),
            SizedBox(
              height: MediaQuery.of(context).size.height*.04,
            ),
            Text(MyStrings.status,style: TextStyle(fontSize: MediaQuery.of(context).size.width*.05),),
            SizedBox(
              height: MediaQuery.of(context).size.height*.01,
            ),
            Container(
              height: MediaQuery.of(context).size.height*.05,
              width: MediaQuery.of(context).size.width*.7,
              decoration: BoxDecoration(
                  boxShadow: [
                    BoxShadow(
                        color: Colors.black.withOpacity(0.1),
                        offset: Offset(2,2),
                        blurRadius: 10,
                        spreadRadius: 5
                    )
                  ],
                  border: Border.all(color: MyColors.contBorderClr),
                  color: MyColors.liteGrey
              ),
            ),
            SizedBox(
              height: MediaQuery.of(context).size.height*.07,
            ),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 50),
              child: BlueButton(
                text: MyStrings.done,
              ),
            ),
            SizedBox(
              height: MediaQuery.of(context).size.height*.02,
            ),
          ],
        ),
      ),
    );
  }
}
