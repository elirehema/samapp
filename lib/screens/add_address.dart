import 'package:flutter/material.dart';
import 'package:group_radio_button/group_radio_button.dart';
import 'package:line_icons/line_icons.dart';
import 'package:samapp/utils/text_style.dart';
import 'package:badges/badges.dart' as badges;


class AddDeliveryAddressScreen extends StatefulWidget{
  AddDeliveryAddressScreenState createState()=> new AddDeliveryAddressScreenState();
}
class AddDeliveryAddressScreenState extends State<AddDeliveryAddressScreen>{

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
          text: 'Add Delivery Addresses',
          color: Colors.white,
        ),
        centerTitle: true,
      ),
      body: SingleChildScrollView(
        child: Container(
          // height: MediaQuery.of(context).size.height,
          width: MediaQuery.of(context).size.width,
          child: Padding(
            padding: const EdgeInsets.all(8.0),
            child: Column(
              // mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [

                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: BoldTextWidget(
                    text: 'Fill the form below',
                    color: Colors.grey,
                  ),
                ),

                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: TextFormField(
                    // controller: username,
                    textInputAction: TextInputAction.next,
                    cursorColor: Colors.black,
                    style: kTextStyle,
                    enableSuggestions: false,
                    autocorrect: false,
                    decoration: InputDecoration(
                      contentPadding: EdgeInsets.symmetric(vertical: 9, horizontal: 5),
                      labelText: 'Area',
                      labelStyle: TextStyle(
                        fontFamily: kMainFont,
                        color: Colors.grey,
                        fontSize: 13,
                      ),

                      enabledBorder: UnderlineInputBorder(
                        borderRadius: BorderRadius.circular(12),
                        borderSide: BorderSide(
                            color: Colors.blue,
                            width: 2
                        ),
                      ),
                      focusedBorder: UnderlineInputBorder(
                        borderRadius: BorderRadius.circular(12),
                        borderSide: BorderSide(
                            color: Colors.blue,
                            width: 3
                        ),
                      ),
                    ),
                    onChanged: (String? value) {},
                    onSaved: (String? value) {
                      print(value);
                      // This optional block of code can be used to run
                      // code when the user saves the form.
                    },
                    validator: (value) {
                      if (value == null || value.isEmpty) {
                        return 'Field is required';
                      }
                      return null;
                    },
                  ),
                ),

                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: TextFormField(
                    // controller: username,
                    textInputAction: TextInputAction.next,
                    cursorColor: Colors.black,
                    style: kTextStyle,
                    enableSuggestions: false,
                    autocorrect: false,
                    decoration: InputDecoration(
                      contentPadding: EdgeInsets.symmetric(vertical: 9, horizontal: 5),
                      labelText: 'City',
                      labelStyle: TextStyle(
                        fontFamily: kMainFont,
                        color: Colors.grey,
                        fontSize: 13,
                      ),

                      enabledBorder: UnderlineInputBorder(
                        borderRadius: BorderRadius.circular(12),
                        borderSide: BorderSide(
                            color: Colors.blue,
                            width: 2
                        ),
                      ),
                      focusedBorder: UnderlineInputBorder(
                        borderRadius: BorderRadius.circular(12),
                        borderSide: BorderSide(
                            color: Colors.blue,
                            width: 3
                        ),
                      ),
                    ),
                    onChanged: (String? value) {},
                    onSaved: (String? value) {
                      print(value);
                      // This optional block of code can be used to run
                      // code when the user saves the form.
                    },
                    validator: (value) {
                      if (value == null || value.isEmpty) {
                        return 'Field is required';
                      }
                      return null;
                    },
                  ),
                ),

                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: TextFormField(
                    // controller: username,
                    textInputAction: TextInputAction.done,
                    cursorColor: Colors.black,
                    style: kTextStyle,
                    enableSuggestions: false,
                    autocorrect: false,
                    decoration: InputDecoration(
                      contentPadding: EdgeInsets.symmetric(vertical: 9, horizontal: 5),
                      labelText: 'Address',
                      labelStyle: TextStyle(
                        fontFamily: kMainFont,
                        color: Colors.grey,
                        fontSize: 13,
                      ),

                      enabledBorder: UnderlineInputBorder(
                        borderRadius: BorderRadius.circular(12),
                        borderSide: BorderSide(
                            color: Colors.blue,
                            width: 2
                        ),
                      ),
                      focusedBorder: UnderlineInputBorder(
                        borderRadius: BorderRadius.circular(12),
                        borderSide: BorderSide(
                            color: Colors.blue,
                            width: 3
                        ),
                      ),
                    ),
                    onChanged: (String? value) {},
                    onSaved: (String? value) {
                      print(value);
                      // This optional block of code can be used to run
                      // code when the user saves the form.
                    },
                    validator: (value) {
                      if (value == null || value.isEmpty) {
                        return 'Field is required';
                      }
                      return null;
                    },
                  ),
                ),

                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: SizedBox(
                    height: 50,
                    // width: 170,
                    child: ElevatedButton(
                      child: Container(
                        height: 20,
                        child: Center(
                          child: NormalTextWidget(
                            text: 'Save',
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

                        // Navigator.of(context).push(MaterialPageRoute<void>(builder: (BuildContext context) => ShoppingCartScreen(),),);

                      },
                    ),
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );

  }

}