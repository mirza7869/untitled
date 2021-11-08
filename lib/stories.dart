
import 'package:flutter/material.dart';

class Stories extends StatelessWidget {
  const Stories({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Insta stories'),
      ),
      body: Center(
        child: Container(
          child: Column(
            children: <Widget>[
              Expanded(
                  child: storyList()
              ),
            ],
          ),
        ),
      ),
    );
  }

  storyList()
  {
    return ListView.builder(
      itemCount: 200,
        scrollDirection: Axis.horizontal,
        itemBuilder: (context,index)
        {
          return story(imageUrl: 'assets/images/1.jpg',username: 'Mirza Mahboob');
        }
    );
  }

  story({String? imageUrl, String? username})
  {
    return Container(
      margin: const EdgeInsets.symmetric(horizontal: 2.0),
      padding: const EdgeInsets.all(8.0),
      width: 80,
      height: 110,
      color: Colors.transparent,
        child: Column(
          children: <Widget>[
            CircleAvatar(
              radius: 35,
              backgroundColor: Colors.orange,
              child: CircleAvatar(
                radius: 33,
                backgroundColor: Colors.black,
                child: CircleAvatar(
                  radius: 31,
                  backgroundImage: AssetImage('$imageUrl'),
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(top: 8.0),
              child: Text('$username'),
            )
          ],
        ),
    );
  }
}
