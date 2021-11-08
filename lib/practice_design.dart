
import 'package:flutter/material.dart';

class PractiseDesign extends StatelessWidget {
  const PractiseDesign({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
      appBar: AppBar(
        title: Column(
          children: const <Widget>[
            Text('Hi,Mirza Mahboob'),
            Text('October 20, 2021', style: TextStyle(fontSize: 12),)
          ],
        ),
        actions:  <Widget> [
          Container(
            decoration: const BoxDecoration(
              color: Colors.grey,
              shape: BoxShape.circle,
            ),
            child: IconButton(
              onPressed: (){},
              icon: const Icon(Icons.notifications),
              highlightColor: Colors.grey,
            ),
          )
        ],

        backgroundColor: Colors.black,

      ),

      body: Container(
        margin: const EdgeInsets.symmetric(horizontal: 15.0, vertical: 20.0),
        child: SingleChildScrollView(
          child: Column(
            children: <Widget>[
              Container(
                width: MediaQuery.of(context).size.width,
                padding: const EdgeInsets.symmetric(horizontal: 20.0,vertical: 15.0),
                height: 200,
                decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.circular(15.0)
                ),
                child: Column(
                  children: <Widget>[
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: const <Widget>[
                        Text('Total Balance',),
                        CircleAvatar(
                          radius: 30,
                          backgroundImage: AssetImage('assets/images/1.jpg'),
                        )
                      ],
                    ),
                    Container(
                      alignment: Alignment.centerLeft,
                        child: const Text('Rs. 24,512', style: TextStyle(fontSize: 35,fontWeight: FontWeight.bold ),)
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: <Widget>[
                        const Text('**** 5860'),
                        ElevatedButton(
                          style: ButtonStyle(
                            backgroundColor: MaterialStateProperty.all(Colors.black),
                          ),
                            onPressed: (){},
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: const <Widget>[
                                Text('USD'),
                                SizedBox(width: 3.0,),
                                Icon(Icons.keyboard_arrow_down)
                              ],
                            ),
                        ),
                      ],
                    ),
                  ],
                ),
              ),


              Container(
                margin: const EdgeInsets.symmetric(horizontal: 20.0,vertical: 30.0),
                child: Column(
                  children: <Widget>[
                    Container(
                      alignment: Alignment.centerLeft,
                        child:const Text('Statistics', style:  TextStyle(color: Colors.white,fontSize: 30,fontWeight: FontWeight.bold),)
                    ),
                    const SizedBox(height: 10.0,),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: <Widget>[
                        Container(
                          width: MediaQuery.of(context).size.width/1.8,
                          height: 15.0,
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(15.0),
                            color: Colors.grey.shade800,
                          ),
                          child: Container(
                            width: MediaQuery.of(context).size.width/2.5,
                            height: 15.0,
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(15.0),
                              color: Colors.white,
                            ),
                          ),
                        ),
                        const Text('Rs. 103.04', style: TextStyle(color: Colors.white, fontWeight: FontWeight.bold),),
                      ],
                    ),
                    const SizedBox(height: 20,),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: const<Widget>[
                        Text('Rs. 10,590 Expenses', style: TextStyle(color: Colors.white, fontWeight: FontWeight.bold),),
                        Text('Available', style: TextStyle(color: Colors.white, fontWeight: FontWeight.bold),),
                      ],
                    ),
                  ],
                ),
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children:const <Widget> [
                  Text('Transaction', style: TextStyle(color: Colors.white, fontWeight: FontWeight.bold),),
                  Icon(Icons.arrow_forward_outlined, color: Colors.white,),
                ],
              ),
              const SizedBox(height: 20,),
              Container(
                  child: Column(
                    children: <Widget>[
                      customCard(imageUrl: 'assets/images/1.jpg',username: 'Mirza Mahboob',message: 'Message text',lastSeen: 'online'),
                      customCard(imageUrl: 'assets/images/1.jpg',username: 'Mirza Mahboob',message: 'Message text',lastSeen: 'online'),
                      customCard(imageUrl: 'assets/images/1.jpg',username: 'Mirza Mahboob',message: 'Message text',lastSeen: 'online'),
                      customCard(imageUrl: 'assets/images/1.jpg',username: 'Mirza Mahboob',message: 'Message text',lastSeen: 'online'),
                      customCard(imageUrl: 'assets/images/1.jpg',username: 'Mirza Mahboob',message: 'Message text',lastSeen: 'online'),
                      customCard(imageUrl: 'assets/images/1.jpg',username: 'Mirza Mahboob',message: 'Message text',lastSeen: 'online'),
                    ],
                  ),
                ),
            ],
          ),
        ),
      ),
    );
  }
  Widget customCard({String? imageUrl, String? username, String? message, String? lastSeen})
  {
    return Card(
      color: Colors.black,
      elevation: 10.0,
      child: ListTile(
        leading: CircleAvatar(
          backgroundImage: AssetImage('$imageUrl'),
          radius: 23.0,
        ),
        title: Text('$username',style: const TextStyle(color: Colors.white),),
        subtitle: Text('$message',style: const TextStyle(color: Colors.white),),
        trailing: Text('$lastSeen',style: const TextStyle(color: Colors.white),),
      ),
    );
  }
}
