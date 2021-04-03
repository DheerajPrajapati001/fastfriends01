import 'package:fastfriends/ui/custom_widgets/blue_button.dart';
import 'package:fastfriends/ui/custom_widgets/upper_container.dart';
import 'package:fastfriends/utils/my_colors.dart';
import 'package:fastfriends/utils/my_strings.dart';
import 'package:flutter/material.dart';

class CreateEvent extends StatefulWidget {
  @override
  _CreateEventState createState() => _CreateEventState();
}

class _CreateEventState extends State<CreateEvent> {
  int miniAge = 18;
  int maxAge = 18;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: MyColors.mainBgClr,
      body: SafeArea(
        child: SingleChildScrollView(
          child: Column(
            children: [
              UpperContainer(
                title: MyStrings.droppin,
              ),
              SizedBox(
                height: MediaQuery.of(context).size.height * .03,
              ),
              Text(
                MyStrings.pinDropped,
                style:
                    TextStyle(fontSize: MediaQuery.of(context).size.height * .04),
              ),
              SizedBox(
                height: MediaQuery.of(context).size.height * .03,
              ),
              Text(
                MyStrings.silveradoSkies,
                style: TextStyle(color: MyColors.greyFont),
              ),
              SizedBox(
                height: MediaQuery.of(context).size.height * .03,
              ),
              Container(
                height: MediaQuery.of(context).size.height * .15,
                width: MediaQuery.of(context).size.width * .7,
                decoration: BoxDecoration(
                    color: Colors.white,
                    border: Border.all(color: MyColors.contBorderClr)),
                child: Center(
                  child: Text(
                    MyStrings.details,
                    style: TextStyle(
                        color: MyColors.greyFont.withOpacity(0.5),
                        fontWeight: FontWeight.bold),
                  ),
                ),
              ),
              SizedBox(
                height: MediaQuery.of(context).size.height * .03,
              ),
              Container(
                height: MediaQuery.of(context).size.height*.045,
                width: MediaQuery.of(context).size.width*.2,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(50),
                  color: MyColors.blueClr
                ),
                child: Center(
                  child: Text(MyStrings.inviteFrd,style: TextStyle(color: Colors.white),),
                ),
              ),
              SizedBox(
                height: MediaQuery.of(context).size.height * .03,
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
                height: MediaQuery.of(context).size.height * .03,
              ),
              Text(MyStrings.dateTime,style: TextStyle(fontSize: MediaQuery.of(context).size.width*.06),),
              SizedBox(
                height: MediaQuery.of(context).size.height * .03,
              ),
              Container(
                width: MediaQuery.of(context).size.width,
                height: MediaQuery.of(context).size.height*.22,
                color: MyColors.greyCont,
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.end,
                  children: [
                    Padding(
                      padding: const EdgeInsets.all(10),
                      child: Icon(Icons.add_circle_outline),
                    ),
                  ],
                ),
              ),
              SizedBox(
                height: MediaQuery.of(context).size.height * .1,
              ),
              BlueButton(text: MyStrings.startEvent,),
              SizedBox(
                height: MediaQuery.of(context).size.height * .02,
              ),
            ],
          ),
        ),
      ),
    );
  }
}
