import 'package:flutter/material.dart';
import 'package:group_radio_button/group_radio_button.dart';
import 'package:line_icons/line_icons.dart';
import 'package:samapp/screens/place_order.dart';
import 'package:samapp/utils/text_style.dart';
import 'package:badges/badges.dart' as badges;

import 'add_address.dart';


class DeliveryAddressListScreen extends StatefulWidget{
  DeliveryAddressListScreenState createState()=> new DeliveryAddressListScreenState();
}
class DeliveryAddressListScreenState extends State<DeliveryAddressListScreen>{

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
          text: 'Delivery Addresses',
          color: Colors.white,
        ),
        centerTitle: true,
        actions: [
          Padding(
            padding: const EdgeInsets.all(12.0),
            child: IconButton(
              icon: const Icon(
                Icons.add_rounded,
                color:Colors.white,
                size: 20,
              ),
              onPressed: () {
                Navigator.of(context).push(MaterialPageRoute<void>(builder: (BuildContext context) => AddDeliveryAddressScreen(),),);
              },
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
                height: 575,
                child: ListView.builder(
                    shrinkWrap: true,
                    itemCount: 1,
                    scrollDirection: Axis.vertical,
                    padding: EdgeInsets.all(0),
                    itemBuilder: (context, i)=> Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Container(
                        height: 70,
                        decoration: BoxDecoration(
                            color: Colors.white,
                            borderRadius: BorderRadius.all(Radius.circular(10))
                        ),
                        child: RadioButton(
                          description: "Dar es Salaam",
                          value: "Dar es Salaam",
                          groupValue: "Dar es Salaam",
                          onChanged: (value) {

                          },
                          activeColor: Colors.blue,
                          textStyle: kTextStyle,
                        ),
                      ),
                    )
                ),
              ),

              Container(
                height: 100,
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

                      Center(
                        child: SizedBox(
                          height: 50,
                          // width: 170,
                          child: ElevatedButton(
                            child: Container(
                              height: 20,
                              child: Center(
                                child: NormalTextWidget(
                                  text: 'Select Delivery Address',
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

                              Navigator.of(context).push(MaterialPageRoute<void>(builder: (BuildContext context) => PlaceOrderScreen(),),);

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