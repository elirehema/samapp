import 'dart:async';
import 'package:samapp/utils/index.dart';
import 'package:flutter/material.dart';


class SplashScreen extends StatefulWidget {
  @override
  _SplashScreenState createState() => new _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {

  startTime() async {
    var _duration = new Duration(seconds: 7);
    return new Timer(_duration,  navigationPage);
  }
  Future<void>  navigationPage() async{
      SharedPreference sharedPref = SharedPreference.getInstance();
      bool isLoggedIn = await sharedPref.getBoolValuesSF(enumKey.IS_LOGGED_IN.toString()) ?? false;
      bool hasPasscode = await sharedPref.contain(securityEnum.PASSCODE.toString());
      print(isLoggedIn && hasPasscode);
      if(isLoggedIn && hasPasscode){
        print('Logged In');
        Navigator.of(context).pushReplacementNamed('/craccount');
      }else{
        print('Not Logged In');
        Navigator.of(context).pushReplacementNamed('/craccount');
      }
 
    
  }

  @override
  Widget build(BuildContext context) {
    ThemeData _theme = Theme.of(context);
    return new Scaffold(
      backgroundColor: _theme.backgroundColor,
      body: new Center(
        child: Column(
          mainAxisSize: MainAxisSize.min,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Image.asset(
              'images/banner.png',
              width: 200.0,
              height: 94.0,
            ),
          ],
        ),
      ),
      bottomNavigationBar: Padding(
        padding: EdgeInsets.symmetric(horizontal: 100.0, vertical: 20.0),
        child: LinearProgressIndicator(
          backgroundColor: green1,
          valueColor: AlwaysStoppedAnimation(colorPrimary),
          minHeight: 5,
        ),) ,
    );
  }

  @override
  void initState() {
    super.initState();
    startTime();
  }
}
