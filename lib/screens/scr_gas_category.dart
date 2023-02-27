import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:line_icons/line_icons.dart';
import 'package:badges/badges.dart' as badges;
import 'package:samapp/utils/text_style.dart';

import '../../utils/colors.dart';
import 'gas_size.dart';


class CategoryItem {
  final String resource, route;
  const CategoryItem(this.resource, this.route);
}

const List<CategoryItem> items = <CategoryItem>[
  CategoryItem("oryx_logo.png","ff"),
  CategoryItem("meru_gas_logo.png",""),
  CategoryItem("cam_gas_logo.png",""),
  CategoryItem("taifa_gas_logo.jpg",""),
  CategoryItem("ag_gas_logo.jpeg","")
];

class CategoryScreen extends StatefulWidget{
  CategoryScreenState createState()=> new CategoryScreenState();
}
class CategoryScreenState extends State<CategoryScreen>{

  @override
  void initState() {
    super.initState();
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey[100]!,
      appBar: AppBar(
        elevation: 0,
        foregroundColor: Colors.white,
        backgroundColor: Colors.blue,
        title: BoldTextWidget2(
          text: 'Order Gas',
          color: Colors.white,
        ),
        centerTitle: true,
        // automaticallyImplyLeading: false,
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [

            Column(
              children: [

                Container(
                  height: 160,
                  width: MediaQuery.of(context).size.width,
                  decoration: BoxDecoration(
                      color: Colors.blue,
                      borderRadius: BorderRadius.only(bottomRight: Radius.circular(50))
                  ),
                  child: Center(
                    child: Container(
                      height: 150,
                      width: 150,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(8.0),
                        image: DecorationImage(
                          image: AssetImage("icon/icons.png"),
                        ),
                      ),
                    ),
                  ),
                ),

                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Text(
                    'Gas Categories',
                    style: kBoldTextStyle,
                  ),
                ),
              ],
            ),

            Container(
              // height: MediaQuery.of(context).size.height,
              height: 480,
              child: ListView.builder(
                  shrinkWrap: true,
                  itemCount: items.length,
                  scrollDirection: Axis.vertical,
                  padding: EdgeInsets.all(0),
                  itemBuilder: (context, i)=> Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: GestureDetector(
                      onTap: (){
                        Navigator.of(context).push(MaterialPageRoute(builder: (context) => GasSizeScreen()));
                      },
                      child: SizedBox(
                        height: 130,
                        child: Card(
                          color: Colors.white,
                          child: Container(
                            padding: EdgeInsets.all(8.0),
                            child:Image.asset('images/${items[i].resource}',),
                          ),
                        ),
                      ),
                    ),
                  )
              ),
            ),
          ],
        ),
      ),
    );

  }

}