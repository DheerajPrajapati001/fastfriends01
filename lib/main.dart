import 'package:fastfriends/DEMO.dart';
import 'package:fastfriends/buttons.dart';
import 'package:fastfriends/fonts_test.dart';
import 'package:fastfriends/ui/screens/add_friends/add_friends.dart';
import 'package:fastfriends/ui/screens/chat/chat.dart';
import 'package:fastfriends/ui/screens/create_account/create_account.dart';
import 'package:fastfriends/ui/screens/create_event/create_event.dart';
import 'package:fastfriends/ui/screens/edit_profile/edit_profile.dart';
import 'package:fastfriends/ui/screens/hangout%20_has_ended/hangout%20_has_ended.dart';
import 'package:fastfriends/ui/screens/history/history.dart';
import 'package:fastfriends/ui/screens/invite_friends/invite_friends.dart';
import 'package:fastfriends/ui/screens/login/login.dart';
import 'package:fastfriends/ui/screens/match_me/match_me.dart';
import 'package:fastfriends/ui/screens/my_events/my_events.dart';
import 'package:fastfriends/ui/screens/my_friends_events/my_friends_event.dart';
import 'package:fastfriends/ui/screens/others_preview/others_preview.dart';
import 'package:fastfriends/ui/screens/phone_number/phone_number.dart';
import 'package:fastfriends/ui/screens/pop_ups/pop_ups.dart';
import 'package:fastfriends/ui/screens/profile/profile.dart';
import 'package:fastfriends/ui/screens/rating/rating.dart';
import 'package:fastfriends/ui/screens/settings/settings.dart';
import 'package:fastfriends/ui/screens/suggestion/suggestion.dart';
import 'package:fastfriends/ui/screens/verify/verify.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData(
        fontFamily: 'Teko',
      ),
      debugShowCheckedModeBanner: false,
      home: Buttons(),
      routes: {
        'Page1': (context) => Login(),
        'Page2': (context) => PhoneNumber(),
        'Page3': (context) => Verify(),
        CreateAccount.route: (context) => CreateAccount(),
        'Page5': (context) => CreateEvent(),
        'Page6': (context) => MatchMe(),
        'Page7': (context) => InviteFriends(),
        'Page8': (context) => AddFriends(),
        'Page9': (context) =>  Chat(),
        'Page10': (context) => MyFriendsEvents(),
        'Page11': (context) => MyEvents(),
        'Page12': (context) => History(),
        'Page13': (context) => Profile(),
        'Page14': (context) => OtherPreview(),
        'Page15': (context) => EditProfile(),
        'Page16': (context) => Settings(),
        'Page17': (context) => Suggestion(),
        'Page18': (context) => Rating(),
        'Page19': (context) => PopUps(),
        'Page20': (context) => HangoutHasEnded(),
      },
    );
  }
}
