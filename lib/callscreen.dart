
import 'package:flutter/material.dart';

class CallScreen extends StatelessWidget {
  const CallScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Container(
          padding: EdgeInsets.all(15.0),
          child: Column(
            children: <Widget>[
              SizedBox(height: 40.0,),
              CircleAvatar(
                backgroundColor: Colors.red,
                radius: 50,
                child: Icon(Icons.person,size: 80,color: Colors.white,),
              ),
              SizedBox(height: 30,),
              Text('03089098067',style: TextStyle(fontSize: 30, fontWeight: FontWeight.bold),),
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: Text('00:02',style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),),
              ),
              SizedBox(height: 80,),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: <Widget>[
                  Column(
                    children: <Widget>[
                      IconButton(
                          onPressed: ()
                          {
                            print('Icon Button Pressed');
                          },
                          icon: Icon(Icons.mic_off, size: 35,)
                      ),
                      Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: Text('Mute', style: TextStyle(fontWeight: FontWeight.bold),),
                      )
                    ],
                  ),
                  Column(
                    children: <Widget>[
                      IconButton(
                          onPressed: ()
                          {
                            print('Icon Button Pressed');
                          },
                          icon: Icon(Icons.dialpad, size: 35,)
                      ),
                      Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: Text('Keypad', style: TextStyle(fontWeight: FontWeight.bold),),
                      )
                    ],
                  ),
                  Column(
                    children: <Widget>[
                      IconButton(
                          onPressed: ()
                          {
                            print('Icon Button Pressed');
                          },
                          icon: Icon(Icons.volume_up, size: 35,)
                      ),
                      Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: Text('Speaker', style: TextStyle(fontWeight: FontWeight.bold),),
                      )
                    ],
                  )
                ],
              ),
              SizedBox(height: 40,),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: <Widget>[
                  Column(
                    children: <Widget>[
                      IconButton(
                          onPressed: ()
                          {
                            print('Icon Button Pressed');
                          },
                          icon: Icon(Icons.add_call, size: 35,)
                      ),
                      Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: Text('Add Call', style: TextStyle(fontWeight: FontWeight.bold),),
                      )
                    ],
                  ),
                  Column(
                    children: <Widget>[
                      IconButton(
                          onPressed: ()
                          {
                            print('Icon Button Pressed');
                          },
                          icon: Icon(Icons.pause, size: 35,)
                      ),
                      Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: Text('Hold', style: TextStyle(fontWeight: FontWeight.bold),),
                      )
                    ],
                  ),
                  Column(
                    children: <Widget>[
                      IconButton(
                          onPressed: ()
                          {
                            print('Icon Button Pressed');
                          },
                          icon: Icon(Icons.record_voice_over, size: 35,)
                      ),
                     const Padding(
                        padding:  EdgeInsets.all(8.0),
                        child: Text('Record', style: TextStyle(fontWeight: FontWeight.bold),),
                      )
                    ],
                  )
                ],
              ),
              SizedBox(height: 160,),
              CircleAvatar(
                backgroundColor: Colors.red,
                radius: 33,
                child: IconButton(
                    onPressed: (){
                      print('call end button pressed');
                    },
                    icon: Icon(Icons.call_end, size: 30,color: Colors.white,),

                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
