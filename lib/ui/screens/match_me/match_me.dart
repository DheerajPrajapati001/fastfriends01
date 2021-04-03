import 'package:fastfriends/ui/custom_widgets/blue_button.dart';
import 'package:fastfriends/ui/custom_widgets/upper_container.dart';
import 'package:fastfriends/utils/my_colors.dart';
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


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: MyColors.mainBgClr,
      body: SafeArea(
        child: SingleChildScrollView(
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
                height: MediaQuery.of(context).size.height * .25,
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
