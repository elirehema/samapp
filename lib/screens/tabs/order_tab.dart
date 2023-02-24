import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:line_icons/line_icons.dart';

import '../../utils/colors.dart';

class OrderTab extends StatefulWidget{
  OrderTabState createState()=> new OrderTabState();
}
class OrderTabState extends State<OrderTab>{

  @override
  void initState() {
    super.initState();
  }
  @override
  Widget build(BuildContext context) {
    ThemeData _theme = Theme.of(context);
    return Container(
        color: Colors.white,
        child: Center(
            child: Text(
              'Order Page',
              style: TextStyle(fontWeight: FontWeight.bold, fontSize: 24.0, color: Colors.black,),
            )
        )
    );

  }

}