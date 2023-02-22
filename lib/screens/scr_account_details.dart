import 'package:flutter/material.dart';
import 'package:samapp/screens/tabs/tab_owner.dart';
import 'package:samapp/screens/tabs/tab_store.dart';
import 'package:samapp/screens/tabs/tab_store_keeper.dart';
import 'package:samapp/widgets/index.dart';
const tabs = ['Owner', 'Store', 'Store Keeper'];
class ScreenAccountDetails extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    ThemeData _theme = Theme.of(context);
    return DefaultTabController(
        length: 3,
        child: Scaffold(
          backgroundColor: _theme.scaffoldBackgroundColor,
          appBar: AppBar(
            leading: WBackButton(),
            elevation: 0,
            title: Text('Enter owner account details'.toUpperCase(),
                style: TextStyle(
                    color: Colors.black,
                    fontWeight: FontWeight.bold,
                    fontSize: 16.0)),

            bottom: TabBar(
              indicatorColor: _theme.primaryColor,
                tabs: tabs.map((tab) => Tab(child: Text(tab.toUpperCase(),
            style: TextStyle(fontWeight: FontWeight.bold),),)).toList()),
          ),
          body: TabBarView(children: [
            TabStoreOwner(),
            TabStore(),
            TabStoreKeeper()

          ]),
        ));
  }
}
