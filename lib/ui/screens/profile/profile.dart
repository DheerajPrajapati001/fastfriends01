import 'package:fastfriends/ui/custom_widgets/custom_app_bar.dart';
import 'package:fastfriends/utils/my_colors.dart';
import 'package:fastfriends/utils/my_images.dart';
import 'package:fastfriends/utils/my_strings.dart';
import 'package:flutter/material.dart';

class Profile extends StatelessWidget {
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
                    backIcon: true,
                    title: MyStrings.profilePreview,
                  ),
                  Positioned(
                    top: 10,
                      right: 5,
                      child: Image.asset(MyImages.settings,height: MediaQuery.of(context).size.height*.04,))
                ],
              ),
              SizedBox(
                height: 20,
              ),
              Image.asset(MyImages.roundGirl,height: MediaQuery.of(context).size.width*.6,),
              Text('Lisa, 21',style: TextStyle(fontSize: MediaQuery.of(context).size.width*.1),),
              SizedBox(
                height: 20,
              ),
              Image.asset(MyImages.diamond,height: MediaQuery.of(context).size.width*.08,),
              Text(MyStrings.level6,style: TextStyle(fontSize: MediaQuery.of(context).size.width*.05),),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text("150",style: TextStyle(fontSize: MediaQuery.of(context).size.width*.04),),
                  SizedBox(
                    width: 5,
                  ),
                  Container(
                    height: MediaQuery.of(context).size.height*.022,
                    width: MediaQuery.of(context).size.height*.3,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(50),
                      border: Border.all(color: MyColors.contBorderClr,width: 2)
                    ),
                    child: Row(
                      children: [
                        Container(
                          height: MediaQuery.of(context).size.height*.022,
                          width: MediaQuery.of(context).size.height*.2,
                          decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(50),
                            color: MyColors.blueClr
                          ),
                          child: Row(
                            children: [
                              Spacer(),
                              Text('1750',),
                              SizedBox(
                                width: 20,
                              )
                            ],
                          ),
                        ),
                      ],
                    ),
                  ),
                  SizedBox(
                    width: 5,
                  ),
                  Text("200",style: TextStyle(fontSize: MediaQuery.of(context).size.width*.04),),
                ],
              ),
              SizedBox(
                height: 20,
              ),
              Text('Karma',style: TextStyle(fontSize: MediaQuery.of(context).size.width*.06),),
              Text('2000',style: TextStyle(fontSize: MediaQuery.of(context).size.width*.05,color: MyColors.blueClr),),
              SizedBox(
                height: 20,
              ),
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 60),
                child: Text(MyStrings.iAmAstrologist,textAlign: TextAlign.center,style: TextStyle(fontSize: MediaQuery.of(context).size.width*.04),),
              ),
              SizedBox(
                height: 50,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  Column(
                    children: [
                      Image.asset(MyImages.history,height: MediaQuery.of(context).size.width*.12,),
                      SizedBox(
                        height: 10,
                      ),
                      Text(MyStrings.history)
                    ],
                  ),
                  Column(
                    children: [
                      Image.asset(MyImages.pencil,height: MediaQuery.of(context).size.width*.12,),
                      SizedBox(
                        height: 10,
                      ),
                      Text(MyStrings.editProfile)
                    ],
                  ),
                ],
              )
            ],
          ),
        ),
      ),
    );
  }
}
