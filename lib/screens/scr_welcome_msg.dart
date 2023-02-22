import 'package:flutter/material.dart';
import 'package:samapp/screens/index.dart';

import '../utils/colors.dart';
import '../utils/navigation_service.dart';

class ScreenWelcomeMessage extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    ThemeData _theme = Theme.of(context);
    // TODO: implement build
    return Scaffold(
      backgroundColor: _theme.primaryColor,
      body:Stack(
        children: <Widget>[
          Positioned(
            top: 100,
            right: 30,
            height: 60,
            width: 100,
            child: ElevatedButton(
              onPressed: (){
               Navigator.of(context).push(MaterialPageRoute<void>(
                    builder: (BuildContext context) => ScreenCreateAccount(),
                  ),
                );
              },
                child: Text(
                  'Next'.toUpperCase(),
                  style: TextStyle(color: Colors.black),
                ),
                style: ButtonStyle(
                    padding: MaterialStateProperty.all(
                        EdgeInsets.symmetric(
                            vertical: 15.0)),
                    minimumSize: MaterialStateProperty.all(
                        Size(double.infinity, 0)),
                    backgroundColor:
                    MaterialStateProperty.all(Colors.white),
                    shape: MaterialStateProperty.all(
                        RoundedRectangleBorder(
                            borderRadius: BorderRadius.all(
                                Radius.circular(40.0)),
                            side: BorderSide(
                                color: colorPrimary))),
                    elevation:
                    MaterialStateProperty.all(0.0))
            ),
          ),
          new Positioned(
            bottom: 60.0,
            child: new Align(
                alignment: FractionalOffset.bottomCenter,
                widthFactor: 1.5,
                child: Text('Lorem Ipsum dolor sit \n amet, consectetur \n adispicing elit,',
                  textAlign: TextAlign.center,
                  style: TextStyle(fontWeight: FontWeight.bold, fontSize: 26.0, color: Colors.white),)
            ),
          ),
        ],
      ),


    );
  }

}