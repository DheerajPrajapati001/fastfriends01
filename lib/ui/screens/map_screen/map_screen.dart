import 'package:fastfriends/utils/my_images.dart';
import 'package:flutter/material.dart';
import 'package:flutter_google_maps/flutter_google_maps.dart';

class MapScreen extends StatefulWidget {
  @override
  _MapScreenState createState() => _MapScreenState();
}

class _MapScreenState extends State<MapScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        child: Stack(
          children: [
            GoogleMap(
              
            ),
            SafeArea(
              child: Column(
                children: [
                  Padding(
                    padding: const EdgeInsets.only(left: 10),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        CustomInkwell(
                          size: .07,
                          img: MyImages.locationSettings,
                        ),
                        Material(
                          color: Colors.transparent,
                          child: InkWell(
                            onTap: (){},
                            splashColor: Colors.black.withOpacity(0.2),
                            radius: 50,
                            child: Container(
                              height: MediaQuery.of(context).size.height*.08,
                              width: MediaQuery.of(context).size.width*.2,
                              decoration: BoxDecoration(
                                image: DecorationImage(
                                  image: AssetImage(MyImages.squareGirl)
                                ),
                                shape: BoxShape.circle,
                                border: Border.all(
                                  color: Colors.black,
                                  width: 2
                                )
                              ),
                            ),
                          ),
                        ),
                        CustomInkwell(
                          size: .12,
                          img: MyImages.hangout,
                        ),

                      ],
                    ),
                  ),
                  Spacer(),
                  Padding(
                    padding: const EdgeInsets.only(right: 15,left: 15,bottom: 10),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        CustomInkwell(
                          size: .07,
                          img: MyImages.link,
                        ),
                        CustomInkwell(
                          size: .05,
                          img: MyImages.location,
                        ),
                        CustomInkwell(
                          size: .07,
                          img: MyImages.addFriend,
                        )
                      ],
                    ),
                  )
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}




class CustomInkwell extends StatelessWidget {

  final String img;
  final double size;

  const CustomInkwell({Key key, this.img, this.size}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Material(
      color: Colors.transparent,
      child: InkWell(
          onTap: (){},
          splashColor: Colors.black.withOpacity(0.2),
          radius: 50,
          child: Image.asset(img,height: MediaQuery.of(context).size.height*size,)),
    );
  }
}

