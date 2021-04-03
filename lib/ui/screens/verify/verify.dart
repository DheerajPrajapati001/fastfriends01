import 'package:fastfriends/ui/custom_widgets/blue_button.dart';
import 'package:fastfriends/utils/my_colors.dart';
import 'package:fastfriends/utils/my_strings.dart';
import 'package:flutter/material.dart';

class Verify extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 90),
              child: Text(
                MyStrings.aVerification,
                textAlign: TextAlign.center,
                style: TextStyle(
                  fontFamily: 'Segu',
                    color: Color(0xff585858),
                    fontSize: MediaQuery.of(context).size.width * .04),
              ),
            ),
            SizedBox(
              height: MediaQuery.of(context).size.height * .03,
            ),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 60),
              child: InkWell(
                onTap: () {},
                child: Container(
                    height: MediaQuery.of(context).size.height * .075,
                    decoration: BoxDecoration(
                        border: Border.all(
                            width: 1.5, color: MyColors.contBorderClr),
                        boxShadow: [
                          BoxShadow(
                              color: Colors.grey.withOpacity(0.3),
                              blurRadius: 5,
                              spreadRadius: 5,
                              offset: Offset(2, 2))
                        ],
                        borderRadius: BorderRadius.circular(50),
                        color: MyColors.liteGrey),
                    child: Center(
                      child: Stack(
                        children: <Widget>[
                          Text(
                            MyStrings.code,
                            style: TextStyle(
                              fontFamily: 'Segu',
                              fontSize: MediaQuery.of(context).size.width * .05,
                              color: MyColors.contBorderClr,
                            ),
                          ),
                        ],
                      ),
                    )),
              ),
            ),
            SizedBox(
              height: MediaQuery.of(context).size.height * .03,
            ),
            BlueButton(
              text: MyStrings.verify,
            )
          ],
        ),
      ),
    );
  }
}
