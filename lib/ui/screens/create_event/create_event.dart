import 'package:fastfriends/ui/custom_widgets/blue_button.dart';
import 'package:fastfriends/ui/custom_widgets/date_picker.dart';
import 'package:fastfriends/ui/custom_widgets/upper_container.dart';
import 'package:fastfriends/utils/my_colors.dart';
import 'package:fastfriends/utils/my_images.dart';
import 'package:fastfriends/utils/my_strings.dart';
import 'package:flutter/material.dart';

class CreateEvent extends StatefulWidget {
  @override
  _CreateEventState createState() => _CreateEventState();
}

class _CreateEventState extends State<CreateEvent> {
  int miniAge = 18;
  int maxAge = 18;

  String groupChoose;
  String startChoose;
  String endChoose;

  List<String> groupList =
      List.generate(100, (index) => (index + 1).toString());
  List<String> startList =
      List.generate(100, (index) => (index + 1).toString());
  List<String> endList = List.generate(100, (index) => (index + 1).toString());


  DateTime  _dateTime = DateTime.now();
  DateTime  __dateTime = DateTime.now();

  TimeOfDay time;
  TimeOfDay picked;

  TimeOfDay _time;
  TimeOfDay _picked;

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    time = TimeOfDay.now();
    _time = TimeOfDay.now();
  }

  Future<Null> selectTime (BuildContext context)  async {
    picked = await showTimePicker(
        context: context,
        initialTime: time);

    if(picked != null){
      setState(() {
        time = picked;
      });
    }
  }

  Future<Null> _selectTime (BuildContext context)  async {
    _picked = await showTimePicker(
        context: context,
        initialTime: _time);

    if(_picked != null){
      setState(() {
        _time = _picked;
      });
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: MyColors.mainBgClr,
      body: SingleChildScrollView(
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
              style: TextStyle(
                  fontSize: MediaQuery.of(context).size.height * .04,
                  fontFamily: 'Segu'),
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
              child: Padding(
                padding: const EdgeInsets.all(10),
                child: Center(
                  child: TextField(
                    textAlign: TextAlign.center,
                    decoration: InputDecoration(
                      border: InputBorder.none,
                      hintText: MyStrings.details,
                        hintStyle: TextStyle(
                            color: MyColors.greyFont.withOpacity(0.5),
                            fontWeight: FontWeight.bold),
                      ),
                    ),
                ),
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
              height: MediaQuery.of(context).size.height * .03,
            ),
            Container(
              height: MediaQuery.of(context).size.height * .05,
              width: MediaQuery.of(context).size.width * .25,
              decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(50),
                  color: MyColors.blueClr),
              child: Material(
                color: Colors.transparent,
                child: InkWell(
                  onTap: (){},
                  borderRadius: BorderRadius.circular(50),
                  splashColor: Colors.blue,
                  radius: 100,
                  child: Center(
                    child: Text(
                      MyStrings.inviteFrd,
                      style: TextStyle(color: Colors.white,fontSize: MediaQuery.of(context).size.height*.02),
                    ),
                  ),
                ),
              ),
            ),
            SizedBox(
              height: MediaQuery.of(context).size.height * .03,
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
              height: MediaQuery.of(context).size.height * .03,
            ),
            Text(
              MyStrings.ageRange,
              style: TextStyle(
                  fontSize: MediaQuery.of(context).size.width * .06),
            ),
            SizedBox(
              height: MediaQuery.of(context).size.height * .03,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text(
                  MyStrings.minimumAge,
                  style: TextStyle(
                      fontSize: MediaQuery.of(context).size.width * .04,
                      color: MyColors.greyFont),
                ),
                SizedBox(
                  width: 10,
                ),
                Text(
                  miniAge.toString(),
                  style: TextStyle(
                      fontSize: MediaQuery.of(context).size.width * .04,
                      color: MyColors.greyFont),
                ),
              ],
            ),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 30),
              child: Slider(
                min: 18,
                max: 80,
                value: miniAge.toDouble(),
                onChanged: (double newValue) {
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
                Text(
                  MyStrings.maximumAge,
                  style: TextStyle(
                      fontSize: MediaQuery.of(context).size.width * .04,
                      color: MyColors.greyFont),
                ),
                SizedBox(
                  width: 10,
                ),
                Text(
                  maxAge.toString(),
                  style: TextStyle(
                      fontSize: MediaQuery.of(context).size.width * .04,
                      color: MyColors.greyFont),
                ),
              ],
            ),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 30),
              child: Slider(
                min: 18,
                max: 80,
                value: maxAge.toDouble(),
                onChanged: (double newValue) {
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
            Text(
              MyStrings.dateTime,
              style: TextStyle(
                  fontSize: MediaQuery.of(context).size.width * .06),
            ),
            SizedBox(
              height: MediaQuery.of(context).size.height * .03,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                Column(
                  children: [
                    Text(
                      MyStrings.start,
                      style: TextStyle(
                          color: MyColors.greyFont,
                          fontSize: MediaQuery.of(context).size.height * .035),
                    ),
                    GestureDetector(
                      onTap: (){
                        selectTime(context);
                      },
                      child: Container(
                        width: MediaQuery.of(context).size.width * .28,
                        decoration: BoxDecoration(
                            color: MyColors.liteGrey,
                            borderRadius: BorderRadius.circular(15),
                            border: Border.all(color: MyColors.contBorderClr)),
                        child: Padding(
                          padding: const EdgeInsets.all(10),
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
                              Text('${time.hour}:${time.minute}',style: TextStyle(fontSize: MediaQuery.of(context).size.height*.02,fontFamily: 'Segu'),)

                            ],
                          ),
                        ),
                      ),
                    ),
                  ],
                ),
                Column(
                  children: [
                    Text(
                      MyStrings.end,
                      style: TextStyle(
                          color: MyColors.greyFont,
                          fontSize: MediaQuery.of(context).size.height * .035),
                    ),
                    GestureDetector(
                      onTap: (){
                        _selectTime(context);
                      },
                      child: Container(
                        width: MediaQuery.of(context).size.width * .28,
                        decoration: BoxDecoration(
                            color: MyColors.liteGrey,
                            borderRadius: BorderRadius.circular(15),
                            border: Border.all(color: MyColors.contBorderClr)),
                        child: Padding(
                          padding: const EdgeInsets.all(10),
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
                              Text('${_time.hour}:${_time.minute}',style: TextStyle(fontSize: MediaQuery.of(context).size.height*.02,fontFamily: 'Segu'),)

                            ],
                          ),
                        ),
                      ),
                    ),
                  ],
                )
              ],
            ),
            SizedBox(
              height: MediaQuery.of(context).size.height*.05,
            ),
            Text(
              MyStrings.date,
              style: TextStyle(
                  color: MyColors.greyFont,
                  fontSize: MediaQuery.of(context).size.height * .035),
            ),
            GestureDetector(
              onTap: pickedDate,
              child: Row(
                crossAxisAlignment: CrossAxisAlignment.center,
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Image.asset(MyImages.event,height: MediaQuery.of(context).size.height*.03,),
                  SizedBox(
                    width: 10,
                  ),
                  Container(
                    width: MediaQuery.of(context).size.width * .3,
                    decoration: BoxDecoration(
                        color: MyColors.liteGrey,
                        borderRadius: BorderRadius.circular(15),
                        border: Border.all(color: MyColors.contBorderClr)),
                    child: Padding(
                      padding: const EdgeInsets.all(10),
                      child: Center(child: DatePicker(dateTime: _dateTime)),
                    ),
                  ),
                ],
              ),
            ),
            SizedBox(
              height: MediaQuery.of(context).size.height * .03,
            ),
            Container(
              width: MediaQuery.of(context).size.width,
              height: MediaQuery.of(context).size.height * .22,
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
            BlueButton(
              text: MyStrings.startEvent,
            ),
            SizedBox(
              height: MediaQuery.of(context).size.height * .02,
            ),
          ],
        ),
      ),
    );
  }
  pickedDate() async{
    DateTime date = await showDatePicker(
      context: context,
      initialDate: _dateTime,
      firstDate: DateTime(DateTime.now().year - 70),
      lastDate: DateTime(DateTime.now().year + 100),);
    if (date != null) {
      setState(() {
        _dateTime = date;
      });
    }
  }
}
