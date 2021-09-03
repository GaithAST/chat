import 'package:flutter/material.dart';
import 'dart:math';
class UserModel {
  String name;
  String phoneNumber;
  String setID() {
    String id = '';
    id = name[0] + name[1];
    return id;
  }
  late String id = setID();


  UserModel({
    required this.name,
    required this.phoneNumber,
  });
}
List<UserModel> setIDx() {
  List<UserModel> HEllo = [];
  for (int i= 0; i < 20; i++) {
    List currentnumber = ['+'];
    int y = Random().nextInt(899) + 1;
    String x = "$y";
    currentnumber.add(x);
    for (int j =0; j < 9; j++) {
      String y = (Random().nextInt(9) + 1).toString();
      currentnumber.add(y);
    }



    HEllo.add(UserModel(name: 'Gaith Talahmeh',phoneNumber: currentnumber.join('')));
  }
  return(HEllo);
}

class Users extends StatelessWidget{
  List<UserModel> users = setIDx();
  Widget buildUserItem(UserModel user) => Padding(
    padding: EdgeInsets.all(10),
    child: Row(
        mainAxisAlignment: MainAxisAlignment.start,
        crossAxisAlignment: CrossAxisAlignment.start
        ,
        children: [
          CircleAvatar(
            radius: 25,
            backgroundColor: Colors.blueAccent,
            child: Text('${user.id}',style: TextStyle(fontWeight: FontWeight.bold,fontSize: 25)),
          ),
          SizedBox(width: 20,),
          Column(

              mainAxisSize: MainAxisSize.min,
              mainAxisAlignment: MainAxisAlignment.start,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Padding(padding: EdgeInsets.fromLTRB(0, 8, 0, 0),child: Text('${user.name}',style :TextStyle(fontWeight: FontWeight.bold,fontSize: 20))),
                Text('${user.phoneNumber}',style: TextStyle(fontWeight: FontWeight.normal, color: Colors.grey))
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
      body: ListView.separated(
          itemBuilder: (context, index) => buildUserItem(users[index]),
          separatorBuilder: (context, index) => Padding(padding: EdgeInsets.symmetric(vertical: 10),
        child: Container(width: double.infinity,
          height: 1,
          color: Colors.grey[300],
        ),
      ),
          itemCount: users.length)

    );


  }
  
}