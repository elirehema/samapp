import 'package:chopper/chopper.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:progress_dialog/progress_dialog.dart';
import 'package:provider/provider.dart';
import 'package:samapp/model/index.dart';
import 'package:samapp/screens/scr_home.dart';
import 'package:samapp/utils/index.dart';
import 'package:samapp/widgets/index.dart';

import '../data/post_api_service.dart';

class ScreenLogin extends StatelessWidget {
  var username,
      password = TextEditingController();

  @override
  Widget build(BuildContext context) {
    ThemeData _theme = Theme.of(context);
    return Scaffold(
      appBar: AppBar(
        elevation: 0,
        backgroundColor: _theme.primaryColor,
        leading: WBackButton(),
        actions: [
          Container(margin: EdgeInsets.only(right: 20),
            child: Icon(Icons.language_rounded),)
        ],
      ),
      body: Container(
        child: Card(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            crossAxisAlignment: CrossAxisAlignment.start,
            mainAxisSize: MainAxisSize.min,
            children: [
              Padding(
                padding: EdgeInsets.only(top: 20.0, bottom: 25.0, left: 5.0),
                child: Text('Username', style: _theme.textTheme.labelMedium,),),
              TextFormField(
                controller: username,
                cursorColor: _theme.primaryColor,
                style: _theme.textTheme.bodyText1,
                decoration: InputDecoration(
                  prefixStyle: TextStyle(fontSize: 5.0),
                  //prefixIcon: Icon(Icons.text_fields_sharp),
                  hintText: 'username',
                  errorStyle: TextStyle(
                      color: Colors.redAccent, fontSize: 12.0),
                  filled: true,
                  contentPadding: EdgeInsets.symmetric(
                      horizontal: 15.0, vertical: 18.0),
                  fillColor: _theme.inputDecorationTheme.fillColor,
                  border: _theme.inputDecorationTheme.border,
                  focusedBorder: _theme.inputDecorationTheme.border,
                  isDense: true,
                ),
                onChanged: (String? value) {},
                onSaved: (String? value) {
                  print(value);
                  // This optional block of code can be used to run
                  // code when the user saves the form.
                },
                validator: (value) {
                  if (value == null || value.isEmpty) {
                    return 'Field is required';
                  }
                  return null;
                },
              ),
              SizedBox(height: 30.0,),
              Padding(
                padding: EdgeInsets.only(top: 20.0, bottom: 25.0, left: 5.0),
                child: Text('Password', style: _theme.textTheme.labelMedium,),),
              TextFormField(
                controller: password,
                cursorColor: _theme.primaryColor,
                style: _theme.textTheme.bodyText1,
                decoration: InputDecoration(
                  prefixStyle: TextStyle(fontSize: 5.0),
                  //prefixIcon: Icon(Icons.text_fields_sharp),
                  hintText: '********',
                  errorStyle: TextStyle(
                      color: Colors.redAccent, fontSize: 12.0),
                  filled: true,
                  contentPadding: EdgeInsets.symmetric(
                      horizontal: 15.0, vertical: 18.0),
                  fillColor: _theme.inputDecorationTheme.fillColor,
                  border: _theme.inputDecorationTheme.border,
                  focusedBorder: _theme.inputDecorationTheme.border,
                  isDense: true,
                ),
                onChanged: (String? value) {},
                onSaved: (String? value) {
                  print(value);
                  // This optional block of code can be used to run
                  // code when the user saves the form.
                },
                validator: (value) {
                  if (value == null || value.isEmpty) {
                    return 'Field is required';
                  }
                  return null;
                },
              ),
              SizedBox(height: 30.0,),
              ElevatedButton(onPressed: () async{
                var request = AuthenticationRequest.from("root", "password");
                this._loginAuthenticate(context, request);
                /**
                Navigator.of(context).push(MaterialPageRoute<void>(
                  builder: (BuildContext context) => ScreenHome(),
                ),
                );
                **/
              }, child: Text('Continue'.toUpperCase()),
                style: Utils.coloredButtonStyleWithRadius(
                    _theme.primaryColor, 25.0, elevation: 4.0),)
            ],
          ),
        ),
      ),
    );
  }


  Future<void> _loginAuthenticate(BuildContext context,
      AuthenticationRequest request) async {
    var sp = SharedPreference.getInstance();
    int statusCode = 0;
    ProgressDialog pr = new ProgressDialog(context);

    pr.update(
      progress: 50.0,
      message: "Please wait...",
      progressWidget: Container(
          padding: EdgeInsets.all(8.0), child: CircularProgressIndicator()),
      maxProgress: 100.0,
      progressTextStyle: TextStyle(
          color: Colors.black, fontSize: 13.0, fontWeight: FontWeight.w400),
      messageTextStyle: TextStyle(
          color: Colors.black, fontSize: 19.0, fontWeight: FontWeight.w600),
    );
    pr.show();
    Future<Response> response =
    Provider.of<PostApiService>(context, listen: false).authenticate(request);
    response.then((v) async => {
      statusCode = v.statusCode,
      if (v.isSuccessful)
        {
          if (statusCode == 200)
            {
              pr.hide(),
              Navigator.pushReplacement<void, void>(
                context,
                MaterialPageRoute<void>(
                  builder: (BuildContext context) => ScreenHome(),
                ),
              )
            }
        }
    });
  }



}