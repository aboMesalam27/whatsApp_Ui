import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class Calls extends StatelessWidget {
  const Calls({Key? key}) : super(key: key);
  // ignore: non_constant_identifier_names
  Widget ChatDetails(Name,num,date,time){
    return ListTile(
        leading: const CircleAvatar(
          backgroundImage: NetworkImage("https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcQ5fGKks_ZOlVCtiZQV6ETawu9L0xk74WbsvQ&usqp=CAU"),
          radius: 30,

        ),
        title: Text(Name,style: const TextStyle(fontWeight: FontWeight.w500,fontSize: 15),),
        subtitle: Row(
          children: [
            const Icon(Icons.north_east,size: 15,color: Colors.green,),
            Text(num),
            Text(date),
            Text(time)
          ],
        ),
        trailing: Icon(Icons.call,color: Colors.teal,)
    );
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: NotificationListener<OverscrollIndicatorNotification>(
        onNotification: (_){
          _.disallowGlow();return true;
        },
        child: ListView(
          children: [
            SizedBox(height: 10,),
            ChatDetails("Ali Ahmed","(12)","23 Augest"," 4:14 pm"),
            Padding(
              padding: const EdgeInsets.only(left:30,right: 30),
              child: Divider(height: 10,color: Colors.grey,),
            ),
            ChatDetails("Mohamed Adel","(2)","24 Augest"," 5:10 pm"),
            Padding(
              padding: const EdgeInsets.only(left:30,right: 30),
              child: Divider(height: 10,color: Colors.grey,),
            ),
            ChatDetails("Rana Ahmed","(7)","25 July"," 7:1 Am"),
            Padding(
              padding: const EdgeInsets.only(left:30,right: 30),
              child: Divider(height: 10,color: Colors.grey,),
            ),
            ChatDetails("Hasssan Gamal Ahmed","(1)","29 June"," 8:25 Am"),
            Padding(
              padding: const EdgeInsets.only(left:30,right: 30),
              child: Divider(height: 10,color: Colors.grey,),
            ),
            ChatDetails("Mohamed Adel","(2)","24 Augest"," 5:10 pm"),
            Padding(
              padding: const EdgeInsets.only(left:30,right: 30),
              child: Divider(height: 10,color: Colors.grey,),
            ),
            ChatDetails("Rana Ahmed","(7)","25 July"," 7:1 Am"),
            Padding(
              padding: const EdgeInsets.only(left:30,right: 30),
              child: Divider(height: 10,color: Colors.grey,),
            ),
            ChatDetails("Hasssan Gamal Ahmed","(1)","29 June"," 8:25 Am"),
            Padding(
              padding: const EdgeInsets.only(left:30,right: 30),
              child: Divider(height: 10,color: Colors.grey,),
            ),
            ChatDetails("Ali Ahmed","(12)","23 Augest"," 4:14 pm"),
            Padding(
              padding: const EdgeInsets.only(left:30,right: 30),
              child: Divider(height: 10,color: Colors.grey,),
            ),
          ],
        ),
      ),
      floatingActionButton: Column(
        mainAxisAlignment: MainAxisAlignment.end,
        children: [
          FloatingActionButton(
            backgroundColor: Colors.white,
            focusElevation: 0.0,
            onPressed: (){},
            child: Icon(Icons.video_call,color: Colors.teal.shade900,),
          ),
          SizedBox(height: 20,),
          FloatingActionButton(
            backgroundColor: Colors.green,
            onPressed: (){},
            child: Icon(Icons.add_call,color: Colors.white,),
          ),
        ],
      ),    );
  }
}
