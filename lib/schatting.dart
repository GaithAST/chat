import 'package:flutter/material.dart';
class Shatting extends StatelessWidget {
  const Shatting({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    Widget buildChatItem() =>  Row(
      children: [
        Stack(
          alignment: AlignmentDirectional.bottomEnd,
          children: [
            const CircleAvatar(radius: 30,
                backgroundImage: NetworkImage
                  (
                  'https://scontent.fruh4-1.fna.fbcdn.net/v/t1.6435-9/36921033_429645067503238_1417766853278695424_n.jpg?_nc_cat=102&ccb=1-5&_nc_sid=09cbfe&_nc_ohc=X7mlrhBhSzEAX8c_9K4&_nc_ht=scontent.fruh4-1.fna&oh=2bb1e70b94aaecebf09f799fda9dfcef&oe=61563A63',)
            ),
            const Padding(
              padding: EdgeInsetsDirectional.only(bottom: 3,end: 2),
              child:  CircleAvatar(
                radius: 7,
                backgroundColor: Colors.red,
              ),
            ),
          ],
        ),
        SizedBox(
          width: 10,
        ),
        Expanded(
          child: Column(
            children: [
              Text(
                  'TalahmehGaith TalahmehGeeaith Talahmeh'
                  ,style:
              TextStyle(
                fontSize: 16,
                overflow: TextOverflow.ellipsis,
              ),
                  maxLines: 1
              ),
              SizedBox(height: 5,),
              Row(
                  mainAxisAlignment: MainAxisAlignment.start,
                  children:
                  [
                    Expanded(
                      child: Text(
                        'Hi Hello, my name is r4rwov3u2rhrhhr43iurh43iurh3iurh3iur3hriuhriurh3',
                        maxLines: 1,
                        style: TextStyle(overflow: TextOverflow.ellipsis),
                      ),
                    ),

                    Padding(
                      padding: const EdgeInsets.symmetric(horizontal: 10),
                      child: Container(
                        width: 7,
                        height: 7,
                        decoration: BoxDecoration(
                            color: Colors.blue,
                            shape:  BoxShape.circle
                        ),
                      ),
                    ),
                    Text(
                        '2:00 pm')
                  ]
              ),

            ],
          ),
        )
      ],
    );
    Widget buildStoryItem() => Column(

      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Stack(
          alignment: AlignmentDirectional.bottomEnd,
          children: [
            const CircleAvatar(radius: 30,
                backgroundImage: NetworkImage
                  (
                  'https://scontent.fruh4-1.fna.fbcdn.net/v/t1.6435-9/36921033_429645067503238_1417766853278695424_n.jpg?_nc_cat=102&ccb=1-5&_nc_sid=09cbfe&_nc_ohc=X7mlrhBhSzEAX8c_9K4&_nc_ht=scontent.fruh4-1.fna&oh=2bb1e70b94aaecebf09f799fda9dfcef&oe=61563A63',)
            ),
            const Padding(
              padding: EdgeInsetsDirectional.only(bottom: 3,end: 2),
              child:  CircleAvatar(
                radius: 7,
                backgroundColor: Colors.red,
              ),
            ),
          ],
        ),
        const SizedBox(height: 10),
        Container(
            width: 40,
            child: const Text('Gaith Talahmeh',maxLines: 2, style: TextStyle(overflow: TextOverflow.ellipsis)))
      ],
    );
    return Scaffold(
       backgroundColor: Colors.white,
      appBar: AppBar(
        elevation: 0,
        backgroundColor: Colors.white,
        title: Row(children: const [ Padding(
          padding: EdgeInsets.fromLTRB(5, 12, 0, 0),
          child: CircleAvatar(
              radius: 22.0,
              backgroundImage: NetworkImage('https://scontent.fruh4-1.fna.fbcdn.net/v/t1.6435-9/36921033_429645067503238_1417766853278695424_n.jpg?_nc_cat=102&ccb=1-5&_nc_sid=09cbfe&_nc_ohc=X7mlrhBhSzEAX8c_9K4&_nc_ht=scontent.fruh4-1.fna&oh=2bb1e70b94aaecebf09f799fda9dfcef&oe=61563A63'),
            ),
        ),
        Padding(
          padding: EdgeInsets.fromLTRB(15,8,0,0),
          child: Text('Chats', style: TextStyle(color: Colors.black),),
        )
        ]),
        actions: [
          Padding(
            padding: const EdgeInsets.fromLTRB(7.0,7,8,0),
            child: CircleAvatar(
              radius: 20,
                child: IconButton
                  (onPressed: () {},
                  icon: Icon(Icons.camera_alt_sharp),
                  color: Colors.white,
                  iconSize: 20.0,
                )
            ),
          ),
          const SizedBox(
            width: 5,
          ),
          Padding(
            padding: const EdgeInsets.fromLTRB(0,7,8,0),
            child: CircleAvatar(
              radius: 20,
                child: IconButton
                  (onPressed: () {},
                  icon: Icon(Icons.edit),
                  color: Colors.white,
                  iconSize: 20.0,
                )
            ),
          )
        ],
        ),
      body:
      Padding(
        padding: const EdgeInsets.fromLTRB(10,20,10,20),
        child: SingleChildScrollView(
          scrollDirection: Axis.vertical,
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Container(
                  height: 44,
              child: TextFormField(
                decoration: InputDecoration(hintText: 'Search Messenger',hintStyle: const TextStyle(fontSize: 15),
                    border: OutlineInputBorder
                      (
                        borderRadius: BorderRadius.circular(5),
                        borderSide: BorderSide(style: BorderStyle.solid),
                    ),

                    prefixIcon: const Icon(Icons.search_outlined,size: 20,),
                ),
              ),
            ),
              const SizedBox(

                  height: 20),
                Container(
                  height: 120,
                child: ListView.separated(
                  shrinkWrap: true,
                  scrollDirection: Axis.horizontal,
                  itemBuilder: (context, index) => buildStoryItem(),
                  itemCount: 10,
                  separatorBuilder: (context,index) => SizedBox(width: 20),
                ),
                ),
              const SizedBox(
                height: 15
              ),
              ListView.separated(
                shrinkWrap: true,
                  physics: NeverScrollableScrollPhysics(),
                  itemBuilder: (context, index) => buildChatItem(),
                  itemCount: 10,
                  separatorBuilder: (context,index) => SizedBox(height: 20),
        ),


            ]
          ),
          ),
      ),
    );



  }

}