import 'package:flutter/material.dart';

class UpdatesPage extends StatelessWidget {
  const UpdatesPage({super.key});

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      body: Padding(
          padding: EdgeInsets.all(18.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                "Status",
                style: TextStyle(fontWeight: FontWeight.w500, fontSize: 25),
              ),
              SizedBox(
                height: 10,
              ),
              Row(
                children: [

                    CircleAvatar(
                      backgroundImage: NetworkImage('https://th.bing.com/th/id/OIG.uXBrjdtWIWgkqQ1RHIhD?pid=ImgDetMain'),
                      radius: 30,
                    )
                  ,
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Padding(
                        padding: EdgeInsets.only(left: 18.0),
                        child: Text(
                          "My status",
                          style: TextStyle(
                              fontWeight: FontWeight.w500, fontSize: 25),
                        ),
                      ),
                      Padding(
                          padding: EdgeInsets.only(left: 18.0),
                          child: Text(
                            "Tap to add status update",
                            style: TextStyle(
                                fontWeight: FontWeight.w300, fontSize: 20),
                          ))
                    ],
                  ),
                ],
              ),
              Padding(
                padding: EdgeInsets.only(top: 18.0),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text(
                      "Recent updates",
                      style: TextStyle(
                        fontWeight: FontWeight.w300,
                        fontSize: 20,
                      ),
                    ),
                  ],
                ),
              )
            ],
          )),

    );
  }
}
