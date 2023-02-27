import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:samapp/utils/text_style.dart';


class GasPriceListScreen extends StatefulWidget{
  GasPriceListScreenState createState()=> new GasPriceListScreenState();
}
class GasPriceListScreenState extends State<GasPriceListScreen>{

  @override
  void initState() {
    super.initState();
  }
  @override
  Widget build(BuildContext context) {
    return Container(
      child: ListView.builder(
          shrinkWrap: true,
          itemCount: 10,
          scrollDirection: Axis.vertical,
          padding: EdgeInsets.all(0),
          itemBuilder: (context, i)=> Padding(
            padding: const EdgeInsets.all(8.0),
            child: GestureDetector(
              onTap: (){},
              child: TextButton(
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
                  visualDensity: VisualDensity(horizontal: -4, vertical: 4),
                  leading: Container(
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
                  title: Text(
                    '15Kg',
                    style: kBoldTextStyle,
                  ),
                  subtitle: NormalTextWidget(
                    text: 'Gas',
                    color: Colors.grey,
                  ),
                  trailing: Text(
                    'Tshs. 2000',
                    style: kBoldTextStyle,
                  ),

                ),
              ),
            ),
          )
      ),
    );

  }

}