import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class WidgetProduct extends StatelessWidget{
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
          ListTile(
            title: Text('Uhai drinking water 6 Litres',
            style: TextStyle(fontWeight: FontWeight.bold),),
            subtitle: Text('TSH 600.00', style: TextStyle(fontSize: 14),),
            trailing: SizedBox(
              width: 100.0,
              height: 100.0,
              child: ElevatedButton(
                onPressed: () {},
                style: ButtonStyle(
                  shape: MaterialStateProperty.all(RoundedRectangleBorder(borderRadius: BorderRadius.circular(4)))
                ),
                child: Text("uza"),
              ),
            ),
          ),
          SizedBox(height: 40,),
          Divider(),
          ListTile(
            dense: true,
            title: Text('35 Pcs', style: TextStyle(fontWeight: FontWeight.bold),),
            subtitle: Text('In Stock'),
          )
        ],
      ),
    );
  }

}