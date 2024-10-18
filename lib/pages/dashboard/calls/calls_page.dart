import 'package:flutter/material.dart';

class CallsPage extends StatelessWidget {
  const CallsPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.all(18.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              "Favorites",
              style: TextStyle(fontSize: 25),
            ),
            Padding(
              padding: const EdgeInsets.only(top: 18.0, bottom: 18),
              child: Row(
                children: [
                  CircleAvatar(
                    backgroundColor: Colors.green,
                    radius: 30,
                    child: Icon(
                      Icons.favorite,
                      color: Colors.white,
                    ),
                  ),
                  SizedBox(width: 28),
                  Text(
                    "Add favorite",
                    style: TextStyle(fontSize: 25),
                  ),
                ],
              ),
            ),
            Text(
              "Recent",
              style: TextStyle(fontSize: 25),
            ),
            // Adding ListView.separated
            Expanded(
              child: ListView.separated(
                itemCount: 10, // Change this based on your data
                separatorBuilder: (context, index) => Divider(),
                itemBuilder: (context, index) {
                  return ListTile(
                    leading: CircleAvatar(backgroundImage: NetworkImage('https://th.bing.com/th/id/OIG.uXBrjdtWIWgkqQ1RHIhD?pid=ImgDetMain'),
                        radius: 30,

                      child: Text('${index + 1}'), // Example placeholder
                    ),
                    title: Text(' Prakash ${index }',style:TextStyle (fontSize: 25,fontWeight: FontWeight.w500,)),
                    subtitle: Padding(
                      padding: const EdgeInsets.only(left: 8.0),
                      child: Text('Today,12:02 PM',style:TextStyle (fontSize: 18,fontWeight: FontWeight.w200),),
                    )
                  );
                },
              ),
            ),
          ],
        ),
      ),
    );
  }
}
