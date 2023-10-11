import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class CounterScreen extends StatefulWidget {
  @override
  State<CounterScreen> createState() => _CounterScreenState();
}

class _CounterScreenState extends State<CounterScreen> {
  int number = 1 ;

  @override
  void initState() {
    super.initState();
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title:Text('Counter'),
      ),
      body: Center(
        child: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            TextButton(onPressed: (){
              setState(() {
                number--;
                print(number);
              });
            },
            child: Text('Minus',style: TextStyle(
              fontSize: 30.0
            ),),),

            Text('$number',
              style:TextStyle(
                  fontWeight: FontWeight.bold,
                  fontSize: 40.0,
                  color: Colors.black87),),
            TextButton(
              onPressed: (){
               setState(() {
                 number++;
                 print(number);
               });
              },
              child: Text(
                'Plus',
                style: TextStyle(
                fontSize: 30.0
              ),),),
          ],
        ),
      ),

    );
  }
}
