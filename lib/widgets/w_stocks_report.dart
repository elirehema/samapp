import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:samapp/screens/scr_view_stock.dart';

class WidgetStocksReport extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    ThemeData _theme = Theme.of(context);
    return   GestureDetector(
        onTap: () {
          Navigator.of(context).push(MaterialPageRoute<void>(
            builder: (BuildContext context) =>
                ScreenViewStock(),
          ),
          );
        },
        child: Card(
      shape: RoundedRectangleBorder(
        side: BorderSide(
          color: Colors.grey,
          width: 0.5
        ),
        borderRadius: BorderRadius.circular(16)
      ),
      elevation: 0,
      child: Column(
        mainAxisAlignment: MainAxisAlignment.start,
        crossAxisAlignment: CrossAxisAlignment.stretch,
        mainAxisSize: MainAxisSize.min,
        children: [
         Container(
           padding: EdgeInsets.only(top: 3.0, left: 3.0, right: 3.0),
           child:  ListTile(
             isThreeLine: true,
             title: Text('Uhai drinking water 6 Litres',
               style: TextStyle(fontWeight: FontWeight.bold),),
             subtitle: Text('\t #790841 \n\n TSH 600.00 (Cost Price)', style: TextStyle(fontSize: 14),),
             trailing: Text('Quantity \n 10 PCS', style: TextStyle(),),
           ),
         ),
          Divider(),
          Row(
           mainAxisSize: MainAxisSize.min,
           children: [
             Expanded(
               child: ListTile(
                 title: Text('Total Cost', style: TextStyle(fontWeight: FontWeight.bold),),
                 subtitle: Text('Tsh 10,000'),
               ),
             ),
             Expanded(
               child: ListTile(
                 title: Text('Selling Price', style: TextStyle(fontWeight: FontWeight.bold),),
                 subtitle: Text('Tsh 2,000'),
               ),
             ),
             Expanded(
               child: ListTile(
                 title: Text('Total Sell', style: TextStyle(fontWeight: FontWeight.bold),),
                 subtitle: Text('Tsh 4,000'),
               ),
             )
           ],
         )
        ],
      ),
    ));
  }

}