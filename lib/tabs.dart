import 'package:flutter/material.dart';

class TabScreen extends StatefulWidget {
  const TabScreen({Key? key}) : super(key: key);

  @override
  _TabScreenState createState() => _TabScreenState();
}

class _TabScreenState extends State<TabScreen> with SingleTickerProviderStateMixin{
  late TabController tabController;

  @override
  void initState() {
    tabController = TabController(length: 4, vsync: this);
    super.initState();
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Whatsapp'),
        actions: <Widget>[
          IconButton(
              onPressed: (){},
              icon: const Icon(Icons.wifi),
          ),
          IconButton(
            onPressed: (){},
            icon: const Icon(Icons.wb_sunny),
          ),
          IconButton(
            onPressed: (){},
            icon: const Icon(Icons.search),
          ),
          IconButton(
            onPressed: (){},
            icon: const Icon(Icons.more_vert_outlined),
          ),
        ],
        backgroundColor: Colors.green.shade800,
        bottom: TabBar(
          controller: tabController,
          tabs: const [
            Tab(icon: Icon(Icons.camera_alt),),
            Tab(text: 'CHAT',),
            Tab(text: 'STATUS',),
            Tab(text: 'CALLS',),
          ],
        ),
      ),
     body: Center(
       child: TabBarView(
         controller: tabController,
         children: const <Widget>[
           Center(child: Text('Camera'),),
           Center(child: Text('CHAT'),),
           Center(child: Text('STATUS'),),
           Center(child: Text('CALLS'),),
         ],
       ),
     ),
    );
  }
}
