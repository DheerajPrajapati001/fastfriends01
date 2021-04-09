import 'package:fastfriends/ui/custom_widgets/blue_button.dart';
import 'package:fastfriends/ui/custom_widgets/upper_container.dart';
import 'package:fastfriends/utils/my_colors.dart';
import 'package:fastfriends/utils/my_images.dart';
import 'package:fastfriends/utils/my_strings.dart';
import 'package:flutter/material.dart';

class MatchMe extends StatefulWidget {
  @override
  _MatchMeState createState() => _MatchMeState();
}

class _MatchMeState extends State<MatchMe> {

  int miniAge = 18;
  int maxAge = 18;
  int distance = 0;


  String groupChoose;
  String startChoose;
  String endChoose;

  List<String> groupList =
  List.generate(100, (index) => (index + 1).toString());
  List<String> startList =
  List.generate(100, (index) => (index + 1).toString());
  List<String> endList = List.generate(100, (index) => (index + 1).toString());



  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: MyColors.mainBgClr,
      body: SingleChildScrollView(
        child: Column(
          children: [
            UpperContainer(
              title: MyStrings.matchMe,
            ),
            SizedBox(
              height: MediaQuery.of(context).size.height * .03,
            ),

            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text(MyStrings.distance,style: TextStyle(fontSize: MediaQuery.of(context).size.width*.06),),
                SizedBox(
                  width: 10,
                ),
                Text(distance.toString(),style: TextStyle(fontSize: MediaQuery.of(context).size.width*.035),),
                Text('km',style: TextStyle(fontSize: MediaQuery.of(context).size.width*.035),),
              ],
            ),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 30),
              child: Slider(
                min: 0,
                max: 100,
                value: distance.toDouble(),
                onChanged: (double newValue){
                  setState(() {
                    distance = newValue.round();
                  });
                },
                activeColor: MyColors.greyFont,
                inactiveColor: MyColors.greyFont,
              ),
            ),
            SizedBox(
              height: MediaQuery.of(context).size.height * .03,
            ),
            Container(
              width: MediaQuery.of(context).size.width * .6,
              decoration: BoxDecoration(
                  color: MyColors.liteGrey,
                  borderRadius: BorderRadius.circular(15),
                  border: Border.all(color: MyColors.contBorderClr)),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  Image.asset(
                    MyImages.dropDownIcon,
                    height: MediaQuery.of(context).size.height * .02,
                  ),
                  SizedBox(
                    width: 10,
                  ),
                  DropdownButton(
                    style: TextStyle(
                        fontSize: MediaQuery.of(context).size.width * .05,
                        color: MyColors.contBorderClr),
                    underline: SizedBox(),
                    iconSize: 0,
                    dropdownColor: MyColors.liteGrey,
                    hint: Text(
                      MyStrings.yourGroup,
                      style: TextStyle(
                          fontFamily: 'Teko', color: MyColors.greyFont),
                    ),
                    value: groupChoose,
                    onChanged: (newValue) {
                      setState(() {
                        groupChoose = newValue;
                      });
                    },
                    items: groupList.map((valueItem) {
                      return DropdownMenuItem(
                        value: valueItem,
                        child: Text(valueItem),
                      );
                    }).toList(),
                  ),
                ],
              ),
            ),
            SizedBox(
              height: MediaQuery.of(context).size.height * .05,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                Text(
                  MyStrings.lookingFor,
                  style: TextStyle(
                      color: MyColors.greyFont,
                      fontSize: MediaQuery.of(context).size.height * .035),
                ),
                SizedBox(
                  width: MediaQuery.of(context).size.width*.05,
                ),
                Container(
                  width: MediaQuery.of(context).size.width * .2,
                  decoration: BoxDecoration(
                      color: MyColors.liteGrey,
                      borderRadius: BorderRadius.circular(15),
                      border: Border.all(color: MyColors.contBorderClr)),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      Image.asset(
                        MyImages.dropDownIcon,
                        height: MediaQuery.of(context).size.height * .02,
                      ),
                      SizedBox(
                        width: 10,
                      ),
                      DropdownButton(
                        style: TextStyle(
                            fontSize: MediaQuery.of(context).size.width * .05,
                            color: MyColors.contBorderClr),
                        underline: SizedBox(),
                        iconSize: 0,
                        dropdownColor: MyColors.liteGrey,
                        hint: Text(
                          '1',
                          style: TextStyle(
                              fontFamily: 'Teko', color: MyColors.greyFont),
                        ),
                        value: startChoose,
                        onChanged: (newValue) {
                          setState(() {
                            startChoose = newValue;
                          });
                        },
                        items: startList.map((valueItem) {
                          return DropdownMenuItem(
                            value: valueItem,
                            child: Text(valueItem),
                          );
                        }).toList(),
                      ),
                    ],
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 10),
                  child: Text(
                    MyStrings.to,
                    style: TextStyle(
                        color: MyColors.greyFont,
                        fontSize: MediaQuery.of(context).size.height * .035),
                  ),
                ),
                Container(
                  width: MediaQuery.of(context).size.width * .2,
                  decoration: BoxDecoration(
                      color: MyColors.liteGrey,
                      borderRadius: BorderRadius.circular(15),
                      border: Border.all(color: MyColors.contBorderClr)),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      Image.asset(
                        MyImages.dropDownIcon,
                        height: MediaQuery.of(context).size.height * .02,
                      ),
                      SizedBox(
                        width: 10,
                      ),
                      DropdownButton(
                        style: TextStyle(
                            fontSize: MediaQuery.of(context).size.width * .05,
                            color: MyColors.contBorderClr),
                        underline: SizedBox(),
                        iconSize: 0,
                        dropdownColor: MyColors.liteGrey,
                        hint: Text(
                          '2',
                          style: TextStyle(
                              fontFamily: 'Teko', color: MyColors.greyFont),
                        ),
                        value: endChoose,
                        onChanged: (newValue) {
                          setState(() {
                            endChoose = newValue;
                          });
                        },
                        items: endList.map((valueItem) {
                          return DropdownMenuItem(
                            value: valueItem,
                            child: Text(valueItem),
                          );
                        }).toList(),
                      ),
                    ],
                  ),
                ),
              ],
            ),
            SizedBox(
              height: MediaQuery.of(context).size.height * .05,
            ),
            Text(MyStrings.ageRange,style: TextStyle(fontSize: MediaQuery.of(context).size.width*.06),),
            SizedBox(
              height: MediaQuery.of(context).size.height * .03,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text(MyStrings.minimumAge,style: TextStyle(fontSize: MediaQuery.of(context).size.width*.04,color: MyColors.greyFont),),
                SizedBox(width: 10,),
                Text(miniAge.toString(),style: TextStyle(fontSize: MediaQuery.of(context).size.width*.04,color: MyColors.greyFont),),
              ],
            ),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 30),
              child: Slider(
                min: 18,
                max: 80,
                value: miniAge.toDouble(),
                onChanged: (double newValue){
                  setState(() {
                    miniAge = newValue.round();
                  });
                },
                activeColor: MyColors.greyFont,
                inactiveColor: MyColors.greyFont,
              ),
            ),
            SizedBox(
              height: MediaQuery.of(context).size.height * .03,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text(MyStrings.maximumAge,style: TextStyle(fontSize: MediaQuery.of(context).size.width*.04,color: MyColors.greyFont),),
                SizedBox(width: 10,),
                Text(maxAge.toString(),style: TextStyle(fontSize: MediaQuery.of(context).size.width*.04,color: MyColors.greyFont),),
              ],
            ),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 30),
              child: Slider(
                min: 18,
                max: 80,
                value: maxAge.toDouble(),
                onChanged: (double newValue){
                  setState(() {
                    maxAge = newValue.round();
                  });
                },
                activeColor: MyColors.greyFont,
                inactiveColor: MyColors.greyFont,
              ),
            ),
            SizedBox(
              height: MediaQuery.of(context).size.height * .04,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                Container(
                    height: MediaQuery.of(context).size.height*.07,
                    width: MediaQuery.of(context).size.width*.4,
                    decoration: BoxDecoration(
                        border: Border.all(
                            width: 1.5,
                            color: MyColors.contBorderClr
                        ),
                        boxShadow: [
                          BoxShadow(
                              color: Colors.grey.withOpacity(0.3),
                              blurRadius: 5,
                              spreadRadius: 5,
                              offset: Offset(2,2)
                          )
                        ],
                        borderRadius: BorderRadius.circular(50),
                        color: MyColors.blueClr
                    ),
                    child: Material(
                      color: Colors.transparent,
                      child: InkWell(
                        onTap: (){},
                        borderRadius: BorderRadius.circular(50),
                        splashColor: Colors.blue,
                        radius: 500,
                        child: Center(
                          child:  Stack(
                            children: <Widget>[
// Stroked text as border.
                              Text(
                                MyStrings.apply,
                                style: TextStyle(
                                  fontSize: MediaQuery.of(context).size.width*.07,
                                  foreground: Paint()
                                    ..style = PaintingStyle.stroke
                                    ..strokeWidth = 2
                                    ..color = MyColors.fontBorderClr,
                                ),
                              ),

                              Text(
                                MyStrings.apply,
                                style: TextStyle(
                                  fontSize: MediaQuery.of(context).size.width*.07,
                                  color: Colors.white,
                                ),
                              ),
                            ],
                          ),
                        ),
                      ),
                    )),
                Container(
                    height: MediaQuery.of(context).size.height*.07,
                    width: MediaQuery.of(context).size.width*.4,
                    decoration: BoxDecoration(
                        border: Border.all(
                            width: 1.5,
                            color: MyColors.contBorderClr
                        ),
                        boxShadow: [
                          BoxShadow(
                              color: Colors.grey.withOpacity(0.3),
                              blurRadius: 5,
                              spreadRadius: 5,
                              offset: Offset(2,2)
                          )
                        ],
                        borderRadius: BorderRadius.circular(50),
                        color: MyColors.blueClr
                    ),
                    child: Material(
                      color: Colors.transparent,
                      child: InkWell(
                        onTap: (){},
                        borderRadius: BorderRadius.circular(50),
                        splashColor: Colors.blue,
                        radius: 500,
                        child: Center(
                          child:  Stack(
                            children: <Widget>[
                              Text(
                                MyStrings.reset,
                                style: TextStyle(
                                  fontSize: MediaQuery.of(context).size.width*.07,
                                  foreground: Paint()
                                    ..style = PaintingStyle.stroke
                                    ..strokeWidth = 2
                                    ..color = MyColors.fontBorderClr,
                                ),
                              ),

                              Text(
                                MyStrings.reset,
                                style: TextStyle(
                                  fontSize: MediaQuery.of(context).size.width*.07,
                                  color: Colors.white,
                                ),
                              ),
                            ],
                          ),
                        ),
                      ),
                    )),
              ],
            ),
            SizedBox(
              height: MediaQuery.of(context).size.height * .02,
            ),
          ],
        ),
      ),
    );
  }
}
