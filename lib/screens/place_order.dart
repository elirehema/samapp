import 'package:flutter/material.dart';
import 'package:group_radio_button/group_radio_button.dart';
import 'package:line_icons/line_icons.dart';
import 'package:samapp/utils/text_style.dart';
import 'package:badges/badges.dart' as badges;

import 'add_address.dart';


class PlaceOrderScreen extends StatefulWidget{
  PlaceOrderScreenState createState()=> new PlaceOrderScreenState();
}
class PlaceOrderScreenState extends State<PlaceOrderScreen>{

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
          text: 'Place Order',
          color: Colors.white,
        ),
        centerTitle: true,
      ),
      body: SingleChildScrollView(
        child: Container(
          // height: MediaQuery.of(context).size.height,
          width: MediaQuery.of(context).size.width,
          child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [

              Container(
                height: 555,
                child: Column(
                  children: [
                    Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: BoldTextWidget(
                        text: 'Verify your address and select a payment method',
                        color: Colors.grey,
                      ),
                    ),

                    Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Row(
                        // mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Text(
                            'Address:',
                            style: kTextStyle,
                          ),

                          SizedBox(width: 5,),

                          Text(
                            'Dar es Salaam',
                            style: kTextStyle,
                          ),
                        ],
                      ),
                    ),

                    Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Container(
                        height: 70,
                        decoration: BoxDecoration(
                            color: Colors.white,
                            borderRadius: BorderRadius.all(Radius.circular(10))
                        ),
                        child: RadioButton(
                          description: "Cash",
                          value: "Cash",
                          groupValue: "Cash",
                          onChanged: (value) {

                          },
                          activeColor: Colors.blue,
                          textStyle: kTextStyle,
                        ),
                      ),
                    ),

                    Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Container(
                        height: 70,
                        decoration: BoxDecoration(
                            color: Colors.white,
                            borderRadius: BorderRadius.all(Radius.circular(10))
                        ),
                        child: RadioButton(
                          description: "Mobile money",
                          value: "Mobile money",
                          groupValue: "Mobile money",
                          onChanged: (value) {

                          },
                          activeColor: Colors.blue,
                          fillColor: Colors.white,
                          textStyle: kTextStyle,
                        ),
                      ),
                    )
                  ],
                ),
              ),

              Container(
                height: 120,
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
                              'Total:',
                              style: kTextStyle,
                            ),

                            Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [

                                Text(
                                  'Tsh. 2000',
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
                                  text: 'Place Order',
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

                              // Navigator.of(context).push(MaterialPageRoute<void>(builder: (BuildContext context) => AddDeliveryAddressScreen(),),);

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