import 'package:flutter/material.dart';

import '../utils/text_style.dart';
import 'gas_price_list.dart';


class GasSizeScreen extends StatefulWidget {

  @override
  State<GasSizeScreen> createState() => _GasSizeScreenState();
}

class _GasSizeScreenState extends State<GasSizeScreen> {
  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 3,
      child: Scaffold(
        backgroundColor: Colors.grey[100]!,
        appBar: AppBar(
          elevation: 0,
          foregroundColor: Colors.white,
          backgroundColor: Colors.blue,
          title: BoldTextWidget(
            text: 'Gas Quantity',
            color: Colors.white,
          ),
          centerTitle: true,
          bottom: TabBar(
            tabs: [
              Tab(
                child: BoldTextWidget2(
                  text: 'Small',
                  color: Colors.white,
                ),
              ),

              Tab(
                child: BoldTextWidget2(
                  text: 'Medium',
                  color: Colors.white,
                ),
              ),

              Tab(
                child: BoldTextWidget2(
                  text: 'Large',
                  color: Colors.white,
                ),
              ),
            ],
          ),
        ),
        body: TabBarView(
          children: [
            GasPriceListScreen(),
            GasPriceListScreen(),
            GasPriceListScreen(),
          ],
        ),
      ),
    );
  }
}
