import 'dart:developer';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:intro_slider/intro_slider.dart';
import 'package:samapp/screens/index.dart';
import 'package:samapp/utils/colors.dart';

import '../utils/text_style.dart';

class ScreenWelcomeSlider extends StatefulWidget{

  IntroSliderState createState()=> new IntroSliderState();
}

class IntroSliderState extends State<ScreenWelcomeSlider>{
  List<ContentConfig> contents = [];
  @override
  void initState() {
    contents.add(
      ContentConfig(
        title: "Monitor your LPG Tanks !",
        description:
        "Our smart gas monitor which synchronizes remotely to the Gas App ensures that your are constantly aware of the gas level in your cylinder",
        //pathImage: "images/lpg.png",
        centerWidget:  CircleAvatar(
          backgroundColor: Colors.blue,
          radius: 73,
          child: CircleAvatar(
            radius: 71,
            backgroundColor: scaffoldBackgroundColor,
            backgroundImage:  AssetImage('images/lpg.png',),
          ),
        ),//Image.asset("images/lpg.png"),
        backgroundColor: scaffoldBackgroundColor,
        styleDescription: kTextStyle,
        styleTitle: kBoldTitleTextStyle2
      ),
    );
    contents.add(
      ContentConfig(
        title: "Request for LPG Refill",
        description:
        "Request LPG and get it delivered at your doorsteps!",
          centerWidget:  CircleAvatar(
        backgroundColor: Colors.blue,
        radius: 73,
        child: CircleAvatar(
          radius: 71,
          backgroundColor: scaffoldBackgroundColor,
          backgroundImage:  AssetImage('images/delivery.jpeg',),
        ),
      ), //Image.asset("images/delivery.jpeg"),
        backgroundColor: Colors.white,
          styleDescription: kTextStyle,
          styleTitle: kBoldTitleTextStyle2
      ),
    );
    contents.add(
      ContentConfig(
          title: "Detect LPG Leakages",
          description:
          "Our smart gas leakage detector ensures the safety of your home. This device cuts off gas supply when the leakage is detected and sends notification to the user",
          //pathImage: "images/lpg.png",
          centerWidget:  CircleAvatar(
            backgroundColor: Colors.blue,
            radius: 73,
            child: CircleAvatar(
              radius: 71,
              backgroundColor: scaffoldBackgroundColor,
              backgroundImage:  AssetImage('images/leakage.png',),
            ),
          ), //Image.asset("images/leakage.png",),
          backgroundColor: scaffoldBackgroundColor,
          styleDescription: kTextStyle,
          styleTitle: kBoldTitleTextStyle2
      ),
    );
    contents.add(
       ContentConfig(
        title: "LPG Consumption Reports",
        description:
        "With Gas App, users can now have access to daily, monthly and yearly gas consumption data.",
        //pathImage: "images/icon.png",
           centerWidget:  CircleAvatar(
             backgroundColor: Colors.blue,
             radius: 73,
             child: CircleAvatar(
               radius: 71,
               backgroundColor: scaffoldBackgroundColor,
               backgroundImage:  AssetImage('images/report.png',),
             ),
           ), //  Image.asset("images/report.png", width: 300, height: 300,),
          backgroundColor: scaffoldBackgroundColor,
           styleDescription: kTextStyle,
           styleTitle: kBoldTitleTextStyle2
      ),
    );
    super.initState();
  }
  void onDonePress(){
    log('End of process');
    Navigator.of(context).push( MaterialPageRoute<void>(
      builder: (BuildContext context) => ScreenLogin(),
    ));
  }
  @override
  Widget build(BuildContext context) {
    return IntroSlider(
      key: UniqueKey(),
      listContentConfig: contents,
      indicatorConfig: IndicatorConfig(
        colorIndicator: Colors.lightBlue,
        colorActiveIndicator: Colors.blue
      ),
      skipButtonStyle: ButtonStyle(
        textStyle: MaterialStateProperty.all<TextStyle>(kBoldTextStyle),
        foregroundColor: MaterialStateProperty.all<Color>(Colors.blue),
        // backgroundColor: MaterialStateProperty.all<Color>(Colors.blue),
      ),
      nextButtonStyle: ButtonStyle(
        textStyle: MaterialStateProperty.all<TextStyle>(kBoldTextStyle),
        foregroundColor: MaterialStateProperty.all<Color>(Colors.blue),
        // backgroundColor: MaterialStateProperty.all<Color>(Colors.blue),
      ),
      doneButtonStyle: ButtonStyle(
        textStyle: MaterialStateProperty.all<TextStyle>(kBoldTextStyle),
        foregroundColor: MaterialStateProperty.all<Color>(Colors.blue),
        // backgroundColor: MaterialStateProperty.all<Color>(Colors.blue),
      ),
      onDonePress: onDonePress,
    );
  }
}