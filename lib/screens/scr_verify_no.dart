import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:samapp/screens/index.dart';
import 'package:samapp/widgets/index.dart';

import '../utils/colors.dart';
import '../utils/util.dart';

class ScreenVerifyNumber extends StatelessWidget{
  final controller = TextEditingController();
  @override
  Widget build(BuildContext context) {
    ThemeData _theme = Theme.of(context);
    return Scaffold(
        backgroundColor: scaffoldBackgroundColor,
        appBar: AppBar(
          leading: WBackButton(),
          elevation: 0,
          title: Text('Verify your number'.toUpperCase(), style: TextStyle(color: Colors.white, fontWeight: FontWeight.bold, fontSize: 16.0)),
        ),
        body: Container(
          padding: EdgeInsets.symmetric(horizontal: 35.0),
          child: Column(
            mainAxisSize: MainAxisSize.min,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Padding(padding: EdgeInsets.only(top: 20.0, bottom: 25.0, left: 5.0),
                child: Text('One time password', style: _theme.textTheme.labelMedium,),),
              TextFormField(
                controller: controller,
                cursorColor: _theme.primaryColor,
                style: _theme.textTheme.bodyText1,
                decoration: Utils.inputDecorationFromUtil(_theme, '+255 757 627 048'),
                onChanged: (String? value) {
                },
                validator: (value) {
                  if ( value == null || value.isEmpty) {
                    return 'Field is required';
                  }
                  return null;
                },
              ),
              SizedBox(height: 30.0,),

              ElevatedButton(
                onPressed: (){
                 Navigator.of(context).push( MaterialPageRoute<void>(
                    builder: (BuildContext context) => ScreenAccountDetails(),
                  ));
                },
                child: Text(
                    'Next'.toUpperCase(),
                  style: TextStyle(
                      color: Colors.white
                  ),
                ),
                style: Utils.coloredButtonStyleWithRadius(_theme.primaryColor, 25.0, elevation: 4.0 ),)
            ],
          ),
        )
    );
  }

}