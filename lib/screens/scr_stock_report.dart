import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:samapp/widgets/index.dart';

class ScreenStocksReport extends StatelessWidget{
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
        title: Text('Stocks Report'.toUpperCase(), style: TextStyle(color: Colors.black, fontWeight: FontWeight.bold, fontSize: 16.0)),

      ),
      body: Container(
      padding: EdgeInsets.symmetric(horizontal: 10.0),
    child: Column(
      mainAxisSize: MainAxisSize.min,
      crossAxisAlignment: CrossAxisAlignment.start,
      mainAxisAlignment: MainAxisAlignment.start,
      children: [
        ListTile(
          title: Text('Stocks Report as of', style: TextStyle(fontWeight: FontWeight.bold, color: Colors.black54),),
          subtitle: Text('22.07.2022', style: TextStyle(fontWeight: FontWeight.bold, color: Colors.blueGrey),),
        ),
        Expanded(
            child: ListView.builder(
            itemCount: 12,
            shrinkWrap: true,
            itemBuilder: (context, position){
              return WidgetStocksReport();
            }))
      ],
    ),
      ),
    );
  }

}