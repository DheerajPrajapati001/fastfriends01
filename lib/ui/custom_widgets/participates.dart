import 'package:flutter/material.dart';

class Participates extends StatelessWidget {

  final String img;

  const Participates({Key key, this.img}) : super(key: key);


  @override
  Widget build(BuildContext context) {
    return Container(
      width: MediaQuery.of(context).size.width*.1,
      height: MediaQuery.of(context).size.height*.045,
      decoration: BoxDecoration(
          // boxShadow: [
          //   BoxShadow(
          //       color: Colors.black.withOpacity(0.1),
          //       offset: Offset(3,3),
          //       blurRadius: 7,
          //       spreadRadius: 5
          //   )
          // ],
          border: Border.all(
              color: Colors.blue,
            width: 2
          ),
          shape: BoxShape.circle,
          image: DecorationImage(
              image: AssetImage(img)
          )
      ),
    );
  }
}
