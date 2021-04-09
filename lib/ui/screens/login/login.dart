import 'package:fastfriends/ui/custom_widgets/big_button.dart';
import 'package:fastfriends/ui/custom_widgets/text_field1.dart';
import 'package:fastfriends/utils/my_colors.dart';
import 'package:fastfriends/utils/my_images.dart';
import 'package:fastfriends/utils/my_strings.dart';
import 'package:flutter/material.dart';

class Login extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Container(
          height: MediaQuery.of(context).size.height,
          width: MediaQuery.of(context).size.width,
          decoration: BoxDecoration(
              image: DecorationImage(
                  fit: BoxFit.fill, image: AssetImage(MyImages.mainBg))),
          child: SingleChildScrollView(
            child: Column(
              children: [
                SizedBox(
                  height: MediaQuery.of(context).size.height * .2,
                ),
                Stack(
                  children: [
                    Text(
                      MyStrings.droppin,
                      style: TextStyle(
                          fontFamily: 'TekoBold',
                        fontSize: MediaQuery.of(context).size.width * .25,
                        foreground: Paint()
                          ..style = PaintingStyle.stroke
                          ..strokeWidth = 5
                          ..color = Colors.white,
                      ),
                    ),
                    Text(
                      MyStrings.droppin,
                      style: TextStyle(
                        fontSize: MediaQuery.of(context).size.width * .25,
                        fontFamily: 'TekoBold'
                      ),
                    ),
                  ],
                ),
                SizedBox(
                  height: MediaQuery.of(context).size.height * .03,
                ),
                TextField1(
                  text: MyStrings.userName,
                ),
                SizedBox(
                  height: MediaQuery.of(context).size.height * .03,
                ),
                Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 30),
                  child: Container(
                      height: MediaQuery.of(context).size.height*.09,
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(50),
                          color: MyColors.greyCont
                      ),
                      child: Padding(
                        padding: const EdgeInsets.symmetric(horizontal: 30),
                        child: Center(
                          child: TextField(
                            obscureText: true,
                            decoration: InputDecoration(
                                hintText: MyStrings.password,
                                hintStyle: TextStyle(fontWeight: FontWeight.bold,fontSize: MediaQuery.of(context).size.width*.05,fontFamily: 'TekoBold'),
                                border: InputBorder.none
                            ),
                          ),
                        ),
                      )),
                ),
                SizedBox(
                  height: MediaQuery.of(context).size.height * .03,
                ),
                BigButton(
                  text: MyStrings.login,
                ),
                SizedBox(
                  height: MediaQuery.of(context).size.height * .05,
                ),
                Text(MyStrings.forgotPass,style: TextStyle(fontSize: MediaQuery.of(context).size.width*.04,fontFamily: 'Segu'),),
                SizedBox(
                  height: MediaQuery.of(context).size.height * .04,
                ),
                Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 30),
                  child: Container(
                    height: MediaQuery.of(context).size.height * .055,
                    decoration: BoxDecoration(
                      border: Border.all(
                        color: Colors.green,
                        width: 1.5
                      ),
                        color: MyColors.blackCont,
                        borderRadius: BorderRadius.circular(50)),
                    child: Center(
                      child: Text(
                        MyStrings.createAccount,
                        style: TextStyle(color: Colors.orange,decoration: TextDecoration.underline,fontSize: MediaQuery.of(context).size.width*.04,
                        fontFamily: 'Segu'
                        ),
                      ),
                    ),
                  ),
                ),
                SizedBox(
                  height: MediaQuery.of(context).size.height * .1,
                ),
                Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 130),
                  child: Container(
                    height: MediaQuery.of(context).size.height*.005,
                    decoration: BoxDecoration(
                      color: MyColors.blackCont,
                      borderRadius: BorderRadius.circular(50)
                    ),
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
