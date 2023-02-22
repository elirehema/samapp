import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:samapp/widgets/index.dart';

import 'index.dart';

class ScreenStockAnalytics extends StatelessWidget{
   @override
  Widget build(BuildContext context) {
     ThemeData _theme = Theme.of(context);
    return Scaffold(
      backgroundColor: _theme.scaffoldBackgroundColor,
      appBar: AppBar(
        leading: WBackButton(),
        elevation: 0,
        title: Text('Stock Analytics'.toUpperCase(), style: TextStyle(color: Colors.black, fontWeight: FontWeight.bold, fontSize: 16.0)),
      ),
      body: Container(
        padding: EdgeInsets.all(8.0),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          mainAxisSize: MainAxisSize.min,
          children: [
            Container(
              padding: EdgeInsets.all(10.5),
              margin: EdgeInsets.only(bottom: 12.0),
              decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(12.5),
                color: _theme.primaryColor,
              ),
              child: Expanded(
                child: Column(
                  children: [
                    Row(
                      mainAxisSize: MainAxisSize.max,
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [

                        Expanded(
                          child: Container(
                            child: Text('July 20 2022', style: TextStyle(fontSize: 12.0, color: Colors.white, fontWeight: FontWeight.bold),),
                            padding: EdgeInsets.all(5.0),
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(5.5),
                              color: Colors.white38
                            ),
                          ),
                          flex: 0,
                        ),
                        Text('Last updated Tue 25 July 8:00 am', style: TextStyle(fontSize: 12.0,color: Colors.blueGrey),),

                      ],
                    ),
                    SizedBox(height: 15.0,),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Expanded(
                          child: Card(
                            shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(12.5)
                            ),
                              child: Padding(
                                padding: EdgeInsets.all(15.0),
                                child: Column(
                                  mainAxisSize: MainAxisSize.min,
                                  mainAxisAlignment: MainAxisAlignment.start,
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    Container(
                                      padding: EdgeInsets.all(12.0),
                                      decoration: BoxDecoration(
                                          shape: BoxShape.circle,
                                          color: _theme.primaryColor
                                      ),
                                      child: Icon(Icons.bar_chart_rounded, color: Colors.white,),
                                    ),
                                    Padding(
                                      padding: EdgeInsets.symmetric(vertical: 15.0),
                                      child:  Text('TSH 23,300', style: TextStyle(fontWeight: FontWeight.bold, fontSize: 18.0),), ),
                                    Padding(
                                      padding: EdgeInsets.only(bottom: 20.0),
                                      child: Text('Today Sales'),),
                                    Text('Tap to view', style: TextStyle(fontWeight: FontWeight.w100, fontSize: 12.0, color: Colors.grey),)
                                  ],
                                ),
                              )
                          ),),
                        Expanded(
                          child: Card(
                              shape: RoundedRectangleBorder(
                                  borderRadius: BorderRadius.circular(12.5)
                              ),
                              child: Padding(
                                padding: EdgeInsets.all(15.0),
                                child: Column(
                                  mainAxisSize: MainAxisSize.min,
                                  mainAxisAlignment: MainAxisAlignment.start,
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    Container(
                                      padding: EdgeInsets.all(12.0),
                                      decoration: BoxDecoration(
                                          shape: BoxShape.circle,
                                          color: Colors.orangeAccent
                                      ),
                                      child: Icon(Icons.bar_chart_rounded, color: Colors.white,),
                                    ),
                                    Padding(
                                      padding: EdgeInsets.symmetric(vertical: 15.0),
                                      child:  Text('20', style: TextStyle(fontWeight: FontWeight.bold, fontSize: 18.0),), ),
                                    Padding(
                                      padding: EdgeInsets.only(bottom: 20.0),
                                      child: Text('Products In'),),
                                    Text('Tap to view', style: TextStyle(fontWeight: FontWeight.w100, fontSize: 12.0, color: Colors.grey),)
                                  ],
                                ),
                              )
                          ),
                        ),
                      ],
                    )
                  ],
                ),
              ),
            ),
            GestureDetector(
                onTap: () {
                 Navigator.of(context).push(MaterialPageRoute<void>(
                      builder: (BuildContext context) =>
                          ScreenReceiveProduct(),
                    ),
                  );
                },
              child:Card(
              child: Container(
                padding: EdgeInsets.all(15.0),
                child: ListTile(
                  leading:    Container(
                    padding: EdgeInsets.all(12.0),
                    decoration: BoxDecoration(
                        shape: BoxShape.circle,
                        color: Colors.amber[100]
                    ),

                    child: Icon(Icons.shopping_bag_outlined, color: Colors.orange,),
                  ),
                  title: Text('Receive Products'),
                  subtitle: Text('Options to receive products'),
                  trailing: Icon(Icons.arrow_forward_ios_rounded, color: Colors.orange,),
                ),
              ),
            ),),
            SizedBox(height: 5.0,),
            GestureDetector(
                onTap: () {
                 Navigator.of(context).push(MaterialPageRoute<void>(
                      builder: (BuildContext context) =>
                          ScreenSellProduct(),
                    ),
                  );
                },
                child:Card(
              child: Container(
                padding: EdgeInsets.all(15.0),
                child: ListTile(
                  leading:    Container(
                    padding: EdgeInsets.all(12.0),
                    decoration: BoxDecoration(
                        shape: BoxShape.circle,
                        color: Colors.pink[100]
                    ),

                    child: Icon(Icons.qr_code_rounded, color: Colors.pink,),
                  ),
                  title: Text('Sell Products'),
                  subtitle: Text('Options to sell products'),
                  trailing: Icon(Icons.arrow_forward_ios_rounded, color: Colors.pink,),
                ),
              ),
            )),
            SizedBox(height: 5.0,),
            GestureDetector(
                onTap: () {
                  Navigator.of(context).push(MaterialPageRoute<void>(
                    builder: (BuildContext context) =>
                        ScreenStocksReport(),
                  ),
                  );
                },
                child:Card(
              child: Container(
                padding: EdgeInsets.all(15.0),
                child: ListTile(
                  leading:    Container(
                    padding: EdgeInsets.all(12.0),
                    decoration: BoxDecoration(
                        shape: BoxShape.circle,
                        color: Colors.blue[100]
                    ),

                    child: Icon(Icons.inventory_rounded, color: Colors.blue,),
                  ),
                  title: Text('Stock Summary'),
                  subtitle: Text('View stock summary'),
                  trailing: Icon(Icons.arrow_forward_ios_rounded, color: Colors.blue,),
                ),
              ),
            ))
          ],
        ),
      )

    );
  }
}