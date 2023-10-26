import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:tryagain/module/counter/cubit/cubit.dart';
import 'package:tryagain/module/counter/cubit/state.dart';

class CounterScreen extends StatelessWidget {
  @override
  int number = 1 ;

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (BuildContext context)=>CounterCubit(),
      child: BlocConsumer<CounterCubit,CounterStates>(
       listener: (context , state){},
        builder: (context , state){
         return Scaffold(
           appBar: AppBar(
             title:Text('Counter'),
           ),
           body: Center(
             child: Row(
               mainAxisAlignment: MainAxisAlignment.center,
               children: [
                 TextButton(onPressed: (){
                   CounterCubit.get(context).minus();
                   print(number);
                 },
                   child: Text('Minus',style: TextStyle(
                       fontSize: 30.0
                   ),),),

                 Text('${CounterCubit.get(context).counter}',
                   style:TextStyle(
                       fontWeight: FontWeight.bold,
                       fontSize: 40.0,
                       color: Colors.black87),),
                 TextButton(
                   onPressed: (){
                     CounterCubit.get(context).plus();
                     print(number);
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
        },
      ),
    );
  }
}

