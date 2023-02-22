import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class WidgetSalesReport extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    ThemeData _theme = Theme.of(context);
    return Card(
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
             subtitle: Text('\t #790841 \n\n TSH 600.00/bottle', style: TextStyle(fontSize: 14),),
             trailing: Text('15.07.2022', style: TextStyle(fontWeight: FontWeight.bold),),
           ),
         ),
          Divider(),
          Container(
            padding: EdgeInsets.only(bottom: 3.0, left: 3.0, right: 3.0),
            child: ListTile(
              dense: true,
              title: Text('Quantity', style: TextStyle(fontWeight: FontWeight.bold),),
              subtitle: Text('3 bottles'),
              trailing: Text('Total \n\n Tsh 1,800'),
            ),
          )
        ],
      ),
    );
  }

}