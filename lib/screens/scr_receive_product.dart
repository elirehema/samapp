import 'package:flutter/material.dart';
import 'package:samapp/utils/colors.dart';
import 'package:samapp/widgets/index.dart';

import '../utils/util.dart';
class ScreenReceiveProduct extends StatefulWidget{

  ScreenReceiveProductState createState()=> new ScreenReceiveProductState();
}

class ScreenReceiveProductState extends State<ScreenReceiveProduct>{
  final controller = TextEditingController();
  String dropdownValue = "Maziwa";
  late List<String> categories;
  late List<String> products;
  @override
  void initState() {
    products = ['Maziwa', 'Maji','Sukari'];
    categories = ['Maziwa', 'Maji', 'Soda', 'Sukari','Others'];
    super.initState();
  }
  @override
  Widget build(BuildContext context) {
    ThemeData _theme = Theme.of(context);

    return Scaffold(
      backgroundColor: _theme.scaffoldBackgroundColor,
      appBar: AppBar(
        leading: WBackButton(),
        elevation: 0,
        title: Text('Receive product'.toUpperCase(), style: TextStyle(color: Colors.black, fontWeight: FontWeight.bold, fontSize: 16.0)),
      ),
      body:Container(
        padding: EdgeInsets.symmetric(horizontal: 35.0),
        child: ListView(
        children: [
          Padding(padding: EdgeInsets.only(top: 20.0, bottom: 10.0, left: 5.0),
            child: Text('Product category', style: _theme.textTheme.headline4,),),
          DropdownButtonFormField(
            decoration: Utils.inputDecorationFromUtil(_theme, 'Select category'),
            dropdownColor: scaffoldBackgroundColor,
            value: dropdownValue,
            onChanged: (String? newValue) {
              setState(() {
                dropdownValue = newValue!;
              });
            },
            items: categories.map((String value) {
              return DropdownMenuItem(
                value: value,
                child: Text(
                  value,
                  style: TextStyle(fontWeight: FontWeight.w100),
                ),
              );
            }).toList(),
          ),
          Padding(padding: EdgeInsets.only(top: 20.0, bottom: 10.0, left: 5.0),
            child: Text('Product', style: _theme.textTheme.headline4,),),
           Row(
                mainAxisSize: MainAxisSize.max,
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [

                 Expanded(
                   flex: 2,
                   child:  DropdownButtonFormField(
                   decoration: Utils.inputDecorationFromUtil(_theme, 'Select category'),
                   dropdownColor: scaffoldBackgroundColor,
                   value: dropdownValue,
                   onChanged: (String? newValue) {
                     setState(() {
                       dropdownValue = newValue!;
                     });
                   },
                   items: products.map((String value) {
                     return DropdownMenuItem(
                       value: value,
                       child: Text(
                         value,
                         style: TextStyle(fontWeight: FontWeight.w100),
                       ),
                     );
                   }).toList(),
                 ),),
                  Expanded(
                    flex: 1,
                      child: Container(
                        margin: EdgeInsets.only(left: 10.0),
                        child:  ElevatedButton(
                          style: Utils.coloredButtonStyleWithRadius(_theme.primaryColor, 25.0),
                          child: Text('Add', style: TextStyle(fontWeight: FontWeight.bold, color: Colors.white),),
                          onPressed: null,
                        ),
                      )
                  )
                ],
              ),

          Padding(padding: EdgeInsets.only(top: 20.0, bottom: 10.0, left: 5.0),
            child: Text('Buying Price', style: _theme.textTheme.headline4,),),
          TextFormField(
            controller: controller,
            cursorColor: _theme.primaryColor,
            style: _theme.textTheme.bodyText1,
            decoration: Utils.inputDecorationFromUtil(_theme, '0.00'),
            onChanged: (String? value) {
            },
            validator: (value) {
              if ( value == null || value.isEmpty) {
                return 'Field is required';
              }
              return null;
            },
          ),
          Padding(padding: EdgeInsets.only(top: 20.0, bottom: 10.0, left: 5.0),
            child: Text('Standard selling price', style: _theme.textTheme.headline4,),),
          TextFormField(
            controller: controller,
            cursorColor: _theme.primaryColor,
            style: _theme.textTheme.bodyText1,
            decoration: Utils.inputDecorationFromUtil(_theme, 'Price'),
            onChanged: (String? value) {
            },
            validator: (value) {
              if ( value == null || value.isEmpty) {
                return 'Field is required';
              }
              return null;
            },
          ),
          Padding(padding: EdgeInsets.only(top: 20.0, bottom: 10.0, left: 5.0),
            child: Text('Bei ya Jumla', style: _theme.textTheme.headline4,),),
          TextFormField(
            controller: controller,
            cursorColor: _theme.primaryColor,
            style: _theme.textTheme.bodyText1,
            decoration: Utils.inputDecorationFromUtil(_theme, 'Price'),
            onChanged: (String? value) {
            },
            validator: (value) {
              if ( value == null || value.isEmpty) {
                return 'Field is required';
              }
              return null;
            },
          ),
          Padding(padding: EdgeInsets.only(top: 20.0, bottom: 10.0, left: 5.0),
            child: Text('Products received', style: _theme.textTheme.headline4,),),
          TextFormField(
            controller: controller,
            cursorColor: _theme.primaryColor,
            style: _theme.textTheme.bodyText1,
            keyboardType: TextInputType.number,
            decoration: Utils.inputDecorationFromUtil(_theme, '10'),
            onChanged: (String? value) {
            },
            validator: (value) {
              if ( value == null || value.isEmpty) {
                return 'Field is required';
              }
              return null;
            },
          ),
         SizedBox(height: 20.0,),
         Container(
           margin: EdgeInsets.only(bottom: 18.0),
           child:  ElevatedButton(
             style: Utils.coloredButtonStyleWithRadius(_theme.primaryColor, 25.0),
             child: Text('Add Item', style: TextStyle(fontWeight: FontWeight.bold, color: Colors.white),),
             onPressed: null,
           ),
         )
        ],
      ),
      ),
    );
  }

}