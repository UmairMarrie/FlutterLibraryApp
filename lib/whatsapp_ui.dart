
import 'package:flutter/material.dart';

class WhatsappUi extends StatelessWidget {
  const WhatsappUi({super.key});

  @override
  Widget build(BuildContext context) {
    return DefaultTabController(length: 3, child: Scaffold(
      appBar: AppBar(
        title: Text("Whatsapp",style: TextStyle(color: Colors.white),),
          backgroundColor: Colors.teal,
          actions: [PopupMenuButton(
             icon: Icon(Icons.menu),
              itemBuilder: (context) => [
            PopupMenuItem(child: Text("New Group"),
            ),
                PopupMenuItem(child: Text("Setting")),
                PopupMenuItem(child: Text("Account")),
          ])],

          bottom: TabBar(tabs: [
           // Icon(Icons.camera_alt_outlined),
            Tab(child: Text("Chats")),
          Tab(child: Text("Status")),
              Tab(child: Text("Calls")),

          ])
      ),

      body: TabBarView(
        children: [
                 MyList(title: "Umair",subtitle: "hi umair",trail: "5pm",),
                 MyList(title: "Status", subtitle: "status", trail: "6pm"),
                 MyList(title: "Calls", subtitle: "My calls", trail: "7pm"),
                  
                 
          

     
    
        ],
      ),
    ),
    );
  }
}



class MyList extends StatelessWidget {
  final String title,subtitle,trail;
  const MyList({super.key,required this.title,required this.subtitle,required this.trail});

  @override
  Widget build(BuildContext context) {
    return  ListView.builder(
          itemCount: 10,
          itemBuilder: (context,index){
            return ListTile(
              leading: Icon(Icons.person),
              title: Text(title),
              subtitle: Text(subtitle),
              trailing: Text(trail),
            );
          });
  }
}