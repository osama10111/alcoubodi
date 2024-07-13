import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatefulWidget {
  const MyApp({super.key});
  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> with SingleTickerProviderStateMixin {
  TabController? tabController;

  @override
  void initState() {
    tabController = TabController(length: 3, vsync: this);
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home:
          //    DefaultTabController(
          // length: 3,
          // initialIndex: 2,
          // child:
          Scaffold(
        appBar: AppBar(
          title: const Text("tabbar"),
          bottom: TabBar(
              controller: tabController,
              indicatorColor: Colors.cyanAccent,
              indicatorWeight: 5,
              labelColor: Colors.deepPurple,
              labelStyle: TextStyle(fontSize: 15),
              unselectedLabelColor: Colors.black,
              unselectedLabelStyle: TextStyle(fontSize: 12),
              tabs: [
                Tab(
                  iconMargin: EdgeInsets.all(10),

                  // child: Text("YALLASHOOT"),
                  icon: Icon(Icons.laptop),
                  text: "YALLA SHOOT",
                ),
                Tab(
                  iconMargin: EdgeInsets.all(10),
                  icon: Icon(Icons.mobile_friendly),
                  text: "KORA LIVE",
                  // child: Text("KORA LIVE"),
                ),
                Tab(
                  iconMargin: EdgeInsets.all(10),
                  icon: Icon(Icons.account_circle_outlined),
                  text: "KORA STAR",

                  // child: Text("KORA STAR"),
                )
              ]),
        ),
        body: Container(
          padding: const EdgeInsets.all(10),
          child: TabBarView(controller: tabController, children: [
            Column(
              children: [
                MaterialButton(
                  onPressed: () {
                    tabController!.animateTo(1);
                  },
                  child: Text("KORA LIVE Page "),
                ),
              ],
            ),
            Column(
              children: [
                MaterialButton(
                  onPressed: () {
                    tabController!.animateTo(2);
                  },
                  child: Text("KORA STAR Page "),
                ),
              ],
            ),
            Column(
              children: [
                MaterialButton(
                  onPressed: () {
                    tabController!.animateTo(0);
                  },
                  child: Text("YALLA SHOOT Page "),
                ),
              ],
            ),
          ]),
        ),
      ),
      // )
    );
  }
}
