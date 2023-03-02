import 'package:flutter/material.dart';
import 'package:line_icons/line_icons.dart';
import 'package:samapp/utils/text_style.dart';
import 'package:badges/badges.dart' as badges;

import 'delivery_address_list.dart';


class ShoppingCartScreen extends StatefulWidget{
  ShoppingCartScreenState createState()=> new ShoppingCartScreenState();
}
class ShoppingCartScreenState extends State<ShoppingCartScreen>{

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
        title: BoldTextWidget(
          text: 'Shopping Cart',
          color: Colors.white,
        ),
        centerTitle: true,
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
                  LineIcons.shoppingCart,
                  color:Colors.white,
                  size: 25,
                ),
                onPressed: () {

                },
              ),
            ),
          ),
        ],
      ),
      body: SingleChildScrollView(
        child: Container(
          // height: MediaQuery.of(context).size.height,
          width: MediaQuery.of(context).size.width,
          child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [

              Container(
                height: 455,
                child: ListView.builder(
                    shrinkWrap: true,
                    itemCount: 1,
                    scrollDirection: Axis.vertical,
                    padding: EdgeInsets.all(0),
                    itemBuilder: (context, i)=> Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Container(
                        decoration: BoxDecoration(
                            color: Colors.white,
                            borderRadius: BorderRadius.all(Radius.circular(18))
                        ),
                        height: 130,
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Row(
                              children: [
                                Padding(
                                  padding: const EdgeInsets.all(8.0),
                                  child: Container(
                                    height: 70,
                                    width: 70,
                                    decoration: BoxDecoration(
                                      color: Colors.white,
                                      borderRadius: BorderRadius.circular(8.0),
                                      image: DecorationImage(
                                        image: AssetImage("images/gas_1.jpeg"),
                                        fit: BoxFit.cover,
                                      ),
                                    ),
                                  ),
                                ),

                                SizedBox(
                                  width: 5,
                                ),

                                Column(
                                  mainAxisAlignment: MainAxisAlignment.center,
                                  children: [
                                    Text(
                                      '15Kg',
                                      style: kBoldTextStyle,
                                    ),

                                    BoldTextWidget(
                                      text: 'Tshs. 2000',
                                      color: Colors.grey,
                                    ),
                                  ],
                                )
                              ],
                            ),

                            Column(
                              // mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                IconButton(
                                  icon: const Icon(
                                    Icons.remove_circle_outline_rounded,
                                    color:Colors.blue,
                                    size: 20,
                                  ),
                                  onPressed: () {

                                  },
                                ),

                                Text(
                                  '2',
                                  style: kBoldTextStyle,
                                ),

                                IconButton(
                                  icon: const Icon(
                                    Icons.add_circle_outline_rounded,
                                    color:Colors.blue,
                                    size: 20,
                                  ),
                                  onPressed: () {

                                  },
                                ),
                              ],
                            ),
                          ],
                        ),
                      ),
                    )
                ),
              ),

              Container(
                height: 220,
                width: MediaQuery.of(context).size.width,
                decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.only(topRight: Radius.circular(18), topLeft: Radius.circular(18))
                ),
                child: Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [

                      SizedBox(height: 15,),

                      Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Text(
                              'Sub Total:',
                              style: kTextStyle,
                            ),

                            Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [

                                Text(
                                  'Tsh. 1500',
                                  style: kBoldTitleTextStyle,
                                ),
                              ],
                            )
                          ],
                        ),
                      ),

                      Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Text(
                              'Delivery Fee:',
                              style: kTextStyle,
                            ),

                            Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [

                                Text(
                                  'Tsh. 250',
                                  style: kBoldTitleTextStyle,
                                ),
                              ],
                            )
                          ],
                        ),
                      ),

                      Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Text(
                              'Service Charge:',
                              style: kTextStyle,
                            ),

                            Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [

                                Text(
                                  'Tsh. 250',
                                  style: kBoldTitleTextStyle,
                                ),
                              ],
                            )
                          ],
                        ),
                      ),

                      Center(
                        child: SizedBox(
                          height: 50,
                          // width: 170,
                          child: ElevatedButton(
                            child: Container(
                              height: 20,
                              child: Center(
                                child: NormalTextWidget(
                                  text: 'Next',
                                  color: Colors.white,
                                ),
                              ),
                            ),
                            style: ElevatedButton.styleFrom(
                              foregroundColor: Colors.white,
                              backgroundColor: Colors.blue,
                              side: BorderSide(color: Colors.white,),
                            ),
                            onPressed: () async{
                              // var request = AuthenticationRequest.from("root", "password");
                              // this._loginAuthenticate(context, request);

                              Navigator.of(context).push(MaterialPageRoute<void>(builder: (BuildContext context) => DeliveryAddressListScreen(),),);

                            },
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );

  }

}