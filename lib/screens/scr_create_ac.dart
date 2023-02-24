import 'package:chopper/chopper.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:samapp/screens/index.dart';
import 'package:samapp/widgets/index.dart';
import 'package:provider/provider.dart';

import 'package:progress_dialog/progress_dialog.dart';
import '../data/post_api_service.dart';
import '../model/mod_otp_request.dart';
import '../utils/sharedpreference.dart';
import '../utils/util.dart';

class ScreenCreateAccount extends StatelessWidget{
 final phone = TextEditingController();
  @override
  Widget build(BuildContext context) {
    ThemeData _theme = Theme.of(context);
    return Scaffold(
      backgroundColor: _theme.scaffoldBackgroundColor,
      appBar: AppBar(
        leading: WBackButton(),
        elevation: 0,
        title: Text('Create your account'.toUpperCase(), style: TextStyle(color: Colors.black, fontWeight: FontWeight.bold, fontSize: 16.0)),
      ),
      body: Container(
        padding: EdgeInsets.symmetric(horizontal: 35.0),
        child: Column(
          mainAxisSize: MainAxisSize.min,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Padding(padding: EdgeInsets.only(top: 20.0, bottom: 25.0, left: 5.0),
              child: Text('Phone Number', style: _theme.textTheme.labelMedium,),),
            TextFormField(
              controller: phone,
              cursorColor: _theme.primaryColor,
              style: _theme.textTheme.bodyText1,
              decoration: InputDecoration(
                prefixStyle: TextStyle(fontSize: 5.0),
                //prefixIcon: Icon(Icons.text_fields_sharp),
                hintText: '+255 757 627 048',
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
            SizedBox(height: 30.0,),
            ElevatedButton( onPressed: (){

              /**
                  var _otp = OtpRequest.request(phone.text);
                  _requestOtpToken(context, _otp);
                  **/



              Navigator.of(context).push(MaterialPageRoute<void>(
                  builder: (BuildContext context) => ScreenVerifyNumber(),
                ),
              );

            }, child: Text('Send Verification'.toUpperCase()),
              style: Utils.coloredButtonStyleWithRadius(_theme.primaryColor, 25.0, elevation: 4.0 ),)
          ],
        ),
      )
    );
  }

 Future<void> _requestOtpToken(BuildContext context, OtpRequest request) async {
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
   Provider.of<PostApiService>(context, listen: false)
       .requestOtpToken(request);
   response.then((v) async => {
     print(v.body),
     statusCode = v.statusCode,
     if (v.isSuccessful)
       {
         if (statusCode == 200)
           {
             await sp.setStringToSF(enumKey.PHONE_NUMBER.name, request.phone!),
             pr.hide(),
             Navigator.pushReplacement<void, void>(
   context,
   MaterialPageRoute<void>(
   builder: (BuildContext context) => ScreenVerifyNumber(),
   ),
   )
           }
       }
   });
 }



}