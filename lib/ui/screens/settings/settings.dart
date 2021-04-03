import 'package:fastfriends/ui/custom_widgets/custom_app_bar.dart';
import 'package:fastfriends/ui/custom_widgets/setting_cont.dart';
import 'package:fastfriends/utils/my_colors.dart';
import 'package:fastfriends/utils/my_images.dart';
import 'package:fastfriends/utils/my_strings.dart';
import 'package:flutter/material.dart';

class Settings extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: MyColors.mainBgClr,
      body: SingleChildScrollView(
        child: SafeArea(
          child: Column(
            children: [
              Stack(
                children: [
                  CustomAppbar(
                    backIcon: false,
                    title: MyStrings.settings,
                  ),
                  Positioned(
                    right: MediaQuery.of(context).size.width*.02,
                    bottom: MediaQuery.of(context).size.height*.01,
                    child: Container(
                      height: MediaQuery.of(context).size.height*.04,
                      width: MediaQuery.of(context).size.width*.2,
                      decoration: BoxDecoration(
                          color: MyColors.blueClr,
                          borderRadius: BorderRadius.circular(50)
                      ),
                      child: Center(
                        child: Text(MyStrings.done,style: TextStyle(color: Colors.white,fontSize: 25),),
                      ),
                    ),
                  ),

                ],
              ),
              SizedBox(
                height: MediaQuery.of(context).size.height*.02,
              ),
              Padding(
                padding: const EdgeInsets.only(left:30,bottom: 15),
                child: Row(
                  children: [
                    Text(MyStrings.account,style: TextStyle(fontSize: MediaQuery.of(context).size.width*.05,color: Color(0xff929292)),),
                  ],
                ),
              ),
              SettingCont(
                mainText: MyStrings.phoneNo,
                widget:  Row(
                  children: [
                    Text('403********',style: TextStyle(fontSize: MediaQuery.of(context).size.width*.045),),
                    Icon(Icons.arrow_forward_ios,size: MediaQuery.of(context).size.width*.04,color: MyColors.greyFont,)
                  ],
                ),
              ),
              SettingCont(
                mainText: MyStrings.email,
                widget:  Row(
                  children: [
                    Text('LisaMona45621@linkapp.com',style: TextStyle(fontSize: MediaQuery.of(context).size.width*.045),),
                    Icon(Icons.arrow_forward_ios,size: MediaQuery.of(context).size.width*.04,color: MyColors.greyFont,)
                  ],
                ),
              ),
              SettingCont(
                mainText: MyStrings.socialLinks,
                widget:  Row(
                  children: [
                    Icon(Icons.arrow_forward_ios,size: MediaQuery.of(context).size.width*.04,color: MyColors.greyFont,)
                  ],
                ),
              ),
              SizedBox(
                height: MediaQuery.of(context).size.height*.04,
              ),
              Padding(
                padding: const EdgeInsets.only(left:30,bottom: 15),
                child: Row(
                  children: [
                    Text(MyStrings.privacy,style: TextStyle(fontSize: MediaQuery.of(context).size.width*.05,color: Color(0xff929292)),),
                  ],
                ),
              ),
              SettingCont(
                mainText: MyStrings.whoCanSee,
                widget:  Row(
                  children: [
                    Text(MyStrings.everyone,style: TextStyle(fontSize: MediaQuery.of(context).size.width*.045),),
                    Icon(Icons.arrow_forward_ios,size: MediaQuery.of(context).size.width*.04,color: MyColors.greyFont,)
                  ],
                ),
              ),
              SettingCont(
                mainText: MyStrings.ghostMode,
                widget:  Image.asset(MyImages.switchS,height: MediaQuery.of(context).size.width*.1,)
              ),
              SizedBox(
                height: MediaQuery.of(context).size.height*.1,
              ),
              Padding(
                padding: const EdgeInsets.only(left:30,bottom: 15),
                child: Row(
                  children: [
                    Text(MyStrings.notification,style: TextStyle(fontSize: MediaQuery.of(context).size.width*.05,color: Color(0xff929292)),),
                  ],
                ),
              ),
              SettingCont(
                  mainText: MyStrings.pushNotifications,
                  widget:  Image.asset(MyImages.switchS,height: MediaQuery.of(context).size.width*.1,)
              ),
              SizedBox(
                height: MediaQuery.of(context).size.height*.05,
              ),
              Padding(
                padding: const EdgeInsets.only(left:30,bottom: 15),
                child: Row(
                  children: [
                    Text(MyStrings.feedback,style: TextStyle(fontSize: MediaQuery.of(context).size.width*.05,color: Color(0xff929292)),),
                  ],
                ),
              ),
              SettingCont(
                mainText: MyStrings.suggestions,
                widget:  Row(
                  children: [
                    Icon(Icons.arrow_forward_ios,size: MediaQuery.of(context).size.width*.04,color: MyColors.greyFont,)
                  ],
                ),
              ),
              SettingCont(
                mainText: MyStrings.reportAnIssue,
                widget:  Row(
                  children: [
                    Icon(Icons.arrow_forward_ios,size: MediaQuery.of(context).size.width*.04,color: MyColors.greyFont,)
                  ],
                ),
              ),
              SettingCont(
                mainText: MyStrings.contactSupport,
                widget:  Row(
                  children: [
                    Icon(Icons.arrow_forward_ios,size: MediaQuery.of(context).size.width*.04,color: MyColors.greyFont,)
                  ],
                ),
              ),
              SizedBox(
                height: MediaQuery.of(context).size.height*.1,
              ),
              Container(
                height: MediaQuery.of(context).size.height*.06,
                width: MediaQuery.of(context).size.width,
                decoration: BoxDecoration(
                    boxShadow: [
                      BoxShadow(
                          color: Colors.grey.withOpacity(.20),
                          offset: Offset(5,5),
                          spreadRadius: 5,
                          blurRadius: 5
                      )
                    ],
                    color: Colors.white,
                    border: Border.all(color: MyColors.contBorderClr,width: .5)
                ),
                child: Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 10),
                  child: Center(child: Text(MyStrings.deleteAccount,style: TextStyle(fontSize: MediaQuery.of(context).size.width*.045),)),
                ),
              ),
              SizedBox(
                height: MediaQuery.of(context).size.height*.1,
              ),
              Container(
                height: MediaQuery.of(context).size.height*.08,
                width: MediaQuery.of(context).size.width*.5,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(50),
                    boxShadow: [
                      BoxShadow(
                          color: Colors.grey.withOpacity(.20),
                          offset: Offset(5,5),
                          spreadRadius: 5,
                          blurRadius: 5
                      )
                    ],
                    color: Colors.white,
                    border: Border.all(color: MyColors.contBorderClr)
                ),
                child: Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 10),
                  child: Center(child: Text(MyStrings.logOut,style: TextStyle(fontSize: MediaQuery.of(context).size.width*.045),)),
                ),
              ),
              SizedBox(
                height: MediaQuery.of(context).size.height*.05,
              ),
            ],
          ),
        ),
      ),
    );
  }
}
