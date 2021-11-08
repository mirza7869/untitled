
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class First extends StatelessWidget {
  const First({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        automaticallyImplyLeading: false,
        title: const Text("First Screen"),
        leading: IconButton(
          onPressed: ()
          {
            print('Menu Button Pressed');
          },
          icon: Icon(Icons.menu),
        ),
        actions: <Widget>[
          IconButton(
            onPressed: ()
            {
              print('Menu Button Pressed');
            },
            icon: Icon(Icons.search),
          ),
          IconButton(
            onPressed: ()
            {
              print('Menu Button Pressed');
            },
            icon: Icon(Icons.email_outlined),
          ),
        ],
        flexibleSpace: Container(
          height: 50,
        ),
       elevation: 20.0,
        shape: const RoundedRectangleBorder(
          borderRadius: BorderRadius.only(bottomLeft: Radius.circular(10.0),
              bottomRight: Radius.circular(10.0))
        ),
        centerTitle: true,
        backgroundColor: Colors.blueGrey,
        foregroundColor: Colors.black,
      ),

      body: Center(
        child: Container(
          padding: const EdgeInsets.all(10.0),
          margin: const EdgeInsets.all(10.0),
          width: 150.0,
          height: 150.0,
          alignment: Alignment.center,
          decoration:  BoxDecoration(
            color: Colors.blue,
            // shape: BoxShape.circle
            borderRadius: BorderRadius.circular(12),
            border: Border.all(width: 3.0, color: Colors.red)
          ),
          child: const Text(
            'Hello World jkhajksdhfjkha fakjsd fh aksdjfhajk sfkajhsdfjk ashdfjkhasjkdhfkjashfkjashd fjkhasjkdh fjkasdh fjkasdhf',
            style: TextStyle(fontFamily: 'Verdana ',fontSize: 20, fontWeight: FontWeight.bold, fontStyle: FontStyle.italic),
            textAlign: TextAlign.right,
            overflow: TextOverflow.ellipsis,
            textScaleFactor: 1.0,
          ),
        ),
      ),
    );
  }
}
