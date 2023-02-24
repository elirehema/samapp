import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
 class MenuItem {
  final String title, resource, route;
  const MenuItem(this.title,  this.resource, this.route);
}
const List<String> prices = <String>["215","255","90"];
const List<MenuItem> items = <MenuItem>[
  MenuItem("Order LPG","delivery.png","ff"),MenuItem("Check LPG Level","cylinder.png",""),
  MenuItem("Check Leakage","leakage.png",""),MenuItem("Notifications","notification.png","")
];
class ScreenHome extends StatefulWidget{
  ScreenHomeState createState()=> new ScreenHomeState();
}
class ScreenHomeState extends State<ScreenHome>{

  @override
  void initState() {
    super.initState();
  }
  @override
  Widget build(BuildContext context) {
    ThemeData _theme = Theme.of(context);
    return Scaffold(
      appBar: AppBar(
        elevation: 0,
        title: Text('Swap n Go'),
        backgroundColor: _theme.primaryColor,
        iconTheme: IconThemeData(color: Colors.white),
        actions: [
          Container(margin: EdgeInsets.only(right: 20),
            child: Icon(Icons.language_rounded),)
        ],
      ),
      drawer: Drawer(
        child: ListView(
          children: [
            DrawerHeader(
              decoration: BoxDecoration(
                color: _theme.primaryColor
              ),
                child: Text('Samgas')
            ),
            ListTile(
              title: Text('About Us'),
            ),
            ListTile(
              title: Text('Terms of Use'),
            ),
            ListTile(
              title: Text('Privacy Policy'),
            ),
            ListTile(
              title: Text('Contact'),
            )
          ],
        ),
      ),
      body: SingleChildScrollView(
        child: Container(
          padding: EdgeInsets.symmetric(horizontal: 5.0),
          margin: EdgeInsets.only(top: 12.0),
          child: Column(
            mainAxisSize: MainAxisSize.min,
            children: [
              Container(
                decoration: BoxDecoration(
                    color: Colors.lightBlueAccent[100],
                    borderRadius: BorderRadius.circular(10.0)
                ),
                height: 200,
              ),
              SizedBox(height: 20.0,),
              ListTile(
                title: Text('Dashboard', style: TextStyle(fontWeight: FontWeight.bold, fontSize: 24.0),),
                leading: Icon(Icons.recent_actors_rounded, size: 30.0,),
              ),
              Divider(color: _theme.primaryColorLight,),
              Container(
                height: 150,
                child: ListView.builder(
                    shrinkWrap: true,
                    itemCount: items.length,
                    scrollDirection: Axis.horizontal,
                    padding: EdgeInsets.all(0),
                    itemBuilder: (context, i)=> Container(
                      width: 150,
                      padding: EdgeInsets.all(0.0),
                      child:  ListTile(
                        dense: true,
                        title: Card(
                          color: _theme.primaryColorLight,
                          child: Container(
                            padding: EdgeInsets.all(8.0),
                            child:Image.asset('images/${items[i].resource}',),
                          ),
                        ),
                        subtitle: Center(
                          heightFactor: 0,
                          child: Container(
                            margin: EdgeInsets.only(top: 20.0),
                            child:  Text('${items[i].title}', style: TextStyle(fontSize: 18.0, color: Colors.black),),
                          ),
                        ),
                      ),
                    )


                ),
              ),
              Container(
                color: Colors.white,
                margin: EdgeInsets.only(top: 20),
                child: ListTile(
                  leading: Icon(Icons.insights_rounded),
                  title: Text('LPG Prices', style: TextStyle(fontSize: 22, fontWeight: FontWeight.bold),),
                  subtitle: Text('Click on the product to get more details'),
                ),
              ),
              Container(
                height: 200,
                color: Colors.white,
                padding: EdgeInsets.only(bottom: 10.0),
                child: ListView.builder(
                    shrinkWrap: true,
                    itemCount: prices.length,
                    scrollDirection: Axis.horizontal,
                    padding: EdgeInsets.all(0),
                    itemBuilder: (context, i)=> Container(
                      width: 150,
                      padding: EdgeInsets.symmetric(horizontal: 5.0),
                      child: Container(
                        padding: EdgeInsets.all(5.0),
                        decoration: BoxDecoration(
                          color: Colors.red,
                          borderRadius: BorderRadius.circular(8.0),
                          image: DecorationImage(
                            image: AssetImage("images/gas.jpeg"),
                            fit: BoxFit.cover,
                          ),
                        ),
                        child:Stack(
                          alignment: Alignment.center,
                          textDirection: TextDirection.rtl,
                          fit: StackFit.loose,
                          clipBehavior: Clip.hardEdge,
                          children: <Widget>[
                            Align(
                              alignment: Alignment.topRight,
                            child: Chip(
                                label: Text('${prices[i]}', style: TextStyle(fontWeight: FontWeight.bold, fontSize: 24.0, color: Colors.blue),)
                            ),),

                          ]
                      ),
                      ),
                    )


                ),
              ),

            ],
          ),
        ),
      )
    );
  }

}