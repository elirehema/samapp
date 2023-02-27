import 'package:flutter/material.dart';

const String kMainFont = "Brand-Regular";
const String kMainBoldFont = "Brand-Bold";

// Text Style
TextStyle kTextStyle = TextStyle(
    fontSize: 13,
    color: Colors.black,
    fontFamily: kMainFont
);

TextStyle kBoldTextStyle = TextStyle(
    fontSize: 15,
    color: Colors.black,
    fontFamily: kMainBoldFont
);

TextStyle kBoldTextStyle2 = TextStyle(
    fontSize: 14,
    color: Colors.black,
    fontFamily: kMainBoldFont
);

TextStyle kBoldTitleTextStyle = TextStyle(
    fontSize: 16,
    color: Colors.black,
    fontFamily: kMainBoldFont
);
TextStyle kBoldTitleTextStyle2 = TextStyle(
    fontSize: 17,
    color: Colors.black,
    fontFamily: kMainBoldFont
);

class NormalTextWidget extends StatelessWidget {
  final text;
  final color;

  NormalTextWidget({
    this.text,
    this.color,
  });

  @override
  Widget build(BuildContext context) {
    return Text(
      text,
      style: TextStyle(
          fontFamily: kMainFont,
          fontSize: 13.0,
          color: color
      ),
    );
  }
}

class BoldTextWidget extends StatelessWidget {
  final text;
  final color;

  BoldTextWidget({
    this.text,
    this.color,
  });

  @override
  Widget build(BuildContext context) {
    return Text(
      text,
      style: TextStyle(
          fontFamily: kMainBoldFont,
          fontSize: 15.0,
          color: color
      ),
    );
  }
}

class BoldTextWidget2 extends StatelessWidget {
  final text;
  final color;

  BoldTextWidget2({
    this.text,
    this.color,
  });

  @override
  Widget build(BuildContext context) {
    return Text(
      text,
      style: TextStyle(
          fontFamily: kMainBoldFont,
          fontSize: 13.0,
          color: color
      ),
    );
  }
}