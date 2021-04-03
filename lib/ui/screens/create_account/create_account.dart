import 'package:fastfriends/ui/custom_widgets/blue_button.dart';
import 'package:fastfriends/ui/custom_widgets/text_field2.dart';
import 'package:fastfriends/utils/my_colors.dart';
import 'package:fastfriends/utils/my_images.dart';
import 'package:fastfriends/utils/my_strings.dart';
import 'package:flutter/material.dart';

class CreateAccount extends StatefulWidget {
  @override
  _CreateAccountState createState() => _CreateAccountState();
}

class _CreateAccountState extends State<CreateAccount> {
  bool check = false;
  String valueChoose;
  List gender = [
    'Male',
    'Female',
    'Other'
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: SafeArea(
          child: Container(
            height: MediaQuery.of(context).size.height,
            width: MediaQuery.of(context).size.width,
            decoration: BoxDecoration(
              image: DecorationImage(
                fit: BoxFit.fill,
                image: AssetImage(MyImages.mainBg),
              ),
            ),
            child: Column(
              children: [
                SizedBox(
                  height: MediaQuery.of(context).size.height * .03,
                ),
                Stack(
                  children: <Widget>[
// Stroked text as border.
                    Text(
                      MyStrings.createAccount,
                      style: TextStyle(
                        fontSize: MediaQuery.of(context).size.width * .12,

                        foreground: Paint()
                          ..style = PaintingStyle.stroke
                          ..strokeWidth = 2
                          ..color = Colors.white,
                      ),
                    ),
// Solid text as fill.
                    Text(
                      MyStrings.createAccount,
                      style: TextStyle(
                        fontSize: MediaQuery.of(context).size.width * .12,
                        color: MyColors.mainFontGrey,
                      ),
                    ),
                  ],
                ),
                SizedBox(
                  height: MediaQuery.of(context).size.height * .06,
                ),
                TextField2(
                  text: MyStrings.fullName,
                ),
                SizedBox(
                  height: MediaQuery.of(context).size.height * .05,
                ),
                Container(
                  width: MediaQuery.of(context).size.width*.3,
                  decoration: BoxDecoration(
                    color: MyColors.liteGrey,
                    borderRadius: BorderRadius.circular(20),
                    border: Border.all(color: MyColors.contBorderClr)
                  ),
                  child: Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Row(
                      children: [
                        Icon(Icons.arrow_drop_down),
                        DropdownButton(
                          iconEnabledColor: Colors.transparent,
                          hint: Text('Gender'),
                          value: valueChoose,
                          onChanged: (newValue){
                            setState(() {
                              valueChoose = newValue;
                            });
                          },
                          items: gender.map((valueItem){
                            return DropdownMenuItem(
                              value: valueItem,
                              child: Text(valueItem),
                            );
                          } ).toList(),
                        ),
                      ],
                    ),
                  ),
                ),
                SizedBox(
                  height: MediaQuery.of(context).size.height * .05,
                ),
                TextField2(
                  text: MyStrings.email,
                ),
                SizedBox(
                  height: MediaQuery.of(context).size.height * .05,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    Text(
                      MyStrings.signMe,
                      style: TextStyle(
                          fontSize: MediaQuery.of(context).size.width * .05,
                          color: MyColors.greyFont),
                    ),
                    Checkbox(
                      checkColor: Colors.white,
                      activeColor: Colors.grey,
                      value: check,
                      onChanged: (a) {
                        setState(() {
                          check = a;
                        });
                      },
                    )
                  ],
                ),
                SizedBox(
                  height: MediaQuery.of(context).size.height * .08,
                ),
                Text(MyStrings.bySigning,
                  style: TextStyle(
                      fontSize: MediaQuery.of(context).size.width * .04,
                      fontFamily: 'Segu',
                      color: MyColors.greyFont),
                ),
                SizedBox(
                  height: MediaQuery.of(context).size.height * .02,
                ),
                Text(MyStrings.termsAgreement,
                  style: TextStyle(
                      fontSize: MediaQuery.of(context).size.width * .04,
                      fontFamily: 'Segu',
                      decoration: TextDecoration.underline,
                      color: MyColors.greyFont),
                ),
                SizedBox(
                  height: MediaQuery.of(context).size.height * .08,
                ),
                BlueButton(
                  text: MyStrings.singUp,
                )
              ],
            ),
          ),
        ),
      ),
    );
  }
}
