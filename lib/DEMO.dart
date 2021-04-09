import 'package:fastfriends/ui/custom_widgets/big_button.dart';
import 'package:fastfriends/ui/custom_widgets/blue_button.dart';
import 'package:fastfriends/ui/custom_widgets/custom_app_bar.dart';
import 'package:fastfriends/ui/custom_widgets/text_field1.dart';
import 'package:fastfriends/ui/custom_widgets/text_field2.dart';
import 'package:fastfriends/ui/custom_widgets/upper_container.dart';
import 'package:fastfriends/utils/my_strings.dart';
import 'package:flutter/material.dart';

class Demo extends StatefulWidget {
  @override
  _DemoState createState() => _DemoState();
}

class _DemoState extends State<Demo> {
  List<String> dateList = List.generate(31, (index) => (index+1).toString());

  List<String> yearList = List.generate(100, (index) =>( DateTime.now().year-99+index).toString());

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    print(dateList);
    print(yearList);
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: CustomAppbar(
          title: MyStrings.invite,
          backIcon: true,
        ),
      ),
    );
  }
}
