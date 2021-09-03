
import 'package:flutter/material.dart';

class nigga extends StatefulWidget {

  @override
  _State createState() => _State();
}

class _State extends State<nigga> {
  @override
  void initState() {
    super.initState();
  }
  int x = 0;
  @override
  Widget build(BuildContext context) {
    return Scaffold(

      appBar: AppBar(

      title:
        Text(
          'Counter'),
      ),
    body: (
    Center(

    child: Row(
    mainAxisAlignment: MainAxisAlignment.center,
    crossAxisAlignment: CrossAxisAlignment.center,
    children: [

      TextButton(
    onPressed: () {setState(() {
  x--;
});
 }, child: Text('Subtract',style: TextStyle(color: Colors.red[800],fontSize: 30),)
),
      Padding(
padding: const EdgeInsets.all(8.0),
child: Text('$x',style: TextStyle(fontWeight: FontWeight.bold, fontSize: 30,)),
),
      TextButton(
onPressed: () {setState(() {
  x++;
});
}, child: Text('Add',style: TextStyle(color: Colors.lightGreenAccent,fontSize: 30))),

                ],
),
)),
);
  }
}
