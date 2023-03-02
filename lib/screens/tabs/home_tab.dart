import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:line_icons/line_icons.dart';
import 'package:badges/badges.dart' as badges;
import 'package:samapp/utils/text_style.dart';
import '../add_address.dart';
import '../delivery_address_list.dart';
import '../gas_size.dart';
import '../scr_gas_category.dart';


class MenuItem {
  final String title, resource, route;
  const MenuItem(this.title,  this.resource, this.route);
}

const List<MenuItem> items = <MenuItem>[
  MenuItem("Order LPG","delivery.png","ff"),
  MenuItem("Check LPG Level","cylinder.png",""),
  MenuItem("Check Leakage","leakage.png",""),
  MenuItem("Notifications","notification.png","")
];

class GasCategoryItem {
  final String resource, route;
  const GasCategoryItem(this.resource, this.route);
}

const List<GasCategoryItem> gasCategory = <GasCategoryItem>[
  GasCategoryItem("meru_gas_logo.png",""),
  GasCategoryItem("cam_gas_logo.png",""),
  GasCategoryItem("oryx_logo.png","ff"),
  GasCategoryItem("taifa_gas_logo.jpg",""),
  GasCategoryItem("ag_gas_logo.jpeg","")
];

class HomeTab extends StatefulWidget{
  HomeTabState createState()=> new HomeTabState();
}
class HomeTabState extends State<HomeTab>{

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
        foregroundColor: Colors.black,
        backgroundColor: Colors.grey[100]!,
        automaticallyImplyLeading: false,
        actions: [
          Padding(
            padding: const EdgeInsets.all(12.0),
            child: badges.Badge(
              position: badges.BadgePosition.topEnd(top: -2, end: 1),
              showBadge: true,
              ignorePointer: false,
              onTap: () {},
              badgeContent: Text(
                "0",
                style: const TextStyle(color: Colors.white),
              ),
              badgeAnimation: badges.BadgeAnimation.rotation(
                animationDuration: Duration(seconds: 1),
                colorChangeAnimationDuration: Duration(seconds: 1),
                loopAnimation: false,
                curve: Curves.fastOutSlowIn,
                colorChangeAnimationCurve: Curves.easeInCubic,
              ),
              badgeStyle: badges.BadgeStyle(
                shape: badges.BadgeShape.circle,
                badgeColor: Colors.red,
                padding: EdgeInsets.all(4),
                borderGradient: badges.BadgeGradient.linear(
                    colors: [Colors.red, Colors.black]),
                elevation: 0,
              ),
              child: IconButton(
                icon: const Icon(
                  Icons.notifications_active_rounded,
                  color:Colors.blue,size: 25,
                ),
                onPressed: () {

                },
              ),
            ),
          ),
        ],
      ),
      body: SingleChildScrollView(
            child: Column(
              children: [
                SizedBox(height: 20,),


                Container(
                  padding: EdgeInsets.symmetric(horizontal: 5.0),
                  margin: EdgeInsets.only(top: 12.0),
                  child: Column(
                    mainAxisSize: MainAxisSize.min,
                    children: [

                      CarouselSlider(
                        options: CarouselOptions(
                          autoPlay: true,
                          aspectRatio: 2.5,
                          enlargeCenterPage: true,
                        ),
                        items: [

                          Container(
                            decoration: BoxDecoration(
                                color: Colors.blue,
                                borderRadius: BorderRadius.circular(10.0),
                              image: DecorationImage(
                                image: AssetImage("images/sliding_photo1.jpg"),
                                fit: BoxFit.cover,
                              ),
                            ),
                            // height: 140,
                          ),

                          Container(
                            decoration: BoxDecoration(
                                color: Colors.blue,
                                borderRadius: BorderRadius.circular(10.0),
                              image: DecorationImage(
                                image: AssetImage("images/sliding_photo2.jpg"),
                                fit: BoxFit.cover,
                              ),
                            ),
                            // height: 140,
                          ),
                        ],
                      ),

                      SizedBox(height: 20.0,),

                      ListTile(
                        title: Text('Dashboard', style: kBoldTitleTextStyle2,),
                        leading: Icon(Icons.recent_actors_rounded, size: 25.0,color: Colors.black,),
                      ),

                      Container(
                        color: Colors.white,
                        height: 120,
                        child: ListView.builder(
                            shrinkWrap: true,
                            itemCount: items.length,
                            scrollDirection: Axis.horizontal,
                            padding: EdgeInsets.all(0),
                            itemBuilder: (context, i)=> Container(
                              width: 100,
                              padding: EdgeInsets.all(0.0),
                              child:  GestureDetector(
                                onTap: (){
                                  // Navigator.of(context).push(MaterialPageRoute(builder: (context) => CategoryScreen()));
                                },
                                child: ListTile(
                                  dense: true,
                                  title: Card(
                                    color: Colors.blue,
                                    child: Container(
                                      padding: EdgeInsets.all(8.0),
                                      child:Image.asset('images/${items[i].resource}',),
                                    ),
                                  ),
                                  subtitle: Center(
                                    heightFactor: 0,
                                    child: Container(
                                      margin: EdgeInsets.only(top: 20.0),
                                      child:  Text('${items[i].title}', style: kTextStyle, textAlign: TextAlign.center,),
                                    ),
                                  ),
                                ),
                              ),
                            )


                        ),
                      ),

                      Container(
                        color: Colors.white,
                        margin: EdgeInsets.only(top: 15),
                        child: ListTile(
                          leading: Icon(Icons.insights_rounded, color: Colors.black),
                          title: Text(
                            'Gas Categories',
                            style: kBoldTitleTextStyle2,
                          ),
                          subtitle: NormalTextWidget(
                            text: 'Click on the category to get more details',
                            color: Colors.grey,
                          ),
                        ),
                      ),

                      Container(
                        height: 150,
                        color: Colors.white,
                        padding: EdgeInsets.only(bottom: 10.0),
                        child: ListView.builder(
                            shrinkWrap: true,
                            itemCount: gasCategory.length,
                            scrollDirection: Axis.horizontal,
                            padding: EdgeInsets.all(0),
                            itemBuilder: (context, i)=> Container(
                              width: 150,
                              padding: EdgeInsets.symmetric(horizontal: 5.0),
                              child: Padding(
                                padding: const EdgeInsets.all(8.0),
                                child: GestureDetector(
                                  onTap: (){
                                    Navigator.of(context).push(MaterialPageRoute(builder: (context) => GasSizeScreen()));
                                  },
                                  child: Card(
                                    child: Container(
                                      decoration: BoxDecoration(
                                        color: Colors.white,
                                        borderRadius: BorderRadius.circular(8.0),
                                        image: DecorationImage(
                                          image: AssetImage("images/${gasCategory[i].resource}"),
                                          fit: BoxFit.cover,
                                        ),
                                      ),
                                    ),
                                  ),
                                ),
                              ),
                            )


                        ),
                      ),

                      SizedBox(height: 15,),

                      SizedBox(
                        height: 100,
                        child: TextButton(
                          onPressed: (){
                            Navigator.of(context).push(MaterialPageRoute(builder: (context) => CategoryScreen()));
                          },
                          style: TextButton.styleFrom(
                            // padding: EdgeInsets.zero,
                              primary: Colors.black.withOpacity(0.2),
                              backgroundColor: Colors.blue
                          ),
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                            children: [
                              Container(
                                height: 90,
                                width: 90,
                                decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(8.0),
                                  image: DecorationImage(
                                    image: AssetImage("icon/icons.png"),
                                    fit: BoxFit.cover,
                                  ),
                                ),
                              ),

                              Container(
                                height: 25,
                                width: 105,
                                decoration: BoxDecoration(
                                    color: Colors.white,
                                    shape: BoxShape.rectangle,
                                    borderRadius: BorderRadius.circular(8.0),
                                ),
                                child: Center(
                                  child: Text(
                                    'Order Gas',
                                    style: kBoldTextStyle2,
                                  ),
                                ),
                              ),
                            ],
                          ),
                        ),
                      ),

                      SizedBox(height: 10,),

                      TextButton(
                        onPressed: (){
                          Navigator.of(context).push(MaterialPageRoute<void>(builder: (BuildContext context) => DeliveryAddressListScreen(),),);
                        },
                        style: TextButton.styleFrom(
                          // padding: EdgeInsets.zero,
                          primary: Colors.black.withOpacity(0.2),
                          backgroundColor: Colors.white
                        ),
                        child: ListTile(
                          dense: true,
                          visualDensity: VisualDensity(horizontal: -4, vertical: 0),
                          leading: Container(
                            height: 40,
                            width: 40,
                            decoration: BoxDecoration(
                                color: Colors.blue,
                                shape: BoxShape.circle
                            ),
                            child: Icon(
                              LineIcons.locationArrow,
                              color: Colors.white,
                            ),
                          ),
                          title: Text(
                              'Delivery Address',
                            style: kTextStyle,
                          ),
                          trailing: Icon(
                            Icons.arrow_forward_ios_rounded,
                            color: Colors.black,
                            size: 13,
                          ),

                        ),
                      ),

                      SizedBox(height: 10,),

                      TextButton(
                        onPressed: (){
                          // Navigator.push(context, createRightRoute(VerifyEmailScreen(userEmail: userInfo.email,)));
                        },
                        style: TextButton.styleFrom(
                          // padding: EdgeInsets.zero,
                            primary: Colors.black.withOpacity(0.2),
                            backgroundColor: Colors.white
                        ),
                        child: ListTile(
                          dense: true,
                          visualDensity: VisualDensity(horizontal: -4, vertical: 0),
                          leading: Container(
                            height: 40,
                            width: 40,
                            decoration: BoxDecoration(
                                color: Colors.blue,
                                shape: BoxShape.circle
                            ),
                            child: Icon(
                              LineIcons.shoppingCart,
                              color: Colors.white,
                            ),
                          ),
                          title: Text(
                            'My Orders',
                            style: kTextStyle,
                          ),
                          trailing: Icon(
                            Icons.arrow_forward_ios_rounded,
                            color: Colors.black,
                            size: 13,
                          ),

                        ),
                      ),

                      SizedBox(height: 5,)

                    ],
                  ),
                ),
              ],
            ),
          ),
    );

  }

}