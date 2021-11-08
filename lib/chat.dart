
import 'package:flutter/material.dart';

class Chat extends StatelessWidget {
  List<String> names = ['Ali', 'Mahboob','Mubeen','Usman','Adeel','Aftab','Shahbaz','Sufain','Mazhar','Irfan'];
  List<String> message =['Hello','How are you','Fine','okay','Hello','How are you','Fine','okay','Busy','Free'];
  List<String> lastseen =['online','5mint','10mint','2mint','1mint','1hour','2hour','online','2min','10min'];
  List<String> image =['assets/images/1.jpg','assets/images/2.jpg','assets/images/3.jpg','assets/images/4.jpg',
    'assets/images/5.jpg','assets/images/6.jpg','assets/images/7.jpg','assets/images/8.jpg','assets/images/9.jpg',
    'assets/images/10.jpg'];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Messages'),
        foregroundColor: Colors.white,
        backgroundColor: Colors.greenAccent,
      ),
      body: ListView.builder(
        itemCount: names.length,
        itemBuilder: (context, index)
          {
            return customCard(imageUrl: image[index],username: names[index], message: message[index],lastSeen: lastseen[index]);
          }
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
