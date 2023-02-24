import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:line_icons/line_icons.dart';
import '../../utils/colors.dart';

class CartTab extends StatefulWidget{
  CartTabState createState()=> new CartTabState();
}
class CartTabState extends State<CartTab>{

  @override
  void initState() {
    super.initState();
  }
  @override
  Widget build(BuildContext context) {
    return Container(
        color: Colors.white,
        child: Center(
            child: Text(
                'Cart Page',
              style: TextStyle(fontWeight: FontWeight.bold, fontSize: 24.0, color: Colors.black,),
            )
        )
    );

  }

}