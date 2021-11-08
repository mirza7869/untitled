
import 'package:flutter/material.dart';

class Profile extends StatelessWidget {
  const Profile({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Abdul Rehman'),
        actions: <Widget>[
          TextButton(
            onPressed: (){},
            child: Icon(Icons.add_box_outlined,color: Colors.white,),
          ),
          TextButton(
            onPressed: (){},
            child: Icon(Icons.menu,color: Colors.white,),
          )
        ],
      ),
      // backgroundColor: Colors.grey,
      body: Center(
        child: Padding(
          padding: const EdgeInsets.all(8.0),
          child: ListView(
            children: <Widget>[
              Padding(
                padding: const EdgeInsets.all(10.0),
                child: Text('View Professional Dashboard',style: TextStyle(color: Colors.blue),textAlign: TextAlign.center,),
              ),
              Divider(thickness: 2,),
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: <Widget>[
                    CircleAvatar(
                      backgroundImage: AssetImage('assets/images/1.jpg'),
                      radius: 40,
                    ),
                    Column(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: <Widget>[
                        Text('17',style: TextStyle(fontWeight: FontWeight.bold,fontSize: 20),),
                        Text('Posts',style: TextStyle(fontWeight: FontWeight.bold, fontSize: 20),)
                      ],
                    ),
                    Column(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: <Widget>[
                        Text('84',style: TextStyle(fontWeight: FontWeight.bold,fontSize: 20),),
                        Text('Followers',style: TextStyle(fontWeight: FontWeight.bold, fontSize: 20),)
                      ],
                    ),
                    Column(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: <Widget>[
                        Text('89',style: TextStyle(fontWeight: FontWeight.bold,fontSize: 20),),
                        Text('Following',style: TextStyle(fontWeight: FontWeight.bold, fontSize: 20),)
                      ],
                    ),
                  ],
                ),

              ),
              Text('Abdul Rehman'),
              Text('Keep smile, Keep alive'),
              Text('Okara, Punjab, Pakistan'),
              ElevatedButton(onPressed: (){},
                  child: Text('Edit Profile')
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: <Widget>[
                  ElevatedButton(onPressed: (){},
                      child: Text('Ad Tools')
                  ),
                  ElevatedButton(onPressed: (){},
                      child: Text('Insignts')
                  ),
                  ElevatedButton(onPressed: (){},
                      child: Text('Contact')
                  )
                ],
              )
            ],
          ),
        ),
      ),
    );
  }
}
