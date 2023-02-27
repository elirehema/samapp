import 'package:chopper/chopper.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:samapp/screens/index.dart';
import 'package:samapp/utils/text_style.dart';
import 'package:samapp/widgets/index.dart';
import 'package:provider/provider.dart';

import 'package:progress_dialog/progress_dialog.dart';
import '../../data/post_api_service.dart';
import '../../model/mod_otp_request.dart';
import '../../utils/colors.dart';
import '../../utils/sharedpreference.dart';
import '../../utils/util.dart';

class ScreenCreateAccount extends StatelessWidget{
 final phone = TextEditingController();
  @override
  Widget build(BuildContext context) {
    ThemeData _theme = Theme.of(context);
    return Scaffold(
      backgroundColor: scaffoldBackgroundColor,

      body: SingleChildScrollView(
        child: Column(
          children: [

            SizedBox(height: 20,),

            Padding(
              padding: const EdgeInsets.all(18.0),
              child: Align(
                alignment: Alignment.topRight,
                child: Icon(
                  Icons.language_rounded,
                  color: Colors.blue,
                ),
              ),
            ),

            SizedBox(height: 150.0,),

            Padding(
              padding: const EdgeInsets.all(10.0),
              child: Text(
                "Register",
                style: kBoldTitleTextStyle2,
              ),
            ),

            Padding(
              padding: const EdgeInsets.only(left: 20, right: 20),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.start,
                crossAxisAlignment: CrossAxisAlignment.start,
                mainAxisSize: MainAxisSize.min,
                children: [

                  TextFormField(
                    // controller: username,
                    textInputAction: TextInputAction.next,
                    cursorColor: Colors.black,
                    style: kTextStyle,
                    enableSuggestions: false,
                    autocorrect: false,
                    decoration: InputDecoration(
                      contentPadding: EdgeInsets.symmetric(vertical: 9, horizontal: 5),
                      prefixIcon: Icon(
                        Icons.person_rounded,
                        color: Colors.black87.withOpacity(0.3),
                        size: 18,
                      ),
                      hintText: 'Name',
                      hintStyle: TextStyle(
                        fontFamily: kMainFont,
                        color: Colors.black87.withOpacity(0.3),
                        fontSize: 13,
                      ),

                      enabledBorder: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(12),
                        borderSide: BorderSide(
                            color: Colors.blue,
                            width: 1.1
                        ),
                      ),
                      focusedBorder: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(12),
                        borderSide: BorderSide(
                            color: Colors.blue,
                            width: 1.15
                        ),
                      ),
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

                  TextFormField(
                    // controller: username,
                    textInputAction: TextInputAction.next,
                    cursorColor: Colors.black,
                    style: kTextStyle,
                    enableSuggestions: false,
                    autocorrect: false,
                    decoration: InputDecoration(
                      contentPadding: EdgeInsets.symmetric(vertical: 9, horizontal: 5),
                      prefixIcon: Icon(
                        Icons.email_rounded,
                        color: Colors.black87.withOpacity(0.3),
                        size: 18,
                      ),
                      hintText: 'Email',
                      hintStyle: TextStyle(
                        fontFamily: kMainFont,
                        color: Colors.black87.withOpacity(0.3),
                        fontSize: 13,
                      ),

                      enabledBorder: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(12),
                        borderSide: BorderSide(
                            color: Colors.blue,
                            width: 1.1
                        ),
                      ),
                      focusedBorder: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(12),
                        borderSide: BorderSide(
                            color: Colors.blue,
                            width: 1.15
                        ),
                      ),
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

                  TextFormField(
                    textInputAction: TextInputAction.next,
                    cursorColor: _theme.primaryColor,
                    style: kTextStyle,
                    enableSuggestions: false,
                    autocorrect: false,
                    decoration: InputDecoration(
                      contentPadding: EdgeInsets.symmetric(vertical: 9, horizontal: 5),
                      hintText: 'Phone No...',
                      hintStyle: TextStyle(
                        fontFamily: kMainFont,
                        color: Colors.black87.withOpacity(0.3),
                        fontSize: 13,
                      ),
                      prefixIcon: Icon(
                        Icons.phone,
                        color: Colors.black87.withOpacity(0.3),
                        size: 18,
                      ),
                      enabledBorder: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(12),
                        borderSide: BorderSide(
                            color: Colors.blue,
                            width: 1.1
                        ),
                      ),
                      focusedBorder: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(12),
                        borderSide: BorderSide(
                            color: Colors.blue,
                            width: 1.15
                        ),
                      ),
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

                  ElevatedButton(
                    child: Container(
                      height: 20,
                      child: Center(
                        child: NormalTextWidget(
                          text: 'Create Account',
                          color: Colors.white,
                        ),
                      ),
                    ),
                    style: ButtonStyle(
                      foregroundColor: MaterialStateProperty.all<Color>(Colors.white),
                      backgroundColor: MaterialStateProperty.all<Color>(Colors.blue),
                      // shape: MaterialStateProperty.all<
                      //     RoundedRectangleBorder>(
                      //     RoundedRectangleBorder(
                      //         borderRadius: BorderRadius.circular(30.0),
                      //         side: BorderSide(
                      //           color: Colors.black,
                      //         )
                      //     )
                      // )
                    ),
                    onPressed: () async{
                      /**
                          var _otp = OtpRequest.request(phone.text);
                          _requestOtpToken(context, _otp);
                       **/



                      Navigator.of(context).push(MaterialPageRoute<void>(
                        builder: (BuildContext context) => ScreenVerifyNumber(),
                      ),
                      );
                    },
                  ),

                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Text(
                          "Already have an account?",
                          style: kTextStyle,
                        ),

                        TextButton(
                          onPressed: () {
                            Navigator.of(context).pushReplacement(MaterialPageRoute(builder: (context) => ScreenLogin()));
                          },
                          style: TextButton.styleFrom(
                            padding: EdgeInsets.zero,
                            visualDensity: VisualDensity(horizontal: -2, vertical: -4),
                            primary: Colors.black.withOpacity(0.2),
                          ),
                          child:  Text(
                            "Login",
                            style: kBoldTextStyle,
                          ),
                        ),

                        Text(
                          "now",
                          style: kTextStyle,
                        ),
                      ],
                    ),
                  ),
                ],
              ),
            ),

          ],
        ),
      ),
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