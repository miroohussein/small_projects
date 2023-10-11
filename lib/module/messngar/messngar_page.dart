import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class MessngarPage extends StatelessWidget {
  const MessngarPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        backgroundColor: Colors.white,
        elevation: 0.0,
        titleSpacing: 20.0,
        title: Row(
          children: [
            CircleAvatar(
              radius: 20.0,
              backgroundImage: NetworkImage(
                  'https://static.vecteezy.com/system/resources/previews/012/941/847/original/illustration-of-avatar-girl-nice-smiling-woman-with-black-hair-flat-icon-on-purple-background-vector.jpg'),
            ),
            SizedBox(
              width: 10.0,
            ),
            Text(
              'Chats',
              style:
                  TextStyle(color: Colors.black, fontWeight: FontWeight.w900),
            ),
          ],
        ),
        actions: [
          IconButton(
              onPressed: () {},
              icon: CircleAvatar(
                  radius: 17.0,
                  backgroundColor: Colors.grey.shade600,
                  child: Icon(
                    Icons.camera_alt,
                    color: Colors.grey.shade200,
                    size: 16.0,
                  ))),
          IconButton(
              onPressed: () {},
              icon: CircleAvatar(
                  radius: 17.0,
                  backgroundColor: Colors.grey.shade600,
                  child: Icon(
                    Icons.edit,
                    color: Colors.grey.shade200,
                    size: 17.0,
                  ))),
        ],
      ),
      body: Padding(
        padding: const EdgeInsets.all(20.0),
        child: SafeArea(
          child: SingleChildScrollView(
            child: Column(
              children: [
                SizedBox(
                  height: 10.0,
                ),
                Container(
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(10.0),
                    color: Colors.grey[200],
                  ),
                  child: Row(
                    children: [
                      IconButton(
                          onPressed: () {},
                          icon: Icon(
                            Icons.search,
                            color: Colors.grey.shade600,
                          )),
                      Text(
                        'Search',
                        style: TextStyle(color: Colors.grey.shade600),
                      ),
                    ],
                  ),
                ),
                SizedBox(
                  height: 8.0,
                ),
                Container(
                  height: 110.0,
                  child: ListView.separated(
                    // shrinkWrap: true,
                    itemBuilder: (context, index) => buildStoryItem(),
                    scrollDirection: Axis.horizontal,
                    itemCount: 10,
                    separatorBuilder: (context,index)=>SizedBox(width: 10.0,),
                  ),
                ),
                SizedBox(
                  height: 8.0,
                ),
                Container(
                  child: ListView.separated(
                    shrinkWrap: true,
                    physics: NeverScrollableScrollPhysics(),
                    itemBuilder: (context, index) => buildChatItem(),
                    itemCount: 12,
                    separatorBuilder: (context,inex)=>Container(height: 2.0,width: double.infinity, decoration:BoxDecoration(color: Colors.grey[200]),),
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
      bottomNavigationBar: Row(),
    );
  }

  // Arrow Function
  Widget buildChatItem() => Padding(
    padding: const EdgeInsets.all(8.0),
    child: Row(
          children: [
            Stack(
              alignment: AlignmentDirectional.bottomEnd,
              children: [
                CircleAvatar(
                  radius: 30.0,
                  backgroundImage: NetworkImage(
                      'https://dfcdn.defacto.com.tr/7/Y2383AZ_22WN_RD30_02_01.jpg',),
                ),
                Stack(
                  alignment: Alignment.center,
                  children: [
                    CircleAvatar(
                      backgroundColor: Colors.white,
                      radius: 9.0,
                    ),
                    CircleAvatar(
                      backgroundColor: Colors.green[400],
                      radius: 7.0,
                    ),
                  ],
                )
              ],
            ),
            SizedBox(
              width: 20.0,
            ),
            Expanded(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    'Marwa Hussein ',
                    style: TextStyle(
                        fontSize: 20.0,
                        fontWeight: FontWeight.bold,
                        color: Colors.black87),
                    maxLines: 1,
                    overflow: TextOverflow.ellipsis,
                  ),
                  Row(
                    children: [
                      Expanded(
                        child: Text(
                          "Hi! My name is Marwa nice to meet you",
                          maxLines: 1,
                          overflow: TextOverflow.ellipsis,
                        ),
                      ),
                      SizedBox(
                        width: 12.0,
                      ),
                      Padding(
                        padding: const EdgeInsets.symmetric(horizontal: 8.0),
                        child: Container(
                          width: 7.0,
                          height: 7.0,
                          decoration: BoxDecoration(
                              color: Colors.blue, shape: BoxShape.circle),
                        ),
                      ),
                      Text('10:45'),
                    ],
                  ),
                ],
              ),
            ),
          ],
        ),
  );

  Widget buildStoryItem() => Container(
        width: 60.0,
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Padding(
              padding: const EdgeInsetsDirectional.only(start: 10.0),
              child: Stack(
                alignment: AlignmentDirectional.bottomEnd,
                children: [
                  CircleAvatar(
                    radius: 30.0,
                    backgroundImage: NetworkImage(
                        'https://dfcdn.defacto.com.tr/7/Z5926AZ_22AU_RD227_01_01.jpg'),
                  ),
                  Stack(
                    alignment: Alignment.center,
                    children: [
                      CircleAvatar(
                        backgroundColor: Colors.white,
                        radius: 9.0,
                      ),
                      CircleAvatar(
                        backgroundColor: Colors.green[400],
                        radius: 7.0,
                      ),
                    ],
                  )
                ],
              ),
            ),
            SizedBox(
              height: 6.0,
            ),
            Text(
              'Marwa Hussein Shawky',
              maxLines: 2,
              overflow: TextOverflow.ellipsis,
            )
          ],
        ),
      );
}
