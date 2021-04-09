import 'package:fastfriends/ui/custom_widgets/blue_button.dart';
import 'package:fastfriends/ui/custom_widgets/text_field2.dart';
import 'package:fastfriends/utils/my_colors.dart';
import 'package:fastfriends/utils/my_images.dart';
import 'package:fastfriends/utils/my_strings.dart';
import 'package:flutter/material.dart';

class CreateAccount extends StatefulWidget {
  static String route = "CreateAccount";
  @override
  _CreateAccountState createState() => _CreateAccountState();
}

class _CreateAccountState extends State<CreateAccount> {
  bool check = false;
  String genderChoose;
  String monthChoose;
  String dayChoose;
  String yearChoose;

  List gender = [
    'Male',
    'Female',
    'Other'
  ];

  List<String> monthList = List.generate(12, (index) => (index+1).toString());

  List<String> dayList = List.generate(31, (index) => (index+1).toString());

  List<String> yearList = List.generate(100, (index) =>( DateTime.now().year-99+index).toString());








  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
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
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  Container(
                    width: MediaQuery.of(context).size.width*.22,
                    decoration: BoxDecoration(
                        color: MyColors.liteGrey,
                        border: Border.all(color: MyColors.contBorderClr)
                    ),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: [
                        SizedBox(
                          width: 10,
                        ),
                        Image.asset(MyImages.dropDownIcon,height: MediaQuery.of(context).size.height*.02,),
                        SizedBox(
                          width: 10,
                        ),
                        DropdownButton(
                          style: TextStyle(fontSize: MediaQuery.of(context).size.width*.05,color: MyColors.contBorderClr),
                          underline: SizedBox(),
                          iconSize: 0,
                          dropdownColor: MyColors.liteGrey,
                          hint: Text('Month',style: TextStyle(fontFamily: 'Teko'),),
                          value: monthChoose,
                          onChanged: (newValue){
                            setState(() {
                              monthChoose = newValue;
                            });
                          },
                          items: monthList.map((valueItem){
                            return DropdownMenuItem(
                              value: valueItem,
                              child: Text(valueItem),
                            );
                          } ).toList(),
                        ),
                      ],
                    ),
                  ),
                  Container(
                    width: MediaQuery.of(context).size.width*.22,
                    decoration: BoxDecoration(
                        color: MyColors.liteGrey,
                        border: Border.all(color: MyColors.contBorderClr)
                    ),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: [
                        SizedBox(
                          width: 10,
                        ),
                        Image.asset(MyImages.dropDownIcon,height: MediaQuery.of(context).size.height*.02,),
                        SizedBox(
                          width: 10,
                        ),
                        DropdownButton(
                          style: TextStyle(fontSize: MediaQuery.of(context).size.width*.05,color: MyColors.contBorderClr),
                          underline: SizedBox(),
                          iconSize: 0,
                          dropdownColor: MyColors.liteGrey,
                          hint: Text('Day',style: TextStyle(fontFamily: 'Teko'),),
                          value: dayChoose,
                          onChanged: (newValue){
                            setState(() {
                              dayChoose = newValue;
                            });
                          },
                          items: dayList.map((valueItem){
                            return DropdownMenuItem(
                              value: valueItem,
                              child: Text(valueItem),
                            );
                          } ).toList(),
                        ),
                      ],
                    ),
                  ),
                  Container(
                    width: MediaQuery.of(context).size.width*.22,
                    decoration: BoxDecoration(
                        color: MyColors.liteGrey,
                        border: Border.all(color: MyColors.contBorderClr)
                    ),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: [
                        SizedBox(
                          width: 10,
                        ),
                        Image.asset(MyImages.dropDownIcon,height: MediaQuery.of(context).size.height*.02,),
                        SizedBox(
                          width: 10,
                        ),
                        DropdownButton(
                          style: TextStyle(fontSize: MediaQuery.of(context).size.width*.05,color: MyColors.contBorderClr),
                          underline: SizedBox(),
                          iconSize: 0,
                          dropdownColor: MyColors.liteGrey,
                          hint: Text('Year',style: TextStyle(fontFamily: 'Teko'),),
                          value: yearChoose,
                          onChanged: (newValue){
                            setState(() {
                              yearChoose = newValue;
                            });
                          },
                          items: yearList.map((valueItem){
                            return DropdownMenuItem(
                              value: valueItem,
                              child: Text(valueItem),
                            );
                          } ).toList(),
                        ),
                      ],
                    ),
                  ),

                ],
              ),
              SizedBox(
                height: 15,
              ),
              Container(
                width: MediaQuery.of(context).size.width*.3,
                decoration: BoxDecoration(
                  color: MyColors.liteGrey,
                  borderRadius: BorderRadius.circular(50),
                  border: Border.all(color: MyColors.contBorderClr)
                ),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    Image.asset(MyImages.dropDownIcon,height: MediaQuery.of(context).size.height*.02,),
                    SizedBox(
                      width: 10,
                    ),
                    DropdownButton(
                      style: TextStyle(fontSize: MediaQuery.of(context).size.width*.05,color: MyColors.contBorderClr),
                      underline: SizedBox(),
                      iconSize: 0,
                      dropdownColor: MyColors.liteGrey,
                      hint: Text('Gender',style: TextStyle(fontFamily: 'Teko'),),
                      value: genderChoose,
                      onChanged: (newValue){
                        setState(() {
                          genderChoose = newValue;
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
              SizedBox(
                height: MediaQuery.of(context).size.height * .05,
              ),
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 60),
                child: Container(
                    height: MediaQuery.of(context).size.height*.07,
                    decoration: BoxDecoration(
                        border: Border.all(
                            color: MyColors.contBorderClr
                        ),
                        borderRadius: BorderRadius.circular(50),
                        color: MyColors.liteGrey
                    ),
                    child: Padding(
                      padding: const EdgeInsets.symmetric(horizontal: 30),
                      child: Center(
                        child: TextField(
                          textAlign: TextAlign.center,
                          keyboardType: TextInputType.emailAddress,
                          decoration: InputDecoration(
                              hintText: MyStrings.email,
                              hintStyle: TextStyle(fontSize: MediaQuery.of(context).size.width*.05,color: MyColors.greyFont),
                              border: InputBorder.none
                          ),
                        ),
                      ),
                    )),
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
                height: MediaQuery.of(context).size.height * .03,
              ),
              Spacer(),
              Text(MyStrings.bySigning,
                style: TextStyle(
                    fontSize: MediaQuery.of(context).size.width * .04,
                    fontFamily: 'Segu',
                    color: MyColors.greyFont),
              ),

              Text(MyStrings.termsAgreement,
                style: TextStyle(
                    fontSize: MediaQuery.of(context).size.width * .04,
                    fontFamily: 'Segu',
                    decoration: TextDecoration.underline,
                    color: MyColors.greyFont),
              ),
              SizedBox(
                height: MediaQuery.of(context).size.height * .05,
              ),
              BlueButton(
                text: MyStrings.singUp,
              ),
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



// ignore: must_be_immutable
class DropdownCont extends StatefulWidget {

  String hitText;
  var value;
  var listName;

  // ignore: non_constant_identifier_names
  DropdownCont({this.value,this.hitText,this.listName});


  @override
  _DropdownContState createState() => _DropdownContState();
}

class _DropdownContState extends State<DropdownCont> {
  @override
  Widget build(BuildContext context) {
    return Container(
      width: MediaQuery.of(context).size.width*.3,
      decoration: BoxDecoration(
          color: MyColors.liteGrey,
          border: Border.all(color: MyColors.contBorderClr)
      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Image.asset(MyImages.dropDownIcon,height: MediaQuery.of(context).size.height*.02,),
          SizedBox(
            width: 10,
          ),
          DropdownButton(
            style: TextStyle(fontSize: MediaQuery.of(context).size.width*.05,color: MyColors.contBorderClr),
            underline: SizedBox(),
            iconSize: 0,
            dropdownColor: MyColors.liteGrey,
            hint: Text(widget.hitText),
            value: widget.value,
            onChanged: (newValue){
              setState(() {
                widget.value = newValue;
              });
            },
            items: widget.listName.map((valueItem){
              return DropdownMenuItem(
                value: valueItem,
                child: Text(valueItem),
              );
            } ).toList(),
          ),
        ],
      ),
    );
  }
}

