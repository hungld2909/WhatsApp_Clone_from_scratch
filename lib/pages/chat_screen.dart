import 'package:flutter/material.dart';
import 'package:WhatsApp_Clone_from_scratch/models/chat_model.dart';
// import '../models/chat_model.dart';  //! dùng cả 2 cách đều được
class ChatsSCreen extends StatefulWidget {

  @override
  _ChatsSCreenState createState() => _ChatsSCreenState();
}

class _ChatsSCreenState extends State<ChatsSCreen> {
  @override
  Widget build(BuildContext context) {
    return new ListView.builder(
      itemCount: dummyData.length,
      itemBuilder: (context,index) =>Column(
        children: <Widget>[
          new Divider(height: 10.0,),
          ListTile(
            leading: new CircleAvatar(
              foregroundColor: Theme.of(context).primaryColor,
              backgroundColor: Colors.grey,
              backgroundImage: new NetworkImage(dummyData[index].avatarUrl),
            ),
            title: new Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: <Widget>[
                new Text(dummyData[index].name,style: new TextStyle(fontWeight: FontWeight.bold),),
                new Text(dummyData[index].time,style: new TextStyle(color: Colors.grey,fontSize: 14.0),)
              ],
            ),
            subtitle: Container(
              padding: const EdgeInsets.only(top: 10.0),
              child: new Text(dummyData[index].message,style: new TextStyle(fontWeight: FontWeight.w400,fontSize: 15.0),),
            )
          )
        ],
      ),
      );
  }
}