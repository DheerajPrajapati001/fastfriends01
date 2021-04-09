import 'package:flutter/material.dart';

class SocialMediaCont extends StatelessWidget {
  final String img;

  const SocialMediaCont({Key key, this.img}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        shape: BoxShape.circle,
        color: Colors.white,
        border: Border.all(color: Colors.black),
      ),
      child: Padding(
        padding: const EdgeInsets.all(10),
        child: Center(
          child: Image.asset(
            img,
            height: MediaQuery.of(context).size.height * .03,
          ),
        ),
      ),
    );
  }
}
