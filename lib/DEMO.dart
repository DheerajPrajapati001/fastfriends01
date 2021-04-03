import 'package:fastfriends/ui/custom_widgets/big_button.dart';
import 'package:fastfriends/ui/custom_widgets/blue_button.dart';
import 'package:fastfriends/ui/custom_widgets/custom_app_bar.dart';
import 'package:fastfriends/ui/custom_widgets/text_field1.dart';
import 'package:fastfriends/ui/custom_widgets/text_field2.dart';
import 'package:fastfriends/ui/custom_widgets/upper_container.dart';
import 'package:fastfriends/utils/my_strings.dart';
import 'package:flutter/material.dart';

class Demo extends StatelessWidget {
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
