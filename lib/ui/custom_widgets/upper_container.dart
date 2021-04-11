import 'package:fastfriends/utils/my_colors.dart';
import 'package:flutter/material.dart';

class UpperContainer extends StatelessWidget {
  final String title;

  const UpperContainer({Key key, this.title,}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 170,
      width: MediaQuery.of(context).size.width,
      color: MyColors.blackCont,
      child: Column(
        children: [
          Padding(
            padding: const EdgeInsets.only(left: 10,top: 10),
            child: SafeArea(
              child: Row(
                children: [
                  Material(
                    child: InkWell(
                      onTap: (){},
                      splashColor: Colors.black,
                      radius: 500,
                      child: Icon(
                        Icons.arrow_back_ios,
                        color: Colors.white,
                      ),
                    ),
                    color: Colors.transparent,
                  ),
                ],
              ),
            ),
          ),
           SizedBox(
            height: MediaQuery.of(context).size.height*.017,
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
    );
  }
}
