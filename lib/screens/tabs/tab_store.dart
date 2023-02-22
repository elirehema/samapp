import 'package:flutter/material.dart';
import 'package:samapp/model/index.dart';

class TabStore extends StatelessWidget {
  final controller = TextEditingController();
  TabStore();

  @override
  Widget build(BuildContext context) {
    ThemeData _theme = Theme.of(context);
    return Scaffold(
      body: Padding(
        padding: EdgeInsets.symmetric(horizontal: 40.0, vertical: 40.0),
        child:  Column(
          mainAxisSize: MainAxisSize.max,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Padding(padding: EdgeInsets.only(top: 20.0, bottom: 20.0, left: 5.0),
              child: Text('Shop Name *', style: _theme.textTheme.labelMedium,),),
            TextFormField(
              controller: controller,
              cursorColor: _theme.primaryColor,
              style: _theme.textTheme.bodyText1,
              decoration: InputDecoration(
                prefixStyle: TextStyle(fontSize: 5.0),
                //prefixIcon: Icon(Icons.text_fields_sharp),
                hintText: 'Mangi Shop',
                errorStyle: TextStyle(color: Colors.redAccent, fontSize: 12.0),
                filled: true,
                contentPadding: EdgeInsets.symmetric(horizontal: 15.0, vertical: 18.0),
                fillColor: _theme.inputDecorationTheme.fillColor,
                border:  _theme.inputDecorationTheme.border,
                focusedBorder:  _theme.inputDecorationTheme.border,
                isDense: true,
              ),
              onChanged: (String? value) {
              },
              onSaved: (String? value) {
                print(value);
                // This optional block of code can be used to run
                // code when the user saves the form.
              },
              validator: (value) {
                if ( value == null || value.isEmpty) {
                  return 'Field is required';
                }
                return null;
              },
            ),
            SizedBox(height: 10.0,),
            Padding(padding: EdgeInsets.only(top: 20.0, bottom: 20.0, left: 5.0),
              child: Text('Shop Location', style: _theme.textTheme.labelMedium,),),
            TextFormField(
              controller: controller,
              cursorColor: _theme.primaryColor,
              style: _theme.textTheme.bodyText1,
              decoration: InputDecoration(
                prefixStyle: TextStyle(fontSize: 5.0),
                //prefixIcon: Icon(Icons.text_fields_sharp),
                hintText: 'Search Location',
                errorStyle: TextStyle(color: Colors.redAccent, fontSize: 12.0),
                filled: true,
                contentPadding: EdgeInsets.symmetric(horizontal: 15.0, vertical: 18.0),
                fillColor: _theme.inputDecorationTheme.fillColor,
                border:  _theme.inputDecorationTheme.border,
                focusedBorder:  _theme.inputDecorationTheme.border,
                isDense: true,
              ),
              onChanged: (String? value) {
              },
              onSaved: (String? value) {
                print(value);
                // This optional block of code can be used to run
                // code when the user saves the form.
              },
              validator: (value) {
                if ( value == null || value.isEmpty) {
                  return 'Field is required';
                }
                return null;
              },
            ),

          ],
        ),
      ),
    );
  }
}
