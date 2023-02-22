import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:samapp/widgets/index.dart';

class ScreenSellsReport extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    ThemeData _theme = Theme.of(context);
    return Scaffold(
      appBar: AppBar(
        leading: WBackButton(),
        actions: [
          Container(margin: EdgeInsets.only(right: 5.0),
          child: Icon(Icons.task_rounded, color: _theme.primaryColor,),)
        ],
        elevation: 0,
        title: Text('Sell Report'.toUpperCase(), style: TextStyle(color: Colors.black, fontWeight: FontWeight.bold, fontSize: 16.0)),

      ),
      body: Container(
      padding: EdgeInsets.symmetric(horizontal: 10.0),
    child: ListView.builder(
        itemCount: 12,
        itemBuilder: (context, position){
          return WidgetSalesReport();
        }),
      ),
    );
  }

}