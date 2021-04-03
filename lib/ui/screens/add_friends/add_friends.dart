import 'package:fastfriends/utils/my_colors.dart';
import 'package:fastfriends/utils/my_strings.dart';
import 'package:flutter/material.dart';

class AddFriends extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Container(
          height: MediaQuery.of(context).size.height*.25,
          width: MediaQuery.of(context).size.width*.8,
          decoration: BoxDecoration(
            color: Color(0xffECECEC),
            borderRadius: BorderRadius.circular(30),
            border: Border.all(color: MyColors.contBorderClr)
          ),
          child: Column(
            children: [
              Container(
                height: MediaQuery.of(context).size.height*.06,
                width: MediaQuery.of(context).size.width*.8,
                decoration: BoxDecoration(
                  color: Color(0xff515252),
                    borderRadius: BorderRadius.only(topLeft: Radius.circular(30),topRight: Radius.circular(30)),
                ),
              ),
              SizedBox(
                height: 20,
              ),
              Container(
                height: MediaQuery.of(context).size.height*.06,
                width: MediaQuery.of(context).size.width*.65,
                decoration: BoxDecoration(
                  border: Border.all(color: MyColors.contBorderClr),
                  borderRadius: BorderRadius.circular(10),
                  color: Colors.white
                ),
                child: Center(
                  child: Text(MyStrings.enterFrndPhone,style: TextStyle(color: MyColors.liteGreyFont),),
                ),
              ),
              SizedBox(
                height: 30,
              ),
              Row(
                children: [
                  Expanded(child: Divider(
                    color: Colors.black,
                  )),
                  Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 3),
                    child: Text(MyStrings.friendRequestSend),
                  ),
                  Expanded(child: Divider(
                    color: Colors.black,
                  )),
                ],
              )
            ],
          ),
        ),
      ),
    );
  }
}
