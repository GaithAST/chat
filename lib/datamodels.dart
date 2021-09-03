import 'package:flutter/material.dart';

class Users extends StatelessWidget{
  Widget buildUserItem() => Padding(
    padding: EdgeInsets.all(10),
    child: Row(
        mainAxisAlignment: MainAxisAlignment.start,
        crossAxisAlignment: CrossAxisAlignment.start
        ,
        children: [
          CircleAvatar(
            radius: 25,
            backgroundColor: Colors.blueAccent,
            child: Text('1',style: TextStyle(fontWeight: FontWeight.bold,fontSize: 25)),
          ),
          SizedBox(width: 20,),
          Column(

              mainAxisSize: MainAxisSize.min,
              mainAxisAlignment: MainAxisAlignment.start,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Padding(padding: EdgeInsets.fromLTRB(0, 8, 0, 0),child: Text('Gaith Talahmeh',style :TextStyle(fontWeight: FontWeight.bold,fontSize: 20))),
                Text('+966 53 687 3423',style: TextStyle(fontWeight: FontWeight.normal, color: Colors.grey))
              ])
        ]),
  );
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.blue,
        title: Text('Contacts'),
      ),
      body: ListView.separated(itemBuilder: (context, index) => buildUserItem(), separatorBuilder: (context, index) => Padding(padding: EdgeInsets.symmetric(vertical: 10),
        child: Container(width: double.infinity,
          height: 1,
          color: Colors.grey[300],
        ),
      ), itemCount: 20)

    );


  }
  
}