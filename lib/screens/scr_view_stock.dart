import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:samapp/utils/index.dart';

import '../widgets/w_back_button.dart';

class ScreenViewStock extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    ThemeData _theme = Theme.of(context);
    return Scaffold(
        appBar: AppBar(
          leading: WBackButton(),
          elevation: 0,
          title: Text('Stock Report'.toUpperCase(),
              style: TextStyle(
                  color: Colors.black,
                  fontWeight: FontWeight.bold,
                  fontSize: 16.0)),
        ),
        body: Container(
            padding: EdgeInsets.symmetric(vertical: 10.0, horizontal: 20.0),
            child: Column(
                mainAxisSize: MainAxisSize.min,
                crossAxisAlignment: CrossAxisAlignment.start,
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  ListTile(
                    title: Text(
                      'Stock Item',
                      style: TextStyle(
                          fontWeight: FontWeight.bold, color: Colors.black54),
                    ),
                    subtitle: Text(
                      'Uhai Drinking Water 6 litres',
                      style: TextStyle(
                          fontWeight: FontWeight.bold, color: Colors.blueGrey),
                    ),
                  ),
                  Divider(),
                  ListTile(
                    title: Text(
                      'Stock Item',
                      style: TextStyle(
                          fontWeight: FontWeight.bold, color: Colors.black54),
                    ),
                    subtitle: Text(
                      'Uhai Drinking Water 6 litres',
                      style: TextStyle(
                          fontWeight: FontWeight.bold, color: Colors.black),
                    ),
                  ),
                  Divider(),
                  ListTile(
                    title: Text(
                      'Item Number',
                      style: TextStyle(
                          fontWeight: FontWeight.bold, color: Colors.black54),
                    ),
                    subtitle: Text(
                      '#7890841',
                      style: TextStyle(
                          fontWeight: FontWeight.bold, color: Colors.black),
                    ),
                  ),
                  Divider(),
                  ListTile(
                    title: Text(
                      'Item Category',
                      style: TextStyle(
                          fontWeight: FontWeight.bold, color: Colors.black54),
                    ),
                    subtitle: Text(
                      'Drinks',
                      style: TextStyle(
                          fontWeight: FontWeight.bold, color: Colors.black),
                    ),
                  ),
                  Divider(),
                  SizedBox(height: 20.0,),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.end,
                    crossAxisAlignment: CrossAxisAlignment.end,
                    mainAxisSize: MainAxisSize.min,
                    children: [
                      SizedBox(
                        width: 100.0,
                        child: ElevatedButton(
                          onPressed: ()=>Navigator.of(context).pop(),
                          style: Utils.coloredButtonStyleWithRadius(_theme.primaryColor, 12.5),
                          child: Text('Back'),
                        ),
                      ),
                      SizedBox(width: 10.0,),
                      SizedBox(
                        width: 100.0,
                        child: ElevatedButton(
                          onPressed: (){},
                          style: Utils.coloredButtonStyleWithRadius(_theme.primaryColor, 12.5),
                          child: Text('Edit'),
                        ),
                      )
                    ],
                  )
                ])
        ));
  }
}
