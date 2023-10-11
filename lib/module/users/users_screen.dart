import 'package:flutter/material.dart';

import '../../model/user_model.dart';


class UsersScreen extends StatelessWidget {

  List<UsersModel> listOfUseres = [
    UsersModel(id: 1,
        name: 'Marwa Hussein',
        phone: '01024547862263'
    ),
    UsersModel(id: 2,
        name: 'Ahmed Ali',
        phone: '01024569874'
    ),
    UsersModel(id: 3,
        name: 'Ali Ahmed',
        phone: '01202102102'
    ),
    UsersModel(id: 4,
        name: 'Nada Hussein',
        phone: '01024547862263'
    ),
    UsersModel(id: 5,
        name: 'Huda Hussein',
        phone: '01024547862263'
    ),
    UsersModel(id: 6,
        name: 'Rahaf Hussein',
        phone: '01024547862263'
    ),
    UsersModel(id: 7,
        name: 'Hussein',
        phone: '01024547862263'
    ),
    UsersModel(id:8,
        name: 'Salma Hussein',
        phone: '01024547862263'
    ),

    UsersModel(id:9,
        name: 'Marwa Hussein',
        phone: '01024547862263'
    ),

    UsersModel(id:10,
        name: 'Marwa Hussein',
        phone: '01024547862263'
    ),
  ];

  UsersScreen({super.key});
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.lightGreen,
        title: Text('Users'),
      ),
      body: ListView.separated(
          itemBuilder:
              (context , index){
             return usersBuildItem(index);
              },
          separatorBuilder:
              (context, index) {
           return Padding(
             padding: EdgeInsetsDirectional.symmetric(horizontal: 20.0),
             child: Container(
                height: 3.0,
                width: double.infinity,
                decoration:BoxDecoration(
                  color: Colors.grey[200]
                ),
              ),
           );
              },
          itemCount: listOfUseres.length,
      ),
    );
  }

  Widget usersBuildItem(int index)=>Padding(
    padding: const EdgeInsets.all(20.0),
    child: Row(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        CircleAvatar(
          radius: 25.0,
          child: Text(
            listOfUseres[index].id.toString(),
            style: TextStyle(fontSize: 20.0, fontWeight: FontWeight.bold),
          ),
        ),
        SizedBox(width: 10.0,),
        Expanded(
          child: Padding(
            padding: const EdgeInsets.all(8.0),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              mainAxisSize: MainAxisSize.min,
              children: [
                Text(
                  listOfUseres[index].name,
                  style: TextStyle(
                      fontSize: 20.0,
                      fontWeight: FontWeight.bold,
                      color: Colors.black87),
                  maxLines: 1,
                  overflow: TextOverflow.ellipsis,
                ),
                SizedBox(
                  height: 10.0,
                ),
                Row(
                  children: [
                    Text(
                      listOfUseres[index].phone,
                      style: TextStyle(
                          color: Colors.grey
                      ),
                      overflow: TextOverflow.ellipsis,
                      maxLines: 1,
                    ),
                  ],
                ),
              ],
            ),
          ),
        ),
      ],
    ),
  );
}
