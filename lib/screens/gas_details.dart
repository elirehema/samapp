import 'package:flutter/material.dart';
import 'package:line_icons/line_icons.dart';
import 'package:samapp/screens/shopping_cart.dart';
import 'package:samapp/utils/text_style.dart';
import 'package:badges/badges.dart' as badges;


class GasDetailsScreen extends StatefulWidget{
  GasDetailsScreenState createState()=> new GasDetailsScreenState();
}
class GasDetailsScreenState extends State<GasDetailsScreen>{

  @override
  void initState() {
    super.initState();
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      // backgroundColor: Colors.grey[100]!,
      appBar: AppBar(
        elevation: 0,
        foregroundColor: Colors.white,
        backgroundColor: Colors.blue,
        title: BoldTextWidget(
          text: 'Gas Details',
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
      body: Container(
        // height: MediaQuery.of(context).size.height,
        width: MediaQuery.of(context).size.width,
        // color: Colors.blue,
        decoration: BoxDecoration(
            color: Colors.blue,
            borderRadius: BorderRadius.only(
            bottomRight: Radius.circular(30),
            bottomLeft: Radius.circular(30),
            )
        ),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [

            Container(
              height: 300,
              width: MediaQuery.of(context).size.width,
              child: Center(
                child: Container(
                  height: 150,
                  width: 150,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(8.0),
                    image: DecorationImage(
                      image: AssetImage("images/gas_1.jpeg"),
                    ),
                  ),
                ),
              ),
            ),

            Padding(
              padding: const EdgeInsets.all(5.0),
              child: Container(
                height: 300,
                width: MediaQuery.of(context).size.width,
                decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.only(
                        topRight: Radius.circular(30),
                        topLeft: Radius.circular(30),
                      bottomRight: Radius.circular(30),
                      bottomLeft: Radius.circular(30),
                    )
                ),
                child: Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [

                      SizedBox(height: 15,),

                      Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: Text(
                          'Oryx',
                          style: kBoldTitleTextStyle3,
                        ),
                      ),

                      Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Text(
                                  'Size',
                                  style: kTextStyle,
                                ),

                                Text(
                                  'Small',
                                  style: kBoldTitleTextStyle,
                                ),
                              ],
                            ),

                            Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Text(
                                  'Amount',
                                  style: kTextStyle,
                                ),

                                Text(
                                  '15kg',
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
                              'Quantity',
                              style: kBoldTitleTextStyle,
                            ),

                            Row(
                              // mainAxisAlignment: MainAxisAlignment.start,
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
                            )
                          ],
                        ),
                      ),

                      Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Text(
                                  'Price',
                                  style: kTextStyle,
                                ),

                                Text(
                                  'Tsh. 2000',
                                  style: kBoldTitleTextStyle,
                                ),
                              ],
                            ),

                            SizedBox(
                              height: 50,
                              width: 170,
                              child: ElevatedButton(
                                child: Container(
                                  height: 20,
                                  child: Center(
                                    child: NormalTextWidget(
                                      text: 'Proceed to Cart',
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

                                  Navigator.of(context).push(MaterialPageRoute<void>(builder: (BuildContext context) => ShoppingCartScreen(),),);

                                },
                              ),
                            ),
                          ],
                        ),
                      ),
                    ],
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );

  }

}