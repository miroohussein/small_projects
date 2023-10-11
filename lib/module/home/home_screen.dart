import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class HomeScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.teal,
        leading: IconButton(
          icon: Icon(Icons.menu),
          onPressed: () {
            print(" you clicled MENU");
          },
        ),
        title: Text('Home'),
        actions: [
          IconButton(onPressed: onPressed, icon: Icon(Icons.notifications)),
          IconButton(
              onPressed: () {
                print('You clicked search');
              },
              icon: Icon(Icons.search)),
        ],
      ),
      body: Container(
        width: double.infinity,
        color: Colors.grey,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          mainAxisSize: MainAxisSize.max,
          children: [
            Expanded(
              child: Container(
                color: Colors.amber,
                child: Text(
                  'First text',
                  style: TextStyle(
                      color: Colors.deepOrange ,
                      fontSize: 30.0),),
              ),
            ) ,
            Expanded(
              child: Container(
                color: Colors.black87,
                child: Text(
                  'First text',
                  style: TextStyle(
                      color: Colors.deepOrange ,
                      fontSize: 30.0),),
              ),
            ),
            Expanded(
              child: Container(
                color: Colors.white,
                child: Text(
                  'First text',
                  style: TextStyle(
                      color: Colors.deepOrange ,
                      fontSize: 30.0),),
              ),
            ),
          ],
        ),
      ),
    );
  }

  void onPressed() {
    print(" you get there!! ");
  }
}
