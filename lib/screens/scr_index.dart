import 'package:flutter/material.dart';
import 'package:samapp/utils/index.dart';

class ScreenIndex extends StatefulWidget{

  _IndexScreenState createState() => _IndexScreenState();
}
class _IndexScreenState extends State<ScreenIndex> {

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      resizeToAvoidBottomInset: true,
      body: Padding(
        padding: EdgeInsets.symmetric(horizontal: 35.0),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          mainAxisSize: MainAxisSize.max,
          children: [
            Expanded(child: Container()),
            Expanded(child: Center(child : Image(height: 90.0, width: 200.0, image: AssetImage('images/banner.png')))), // or "6" or "7"
            ElevatedButton(
                onPressed: (){
                  Navigator.of(context).pushReplacementNamed('/login');
                },
                child: Text('Log in'.toUpperCase(),),
              style: ButtonStyle(
                  padding:
                  MaterialStateProperty.all(EdgeInsets.symmetric(vertical: 25.0)),
                  minimumSize: MaterialStateProperty.all(Size(double.infinity, 0)),
                  backgroundColor: MaterialStateProperty.all(colorPrimary),
                  shape: MaterialStateProperty.all(RoundedRectangleBorder(
                      borderRadius: BorderRadius.all(Radius.circular(60.0)),
                      side: BorderSide(color: colorPrimary))),
                  elevation: MaterialStateProperty.all(2.0)),
            ),
            Expanded(child: Container()),

          ],
        ),
      ),
    );
  }


}

