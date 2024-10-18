import 'package:flutter/material.dart';
import 'package:whatsapp/common_widget/common_text_field.dart';
import 'package:whatsapp/utilities/app_colors.dart';

class ChatsPage extends StatefulWidget {
  const ChatsPage({super.key});

  @override
  State<ChatsPage> createState() => _ChatsPageState();
}

class _ChatsPageState extends State<ChatsPage> {
  var arrNames = [
    "Ram",
    "Siya",
    "Bihari",
    "Abhaya",
    "Neha",
    "Sneha",
    "Krishna",
  ];
  var arrMessage = [
    "Hey",
    "Hello",
    "what are you doing?",
    " Hi",
    "bolo",
    "I'm well",
    "Ram Ram"
  ];
  var arrImageUrls = [
    'https://th.bing.com/th/id/OIG.uXBrjdtWIWgkqQ1RHIhD?pid=ImgDetMain',
    '','https://th.bing.com/th/id/OIG.uXBrjdtWIWgkqQ1RHIhD?pid=ImgDetMain','','https://th.bing.com/th/id/OIG.uXBrjdtWIWgkqQ1RHIhD?pid=ImgDetMain','','https://th.bing.com/th/id/OIG.uXBrjdtWIWgkqQ1RHIhD?pid=ImgDetMain','','https://th.bing.com/th/id/OIG.uXBrjdtWIWgkqQ1RHIhD?pid=ImgDetMain',


  ];
  var arrtime = [
    "12:01 PM",
    "02:01 PM",
    "03:01 PM",
    "04:01 PM",
    "06:01 PM",
    "10:01 PM",
    "12:01 AM"
  ];
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(10.0),
      child: Column(
        children: [
          CommonTextField(
            label: 'Ask Meta AI or Search',
            labelStyle: TextStyle(
              fontSize: 18.0, // Change font size
              color: Colors.blue, // Change font color
              fontWeight: FontWeight.bold, // Make label bold
            ),
          ),
          Container(
            width: MediaQuery.of(context).size.width / 1,
            height: 70,
            child: ListView(
              scrollDirection: Axis.horizontal,
              children: [
                Padding(
                  padding: const EdgeInsets.all(12.0),
                  child: Container(
                    decoration: BoxDecoration(),
                    child: Container(
                      height: 95,
                      width: 50,
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(15),
                          color: Colors.green.shade100),
                      child: Center(
                        child: Text(
                          "All",
                          style: TextStyle(
                              fontSize: 18,
                              color: Colors.green,
                              fontWeight: FontWeight.w600),
                        ),
                      ),
                    ),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.all(12.0),
                  child: Container(
                    height: 105,
                    width: 90,
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(15),
                        color: Colors.grey.shade200),
                    child: Center(
                      child: Text(
                        "Unread",
                        style: TextStyle(
                            fontSize: 18, fontWeight: FontWeight.w500),
                      ),
                    ),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.all(12.0),
                  child: Container(
                      height: 95,
                      width: 100,
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(15),
                          color: Colors.grey.shade200),
                      child: Center(
                          child: Text("Favorites",
                              style: TextStyle(
                                  fontSize: 18, fontWeight: FontWeight.w500)))),
                ),
                Padding(
                  padding: const EdgeInsets.all(12.0),
                  child: Container(
                      height: 100,
                      width: 70,
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(15),
                          color: Colors.grey.shade200),
                      child: Center(
                          child: Text("Groups",
                              style: TextStyle(
                                  fontSize: 18, fontWeight: FontWeight.w500)))),
                ),
              ],
            ),
          ),
          Expanded(
            child: ListView.builder(
              shrinkWrap: true,
              itemBuilder: (context, index) {
                return ListTile(
                  leading: CircleAvatar(
                    backgroundImage: arrImageUrls[index].isNotEmpty
                        ? NetworkImage(arrImageUrls[index])
                        : null,
                    radius: 30,
                    backgroundColor: Colors.blueGrey.shade400,
                    child: arrImageUrls[index].isEmpty
                        ? Icon(Icons.person, size: 50, color: Colors.grey.shade100)
                        : null,
                  ),
                  title: Text(
                    arrNames[index],
                    style: TextStyle(fontSize: 25, fontWeight: FontWeight.w500),
                  ),
                  subtitle: Text(
                    arrMessage[index],
                    style: TextStyle(fontSize: 18),
                  ),
                  trailing: Text(
                    arrtime[index],
                    style: TextStyle(fontSize: 15),
                  ),
                );
              },
              itemCount: arrNames.length,

                )
            ),

        ],
      ),
    );
  }
}
