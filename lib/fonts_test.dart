import 'package:flutter/material.dart';

class FontText extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Text('Hello',style: TextStyle(fontFamily: 'Teko',fontSize: 50)),
          Text('Hello',style: TextStyle(fontFamily: 'Teko',fontSize: 50)),
          Text('Hello',style: TextStyle(fontFamily: 'Teko',fontSize: 50)),
        ],
      ),
    );
  }
}
