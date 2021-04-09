import 'package:fastfriends/utils/my_colors.dart';
import 'package:flutter/material.dart';

class BigButton extends StatelessWidget {

  final String text;

  const BigButton({Key key, this.text}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 30),
      child: Container(
          height: MediaQuery.of(context).size.height*.09,
          decoration: BoxDecoration(
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
                child: Text(text,style: TextStyle(
                    fontFamily: 'Teko',
                  fontWeight: FontWeight.bold,color: Colors.white,
                  fontSize: MediaQuery.of(context).size.width*.08
                ),),
              ),
            ),
          )),
    );
  }
}
