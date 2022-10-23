import 'package:flutter/material.dart';
import 'package:untitled4_semana7/pages/call_page.dart';
import 'package:untitled4_semana7/pages/chat_page.dart';
import 'package:untitled4_semana7/pages/status_page.dart';

class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> with SingleTickerProviderStateMixin{
  TabController? _tabController ;
  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    _tabController = TabController(length: 4, vsync: this);
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("WhatsApp"),
        actions: [
          IconButton(onPressed: () {}, icon: Icon(Icons.search)),
          IconButton(onPressed: () {}, icon: Icon(Icons.more_vert)),
        ],
        bottom: TabBar(tabs: [
          Tab(
            icon: Icon(Icons.camera_alt),
          ),
          Tab(
            child: Text("CHAT",
            style: TextStyle(
              fontWeight: FontWeight.bold,
            ),),
          ),
          Tab(
            child: Text("STATUS",
              style: TextStyle(
                fontWeight: FontWeight.bold,
              ),),
          ),
          Tab(
            child: Text("CALLS",
              style: TextStyle(
                fontWeight: FontWeight.bold,
              ),),
          ),

        ],
        controller: _tabController,
        indicatorColor: Colors.white ,
        indicatorWeight: 3.5,),
        ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {

        },
        child: Icon(Icons.message),
      ),
      body: TabBarView(children:[
        Center(child: Text("Camera",)),
        ChatPage(),
        StatusPages(),
        CallPage(),

      ] ,
      controller: _tabController,),
    );
  }
}
