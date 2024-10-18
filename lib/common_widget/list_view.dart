import 'package:flutter/material.dart';
import 'package:whatsapp/utilities/app_colors.dart';

class CustomListView extends StatefulWidget {
  const CustomListView({super.key});

  @override
  State<CustomListView> createState() => _CustomListViewState();
}

class _CustomListViewState extends State<CustomListView> {
  @override
  Widget build(BuildContext context) {
    var arrNames = ["Ishani", "Sona", "Diya", "Sonal", "Shivya", "Aruhi", "Misha"];

    return Scaffold(

      body: ListView.separated(
        itemCount: arrNames.length,
        itemBuilder: (context, index) { // Correcting `item` to `index`
          return ListTile(
            leading: CircleAvatar(
              backgroundColor: AppColors.primaryColor,
            ), // Display the index
            title: Text(arrNames[index]), // Display the name from the list
            subtitle: Text('Number'), // Placeholder subtitle
            trailing: Icon(Icons.notifications), // Notification icon
          );
        },
        separatorBuilder: (context, index) {
          return Divider(
            height: 25, // Height between items
            thickness: 1, // Thickness of the divider
          );
        },
      ),
    );
  }
}

