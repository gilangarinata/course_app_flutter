import 'package:courses_app/resource/my_color.dart';
import 'package:cuberto_bottom_bar/cuberto_bottom_bar.dart';
import 'package:flutter/material.dart';

import '../tabs.dart';

class DashboardScreen extends StatefulWidget {
  const DashboardScreen({Key? key}) : super(key: key);

  @override
  State<DashboardScreen> createState() => _DashboardScreenState();
}

class _DashboardScreenState extends State<DashboardScreen> {

  int currentPage = 0;

  getGradient(Color color) {
    return LinearGradient(
        colors: [color.withOpacity(0.5), color.withOpacity(0.1)],
        stops: const [0.0, 0.7]);
  }

  List<Tabs> tabs = [];

  @override
  void initState() {
    super.initState();
    tabs.add(Tabs(Icons.home,"Home",Colors.deepPurple,getGradient(Colors.deepPurple),));
    tabs.add(Tabs(Icons.search, "Search", Colors.pink, getGradient(Colors.pink)));
    tabs.add(Tabs(Icons.alarm, "Alarm", Colors.amber, getGradient(Colors.orange)));
    tabs.add(Tabs(Icons.settings, "Settings", Colors.teal, getGradient(Colors.teal)));
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: MyColor.SurfaceColor,
      appBar: AppBar(
        toolbarHeight: 100,
        backgroundColor: MyColor.SurfaceColor,
        elevation: 0,
        automaticallyImplyLeading: false,
        title: Row(
          children: [
            Card(
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(12)
              ),
              clipBehavior: Clip.antiAlias,
              child: Image.asset("assets/avatar.jpg", width: 40,),
            ),
            SizedBox(width: 5,),
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text("Gilang Arinata", style: Theme.of(context).textTheme.titleMedium,),
                Text("24 Feb, 2021", style: Theme.of(context).textTheme.bodySmall,),
              ],
            )
          ],
        ),
        actions: [
          IconButton(onPressed: (){}, icon: Icon(Icons.more_vert,color: Colors.grey,))
        ],
      ),
      body: ListView(
        padding: EdgeInsets.symmetric(horizontal: 20),
        children: [
          Text("Find\nYour Couse", style: TextStyle(fontSize: 42,fontWeight: FontWeight.bold),),
          SizedBox(height: 20,),
          Row(
            children: [
              Expanded(
                child: TextField(
                  decoration: InputDecoration(
                      border: InputBorder.none,
                      filled: true,
                      hintStyle: TextStyle(color: Colors.grey),
                      prefixIcon: Icon(Icons.search, color: Colors.grey,),
                      hintText: "Search",
                      fillColor: Colors.white
                  ),
                ),
              ),
              SizedBox(width: 10,),
              Card(
                elevation: 0,
                child: Padding(
                  padding: const EdgeInsets.all(12.0),
                  child: Icon(Icons.settings, color: Colors.grey,),
                ),
              )
            ],
          ),
          SizedBox(height: 20,),
          Stack(
            alignment: Alignment.center,
            children: [
              Card(
                clipBehavior: Clip.antiAlias,
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(18)
                ),
                child: Container(
                  decoration: BoxDecoration(
                    gradient: LinearGradient(
                      colors: [
                        MyColor.Purple,
                        MyColor.Purple.withAlpha(160),
                        MyColor.Purple,
                      ],
                      begin: Alignment.topLeft,
                      end: Alignment.bottomRight,
                    ),
                  ),
                  width: double.infinity,
                  child: Padding(
                    padding: const EdgeInsets.all(18.0),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text("Learn English in\n30 days", style: TextStyle(color: Colors.white, fontWeight: FontWeight.bold, fontSize: 20),),
                        SizedBox(height: 20,),
                        ElevatedButton(
                          onPressed: () {},
                          child: Row(
                            mainAxisSize: MainAxisSize.min,
                            children: [
                              Text('Start'),
                              Icon(Icons.arrow_forward_ios_sharp, size: 10,)
                            ],
                          ),
                          style: ElevatedButton.styleFrom(
                            shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(12), // <-- Radius
                            ),
                            elevation: 0,
                            primary: MyColor.Orange
                          ),
                        )
                      ],
                    ),
                  ),
                ),
              ),
              Align(
                  alignment: Alignment.centerRight,
                  child: Image.asset("assets/illustration1.png", width: 180,),
              )
            ],
          ),
          SizedBox(height: 20,),
          Text("Popular Courses", style: TextStyle(color: Colors.black, fontWeight: FontWeight.bold, fontSize: 18),),
          SizedBox(height: 20,),
          Row(
            children: [
              Expanded(child: Card(
                clipBehavior: Clip.antiAlias,
                shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(18)
                ),
                child: Container(
                  decoration: BoxDecoration(
                    gradient: LinearGradient(
                      colors: [
                        MyColor.Blue,
                        MyColor.Blue.withAlpha(160),
                        MyColor.Blue,
                      ],
                      begin: Alignment.topLeft,
                      end: Alignment.bottomRight,
                    ),
                  ),
                  width: double.infinity,
                  child: Padding(
                    padding: const EdgeInsets.all(18.0),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Card(
                          color: Colors.blue,
                          child: Padding(
                            padding: EdgeInsets.all(10),
                            child: Text("D", style: TextStyle(color: Colors.white),),
                          ),
                        ),
                        SizedBox(height: 10,),
                        Text("Design\nThinking", style: TextStyle(color: Colors.white, fontWeight: FontWeight.bold, fontSize: 16),),
                        SizedBox(height: 10,),
                        Row(
                          children: [
                            Icon(Icons.menu_book,color: Colors.white,),
                            SizedBox(width: 5,),
                            Text("10 Lessons", style: TextStyle(color: Colors.white, fontWeight: FontWeight.normal),),
                          ],
                        ),
                        SizedBox(height: 10,),
                        Row(
                          children: [
                            Expanded(child: Text("\$10", style: TextStyle(color: Colors.white, fontWeight: FontWeight.bold, fontSize: 18),)),
                            Expanded(
                              child: ElevatedButton(
                                onPressed: () {},
                                child: Row(
                                  mainAxisSize: MainAxisSize.min,
                                  children: [
                                    Text('Join', style: TextStyle(color: Colors.blue),),
                                    Icon(Icons.arrow_forward_ios_sharp, size: 10, color: Colors.blue,)
                                  ],
                                ),
                                style: ElevatedButton.styleFrom(
                                    shape: RoundedRectangleBorder(
                                      borderRadius: BorderRadius.circular(12), // <-- Radius
                                    ),
                                    elevation: 0,
                                    primary: Colors.white
                                ),
                              ),
                            ),
                          ],
                        )
                      ],
                    ),
                  ),
                ),
              ),),
              Expanded(child: Card(
                clipBehavior: Clip.antiAlias,
                shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(18)
                ),
                child: Container(
                  decoration: BoxDecoration(
                    gradient: LinearGradient(
                      colors: [
                        MyColor.Orange,
                        MyColor.Orange.withAlpha(160),
                        MyColor.Orange,
                      ],
                      begin: Alignment.topLeft,
                      end: Alignment.bottomRight,
                    ),
                  ),
                  width: double.infinity,
                  child: Padding(
                    padding: const EdgeInsets.all(18.0),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Card(
                          color: Colors.orange,
                          child: Padding(
                            padding: EdgeInsets.all(10),
                            child: Text("S", style: TextStyle(color: Colors.white),),
                          ),
                        ),
                        SizedBox(height: 10,),
                        Text("Software\nDevelopment", style: TextStyle(color: Colors.white, fontWeight: FontWeight.bold, fontSize: 16),),
                        SizedBox(height: 10,),
                        Row(
                          children: [
                            Icon(Icons.menu_book,color: Colors.white,),
                            SizedBox(width: 5,),
                            Text("10 Lessons", style: TextStyle(color: Colors.white, fontWeight: FontWeight.normal),),
                          ],
                        ),
                        SizedBox(height: 10,),
                        Row(
                          children: [
                            Expanded(child: Text("\$10", style: TextStyle(color: Colors.white, fontWeight: FontWeight.bold, fontSize: 18),)),
                            Expanded(
                              child: ElevatedButton(
                                onPressed: () {},
                                child: Row(
                                  mainAxisSize: MainAxisSize.min,
                                  children: [
                                    Text('Join', style: TextStyle(color: Colors.orange),),
                                    Icon(Icons.arrow_forward_ios_sharp, size: 10, color: Colors.orange,)
                                  ],
                                ),
                                style: ElevatedButton.styleFrom(
                                    shape: RoundedRectangleBorder(
                                      borderRadius: BorderRadius.circular(12), // <-- Radius
                                    ),
                                    elevation: 0,
                                    primary: Colors.white
                                ),
                              ),
                            ),
                          ],
                        )
                      ],
                    ),
                  ),
                ),
              ),),
            ],
          )
        ],
      ),
      bottomNavigationBar: CubertoBottomBar(
        key: Key("BottomBar"),
        inactiveIconColor: Colors.grey,
        tabStyle: CubertoTabStyle.STYLE_FADED_BACKGROUND, // By default its CubertoTabStyle.STYLE_NORMAL
        selectedTab: currentPage, // By default its 0, Current page which is fetched when a tab is clickd, should be set here so as the change the tabs, and the same can be done if willing to programmatically change the tab.
        drawer: CubertoDrawer(), // By default its NO_DRAWER (Availble START_DRAWER and END_DRAWER as per where you want to how the drawer icon in Cuberto Bottom bar)
        tabs: tabs
            .map((value) => TabData(
            key: Key(value.title),
            iconData: value.icon,
            title: value.title,
            tabColor: value.color,
            tabGradient: value.gradient))
            .toList(),
        onTabChangedListener: (position, title, color) {
          setState(() {
            currentPage = position;
          });
        },
      ),
    );
  }
}
