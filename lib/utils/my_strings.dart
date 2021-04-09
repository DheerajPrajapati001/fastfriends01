import 'package:fastfriends/utils/my_colors.dart';
import 'package:flutter/cupertino.dart';

class MyStrings {
  static String droppin = "DROPPIN";
  static String userName = "Username";
  static String password = "Password";
  static String login = "LOGIN";
  static String forgotPass = "Forgot Password?";
  static String createAccount = "Create an account";
  static String phone = "Phone Number";
  static String enter = "Enter";
  static String fullName = "Full Name";
  static String month = "Month";
  static String day = "Day";
  static String year = "Year";
  static String gender = "Gender";
  static String email = "Email";
  static String signMe = "sign me up for notifications";
  static String bySigning = "By Signing up You Agree To The";
  static String termsAgreement = "Terms & Agreement";
  static String singUp = "Sign Up";
  static String pinDropped = "Pin Dropped at";
  static String silveradoSkies = "21 Silverado skies dr sw";
  static String details = "DETAILS";
  static String matchMe = "Match  Me";
  static String yourGroup = " Your Group size";
  static String inviteFrd = "Invite Friends";
  static String lookingFor = "Looking For";
  static String to = "To";
  static String ageRange = "Age Range";
  static String minimumAge  = "minimum age";
  static String maximumAge  = "maximum age";
  static String dateTime = "Time and Date";
  static String start = "Start";
  static String end = "End";
  static String date = "Date";
  static String startEvent = "Start Event";
  static String apply = "Apply";
  static String reset = "Reset";
  static String distance  = "Distance ";
  static String verify = "Verify";
  static String code = "Code";
  static String aVerification = "A verification has been sent to the number. Please enter your code to create your account";
  static String invite = "Invite";
  static String events = "Events";
  static String friends = "Friends";
  static String yourHangouts = "Your Hangouts";
  static String past = "Past";
  static String rate = "Rate";
  static String chatRoom = "Chat Room";
  static String profilePreview = "Profile Preview";
  static String iAmAstrologist = """I am Astrologist Mona Megistus, meaning \"The Great Astrologist Mona.\" If it is divination you seek from me, then I ask you respect my name by learning it wholly, here and now.""";
  static String karma = "Karma";
  static String level6 = "Level 6";
  static String history = "History";
  static String editProfile = "Edit Profile";
  static String report = "Report";
  static String settings = "Settings";
  static String done = "Done";
  static String account = "Account Settings";
  static String phoneNo = "Phone Number";
  static String socialLinks = "Social Links";
  static String privacy = "Privacy";
  static String whoCanSee = "Who Can See My Events";
  static String everyone = "everyone";
  static String ghostMode = "Ghost Mode";
  static String hidesLocation = "Hides Location During Events ";
  static String notification = "Notification";
  static String pushNotifications = "Push Notifications";
  static String feedback = "Feedback";
  static String suggestions = "Suggestions";
  static String reportAnIssue = "Report An Issue";
  static String contactSupport = "Contact Support";
  static String deleteAccount = "Delete Account";
  static String logOut = "Log Out";
  static String weWouldLike = "We would like to hear back from you! Please leave us any feedback or suggestions down below.";
  static String thankYou = "Thank you, your request has been received";
  static String submit = "Submit";
  static String friendPhoneNo = "Enter friends phone number";
  static String friendRequestSend = "Friend Request Sent";
  static String finishHangout = "Finish Hangout";
  static String rating = "Rating";
  static String uploadPhotos = "Upload Photo's";
  static String summary = "Summary";
  static String addBio = "Add Bio (Max 300)";
  static String status = "Status";
  static String monaHangout = "Mona's Hangout";
  static String hudsonPub = "Hudson's Pub";
  static String monaWouldLike = "Mona would like to join your Party";
  static String accept = "Accept";
  static String decline = "Decline";
  static String hangoutHas  = "Hangout Has Ended";
  static String enterFrndPhone  = "Enter friends phone number";
//  static String   = "Hangout Has Ended";
}

class MyStyles{

  semiBoldStyle(Color txtColor,double size)
  {
    return TextStyle(fontWeight: FontWeight.w500,color: txtColor==null?MyColors.blackCont:txtColor,fontSize: size==null?15:size);
  }
}