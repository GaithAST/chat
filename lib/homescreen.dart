import 'package:flutter/material.dart';
class homescreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: Icon(Icons.menu),
        title: Text('chat'),
        actions: [
          Icon(Icons.search),
          IconButton(onPressed:NiggaDisShitCrzy, icon: Icon(Icons.notifications),
      ),
      ],),
      body: Text('HEllo WOrld!')
    );
  }
  void NiggaDisShitCrzy() {
    print('Lmao');
}

}