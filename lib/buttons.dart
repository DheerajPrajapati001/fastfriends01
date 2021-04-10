import 'package:fastfriends/ui/screens/create_account/create_account.dart';
import 'package:flutter/material.dart';

class Buttons extends StatefulWidget {
  @override
  _ButtonsState createState() => _ButtonsState();
}

class _ButtonsState extends State<Buttons> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: Center(
        child: ListView(
          children: [
            Column(
              children: [
                SizedBox(height: 20,),
                // ignore: deprecated_member_use
                RaisedButton(onPressed: () {Navigator.pushNamed(context, 'Page1');},
                  child: Text('Page 1'),
                ),
                SizedBox(height: 10,),
                // ignore: deprecated_member_use
                RaisedButton(onPressed: () {Navigator.pushNamed(context, 'Page2');},
                  child: Text('Page 2'),
                ),
                SizedBox(height: 10,),
                // ignore: deprecated_member_use
                RaisedButton(onPressed: () {Navigator.pushNamed(context, 'Page3');},
                  child: Text('Page 3'),
                ),
                SizedBox(height: 10,),
                // ignore: deprecated_member_use
                RaisedButton(onPressed: () {Navigator.pushNamed(context, CreateAccount.route);},
                  child: Text('Page 4'),
                ),
                SizedBox(height: 10,),
                RaisedButton(onPressed: () {Navigator.pushNamed(context, 'Page5');},
                  child: Text('Page 5'),
                ),
                SizedBox(height: 10,),
                RaisedButton(onPressed: () {Navigator.pushNamed(context, 'Page6');},
                  child: Text('Page 6'),
                ),
                SizedBox(height: 10,),
                RaisedButton(onPressed: () {Navigator.pushNamed(context, 'Page7');},
                  child: Text('Page 7'),
                ),
                SizedBox(height: 10,),
                RaisedButton(onPressed: () {Navigator.pushNamed(context, 'Page8');},
                  child: Text('Page 8'),
                ),
                SizedBox(height: 10,),
                RaisedButton(onPressed: () {Navigator.pushNamed(context, 'Page9');},
                  child: Text('Page 9'),
                ),
                SizedBox(height: 10,),
                RaisedButton(onPressed: () {Navigator.pushNamed(context, 'Page10');},
                  child: Text('Page 10'),
                ),
                SizedBox(height: 10,),
                RaisedButton(onPressed: () {Navigator.pushNamed(context, 'Page11');},
                  child: Text('Page 11'),
                ),
                SizedBox(height: 10,),
                RaisedButton(onPressed: () {Navigator.pushNamed(context, 'Page12');},
                  child: Text('Page 12'),
                ),
                SizedBox(height: 10,),
                RaisedButton(onPressed: () {Navigator.pushNamed(context, 'Page13');},
                  child: Text('Page 13'),
                ),
                SizedBox(height: 10,),
                RaisedButton(onPressed: () {Navigator.pushNamed(context, 'Page14');},
                  child: Text('Page 14'),
                ),
                SizedBox(height: 10,),
                // ignore: deprecated_member_use
                RaisedButton(onPressed: () {Navigator.pushNamed(context, 'Page15');},
                  child: Text('Page 15'),
                ),
                SizedBox(height: 10,),
                // ignore: deprecated_member_use
                RaisedButton(onPressed: () {Navigator.pushNamed(context, 'Page16');},
                  child: Text('Page 16'),
                ),
                SizedBox(height: 10,),
                // ignore: deprecated_member_use
                RaisedButton(onPressed: () {Navigator.pushNamed(context, 'Page17');},
                  child: Text('Page 17'),
                ),
                SizedBox(height: 10,),
                // ignore: deprecated_member_use
                RaisedButton(onPressed: () {Navigator.pushNamed(context, 'Page18');},
                  child: Text('Page 18'),
                ),
                SizedBox(height: 10,),
                // ignore: deprecated_member_use
                RaisedButton(onPressed: () {Navigator.pushNamed(context, 'Page19');},
                  child: Text('Page 19'),
                ),
                SizedBox(height: 10,),
                // ignore: deprecated_member_use
                RaisedButton(onPressed: () {Navigator.pushNamed(context, 'Page20');},
                  child: Text('Page 20'),
                ),
                SizedBox(height: 10,),
                // ignore: deprecated_member_use
                RaisedButton(onPressed: () {Navigator.pushNamed(context, 'Page21');},
                  child: Text('Page 21'),
                ),
                SizedBox(height: 10,),
              ],
            ),
          ],
        ),
      ),
    );
  }
}