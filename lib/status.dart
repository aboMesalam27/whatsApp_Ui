import 'package:flutter/material.dart';
class Status extends StatelessWidget {
  const Status({Key? key}) : super(key: key);
Widget getContainer(text){
 return Container(
    padding: EdgeInsets.only(left: 17,top: 7),
    color: Colors.black12,
    height: 35,
    child: Text(text,style: TextStyle(
        color: Colors.grey.shade600
    ),),
  );
}
Widget getStory(title,subTitle){
  return ListTile(
    leading:CircleAvatar(
      backgroundImage: NetworkImage("https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcQ5fGKks_ZOlVCtiZQV6ETawu9L0xk74WbsvQ&usqp=CAU"),
      radius: 30,
    ),
    title: Text(title,style: TextStyle(
        color: Colors.black,
        fontWeight: FontWeight.w500
    ),),
    subtitle: Text(subTitle),
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
            ListTile(
              leading: Stack(
                alignment: AlignmentDirectional.bottomEnd,
                children: [
                  CircleAvatar(
                    backgroundImage: NetworkImage("https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcQ5fGKks_ZOlVCtiZQV6ETawu9L0xk74WbsvQ&usqp=CAU"),
                    radius: 30,
                  ),
                  CircleAvatar(
                    backgroundColor: Colors.green,
                    radius: 10,
                    child: Icon(Icons.add,size: 20,color: Colors.white,),
                  ),
                ],
              ),
              title: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text("My status",style: TextStyle(
                      color: Colors.black,
                      fontWeight: FontWeight.w500
                  ),),
                   SizedBox(height: 8,),
                   Text("Tap to add status update",style: TextStyle(
                     color: Colors.grey.shade700
                   ),),
                ],
              )
            ),
            SizedBox(height: 10,),
            getContainer("Recent updates"),
            SizedBox(height: 10,),
            getStory("Ola Ali", "Just now"),
            getStory("Ahmed Gmal","Today, 2:8 pm"),

            getStory("Ahmed salah","6 minutes ago"),
            getStory("Aya fares","25 minutes ago"),
            getStory("Rana Gamal","Yestrday, 8:45 pm"),
            getStory("Omar Hassan","Yestrday, 5:5 Am"),
            SizedBox(height: 10,),
          getContainer("Viewed updates"),
            SizedBox(height: 10,),
            getStory("Hassan fares","25 minutes ago"),
            ListTile(
              leading:CircleAvatar(
                backgroundImage: NetworkImage("https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcQ5fGKks_ZOlVCtiZQV6ETawu9L0xk74WbsvQ&usqp=CAU"),
                radius: 30,
              ),
              title: Text("Ahmed Gmal",style: TextStyle(
                  color: Colors.black,
                  fontWeight: FontWeight.w500
              ),),
              subtitle: Text("Today, 2:54 pm"),
            ),
            SizedBox(height: 10,),
getContainer("Muted updets"),
            SizedBox(height: 10,),
            getStory("Karim Ayman","54 minutes ago"),
            getStory("Hady Nasr","15 minutes ago"),
            getStory("Hager Ahmed","Yestrday, 5:5 Am"),

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
            child: Icon(Icons.edit_rounded,color: Colors.teal.shade900,),
          ),
          SizedBox(height: 20,),
          FloatingActionButton(
            backgroundColor: Colors.green,
            onPressed: (){},
            child: Icon(Icons.camera_alt,color: Colors.white,),
          ),
        ],
      ),
    );
  }
}
