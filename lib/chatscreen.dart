
import 'package:flutter/material.dart';

class ChatScreen extends StatelessWidget {
  const ChatScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Messages'),
        foregroundColor: Colors.white,
        backgroundColor: Colors.greenAccent,
      ),
      body: SingleChildScrollView(
        child: Center(
         child: Column(
           children: <Widget>[
             customCard(imageUrl: 'assets/images/1.jpg',username: 'Mirza Mahboob',message: 'Message text',lastSeen: 'online'),
           ],
         ),
        ),
      ),
    );
  }
  Widget customCard({String? imageUrl, String? username, String? message, String? lastSeen})
  {
    return Card(
      elevation: 10.0,
      child: ListTile(
        leading: CircleAvatar(
          backgroundImage: AssetImage('$imageUrl'),
          radius: 23.0,
        ),
        title: Text('$username'),
        subtitle: Text('$message'),
        trailing: Text('$lastSeen'),
      ),
    );
  }
}
