
import 'package:flutter/material.dart';

class Second extends StatelessWidget {
  const Second({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Second Screen'),
      ),
      body: Container(
        child: Column(
          children: <Widget>[
            const Text('Hello'),
            const Text('Hello'),
            const Text('Hello'),
            const Text('Hello'),
            const Text('Hello'),
            Container(
              margin: const EdgeInsets.only(bottom: 5.0),
              width: MediaQuery.of(context).size.width,
              height: 60.0,
              color: Colors.blue,
            ),
            Container(
              margin: const EdgeInsets.only(bottom: 5.0),
              width: MediaQuery.of(context).size.width,
              height: 60.0,
              color: Colors.blue,
            ),
            Container(
              margin: const EdgeInsets.only(bottom: 5.0),
              width: MediaQuery.of(context).size.width,
              height: 60.0,
              color: Colors.blue,
            ),
            Container(
              margin: const EdgeInsets.only(bottom: 5.0),
              width: MediaQuery.of(context).size.width,
              height: 60.0,
              color: Colors.blue,
            ),
            Container(
              margin: const EdgeInsets.only(bottom: 5.0),
              width: MediaQuery.of(context).size.width,
              height: 60.0,
              color: Colors.blue,
            ),
            Container(
              margin: const EdgeInsets.only(bottom: 5.0),
              width: MediaQuery.of(context).size.width,
              height: 60.0,
              color: Colors.blue,
            ),
            Container(
              margin: const EdgeInsets.only(bottom: 5.0),
              width: MediaQuery.of(context).size.width,
              height: 60.0,
              color: Colors.blue,
            ),
            Container(
              margin: const EdgeInsets.only(bottom: 5.0),
              width: MediaQuery.of(context).size.width,
              height: 60.0,
              color: Colors.blue,
            ),
           Row(
             mainAxisAlignment:  MainAxisAlignment.spaceBetween,
             children: <Widget>[
               Container(
                 width: 30,
                 height: 30,
                 color: Colors.blue,
                 margin: const EdgeInsets.only(right: 3.0),
               ),
               Container(
                 width: 30,
                 height: 30,
                 color: Colors.blue,
                 margin: const EdgeInsets.only(right: 3.0),
               ),
               Container(
                 width: 30,
                 height: 30,
                 color: Colors.blue,
                 margin: const EdgeInsets.only(right: 3.0),
               ),
               Container(
                 width: 30,
                 height: 30,
                 color: Colors.blue,
                 margin: const EdgeInsets.only(right: 3.0),
               ),
               Container(
                 width: 30,
                 height: 30,
                 color: Colors.blue,
                 margin: const EdgeInsets.only(right: 3.0),
               ),
               Container(
                 width: 30,
                 height: 30,
                 color: Colors.blue,
                 margin: const EdgeInsets.only(right: 3.0),
               ),
               Container(
                 width: 30,
                 height: 30,
                 color: Colors.blue,
                 margin: const EdgeInsets.only(right: 3.0),
               ),
               Container(
                 width: 30,
                 height: 30,
                 color: Colors.blue,
                 margin: const EdgeInsets.only(right: 3.0),
               ),
               Container(
                 width: 30,
                 height: 30,
                 color: Colors.blue,
                 margin: const EdgeInsets.only(right: 3.0),
               ),
               Container(
                 width: 30,
                 height: 30,
                 color: Colors.blue,
                 margin: const EdgeInsets.only(right: 3.0),
               ),
             ],
           ),
          ],
        ),
      ),
    );
  }
}
