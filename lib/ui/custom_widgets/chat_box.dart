import 'package:flutter/material.dart';

class ChatBox extends StatelessWidget {

  final String msg;

  const ChatBox({Key key, this.msg}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      height: MediaQuery.of(context).size.height*.07,
      width: MediaQuery.of(context).size.width*.53,
      decoration: BoxDecoration(
        color: Colors.white,
        boxShadow: [
          BoxShadow(
            color: Colors.grey.withOpacity(0.1),
            blurRadius: 5,
            spreadRadius: 5,
            offset: Offset(2,2)
          )
        ]
      ),
      child: Center(
        child: Text(msg),
      ),
    );
  }
}
