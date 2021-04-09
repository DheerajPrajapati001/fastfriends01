import 'package:fastfriends/utils/my_images.dart';
import 'package:flutter/material.dart';

class ActiveLog extends StatelessWidget {

  final String img;

  const ActiveLog({Key key, this.img}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(right: 10),
      child: Stack(
        children: [
          Container(
            width: MediaQuery.of(context).size.width*.15,
            height: 100,
            decoration: BoxDecoration(
              border: Border.all(
                color: Colors.white
              ),
              shape: BoxShape.circle,
              image: DecorationImage(
                image: AssetImage(img)
              )
            ),
          ),
          Positioned(
              right: 0,
              bottom: 5,
              child: Image.asset(MyImages.diamond,height: MediaQuery.of(context).size.height*.025,))
        ],
      ),
    );
  }
}
