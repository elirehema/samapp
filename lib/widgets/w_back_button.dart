import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:samapp/utils/colors.dart';

class WBackButton extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    ThemeData _theme = Theme.of(context);
    return GestureDetector(
      onTap: () => Navigator.of(context).pop(),
      child: Icon(Icons.arrow_back_ios_new_rounded, color: _theme.primaryColor,),

    );
  }

}