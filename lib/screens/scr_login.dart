import 'package:chopper/chopper.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:progress_dialog/progress_dialog.dart';
import 'package:provider/provider.dart';
import 'package:samapp/model/index.dart';
import 'package:samapp/screens/scr_create_ac.dart';
import 'package:samapp/screens/scr_home.dart';
import 'package:samapp/screens/scr_login_email.dart';
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
                  color: colorPrimary,
                ),
              ),
            ),

            SizedBox(height: 150.0,),

            Padding(
              padding: const EdgeInsets.all(10.0),
              child: Text(
                "Login",
                style: TextStyle(
                    fontWeight: FontWeight.bold,
                    fontSize: 15.0,
                    color: Colors.black
                ),
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
                    textInputAction: TextInputAction.next,
                    cursorColor: _theme.primaryColor,
                    style: TextStyle(
                      color: Colors.black,
                      fontSize: 13,
                    ),
                    enableSuggestions: false,
                    autocorrect: false,
                    decoration: InputDecoration(
                      contentPadding: EdgeInsets.symmetric(vertical: 9, horizontal: 5),
                      hintText: 'Phone No...',
                      hintStyle: TextStyle(
                        color: Colors.black87.withOpacity(0.3),
                        fontSize: 13,
                      ),
                      prefixIcon: Icon(
                          Icons.phone,
                        color: Colors.black87.withOpacity(0.3),
                        size: 18,
                      ),
                      suffixIcon: IconButton(
                        icon: Icon(
                          Icons.send,
                          color: _theme.primaryColor,
                          size: 18,
                        ),

                        onPressed: (){
                          var request = AuthenticationRequest.from("root", "password");
                          this._loginAuthenticate(context, request);
                          /**
                              Navigator.of(context).push(MaterialPageRoute<void>(
                              builder: (BuildContext context) => ScreenHome(),
                              ),
                              );
                           **/
                        },
                      ),
                      enabledBorder: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(12),
                        borderSide: BorderSide(
                            color: _theme.primaryColor,
                            width: 1.1
                        ),
                      ),
                      focusedBorder: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(12),
                        borderSide: BorderSide(
                            color: _theme.primaryColor,
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

                  SizedBox(height: 10.0,),

                  Divider(color: _theme.primaryColorLight,),

                  SizedBox(height: 25.0,),

                  ElevatedButton(
                      child: Container(
                        height: 20,
                        child: Center(
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              Icon(
                                Icons.email_outlined,
                                color: Colors.white,
                                size: 18,
                              ),

                              SizedBox(width: 5,),

                              Text('Login with email'),
                            ],
                          ),
                        ),
                      ),
                      style: ButtonStyle(
                          foregroundColor: MaterialStateProperty.all<Color>(Colors.white),
                          backgroundColor: MaterialStateProperty.all<Color>(_theme.primaryColor),
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
                    onPressed: () async {
                      Navigator.of(context).push(MaterialPageRoute(builder: (
                          context) => ScreenLoginEmail()));
                    }
                  )
                ],
              ),
            ),

            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text(
                      "Don't have an account?",
                    style: TextStyle(
                        color: Colors.black
                    ),
                  ),

                  TextButton(
                    onPressed: () {
                      Navigator.of(context).push(MaterialPageRoute(builder: (
                          context) => ScreenCreateAccount()));
                    },
                    style: TextButton.styleFrom(
                      padding: EdgeInsets.zero,
                      visualDensity: VisualDensity(horizontal: -2, vertical: -4),
                      primary: Colors.black.withOpacity(0.2),
                    ),
                    child:  Text(
                      "Register",
                      style: TextStyle(
                        fontWeight: FontWeight.bold,
                        fontSize: 13.0,
                        color: Colors.black
                    ),
                    ),
                  ),

                  Text(
                    "now",
                    style: TextStyle(
                        color: Colors.black
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