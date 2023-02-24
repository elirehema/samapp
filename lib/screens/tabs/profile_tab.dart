import 'package:flutter/material.dart';


class ProfileTab extends StatelessWidget {
  @override
  Widget build(BuildContext context)
  {
    return Scaffold(
      backgroundColor: Colors.white,
      body: Container(
          color: Colors.white,
          child: Center(
              child: Text(
                'Profile Page',
                style: TextStyle(fontWeight: FontWeight.bold, fontSize: 24.0, color: Colors.black,),
              )
          )
      )
    );
  }
}

