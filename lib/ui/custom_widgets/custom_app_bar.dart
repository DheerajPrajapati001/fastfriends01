import 'package:fastfriends/utils/my_colors.dart';
import 'package:flutter/material.dart';

class CustomAppbar extends StatelessWidget {
  final String title;
  final bool backIcon;

  const CustomAppbar({Key key, this.title, this.backIcon}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      height: MediaQuery.of(context).size.height * .11,
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
                  size: MediaQuery.of(context).size.width*.04,
                  color: (backIcon==null || backIcon==false)?Colors.transparent:Colors.white,
                ),
              ],
            ),
          ),
          Text(
            title,
            style: TextStyle(
                color: Colors.white,
                fontSize: MediaQuery.of(context).size.width*.1
            ),
          ),
        ],
      ),
    );
  }
}
