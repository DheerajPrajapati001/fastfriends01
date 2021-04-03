import 'package:fastfriends/utils/my_colors.dart';
import 'package:flutter/material.dart';

class UpperContainer extends StatelessWidget {
  final String title;

  const UpperContainer({Key key, this.title,}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Container(
        height: MediaQuery.of(context).size.height * .18,
        width: MediaQuery.of(context).size.width,
        color: MyColors.blackCont,
        child: Column(
          children: [
            Padding(
              padding: const EdgeInsets.only(left: 10,top: 10),
              child: Row(
                children: [
                  Icon(
                    Icons.arrow_back_ios,
                    color: Colors.white,
                  ),
                ],
              ),
            ),
            const SizedBox(
              height: 10,
            ),
            Text(
              title,
              style: TextStyle(
                color: Colors.white,
                fontSize: MediaQuery.of(context).size.width*.15
              ),
            ),
          ],
        ),
      ),
    );
  }
}
