import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: HomePage(),
    );
  }
}

class HomePage extends StatelessWidget {
  void _showPopupMenu(BuildContext context) {
    showDialog(
      context: context,
      builder: (BuildContext context) {
        return AlertDialog(
          title: Text(""),
          content: Column(
            mainAxisSize: MainAxisSize.min,
            children: [
              _buildOption(context, "New group", Option1Page()),
              _buildOption(context, "New broadcast", Option2Page()),
              _buildOption(context, "Linked devices", Option3Page()),
              _buildOption(context, "Starred messages", Option4Page()),
              _buildOption(context, "Payments", Option5Page()),
              _buildOption(context, "Settings", Option6Page()),
            ],
          ),
        );
      },
    );
  }

  Widget _buildOption(BuildContext context, String title, Widget page) {
    return ListTile(
      title: Text(title),
      onTap: () {
        Navigator.of(context).pop(); // Close the dialog
        Navigator.of(context)
            .push(MaterialPageRoute(builder: (context) => page));
      },
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Home Page"),
        actions: [
          IconButton(
            icon: Icon(Icons.more_vert_outlined),
            onPressed: () {
              _showPopupMenu(context);
            },
          ),
        ],
      ),
      body: Center(
        child: Text("Home Page Content"),
      ),
    );
  }
}

// Create the individual option pages
class Option1Page extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    var arrname = ["Maa", "DJ", "Prakash", "Kaushiki di", "Chandan Bhaiya","Ravi Bhaiya","Sunita Bhabhi","Yuvi bhai","Kajal Bca","Priya","Riya","Prachi"];
    return Scaffold(
      appBar: AppBar(
        title: Padding(
          padding: const EdgeInsets.all(8.0),
          child: ListTile(
            title: Text(
              "New group",
              style: TextStyle(fontSize: 25),
            ),
            subtitle: Text("Add member"),
            trailing: Icon(Icons.search),
          ),
        ),
      ),
      body:
        SingleChildScrollView(scrollDirection: Axis.vertical,
          child: Column(crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Padding(
                padding: const EdgeInsets.only(left: 18.0,top: 15),
                child: Text("Frequently contacted",style: TextStyle(fontSize: 20),),
              ),ListView.builder(
                shrinkWrap: true,
                itemCount: 10, // Add the itemCount here
                itemBuilder: (context, index) {
                  return Padding(
                    padding: const EdgeInsets.symmetric(vertical: 8.0), // Add vertical padding to create a gap
                    child: ListTile(
                      leading: CircleAvatar(
                        radius: 30,
                        backgroundColor: Colors.blueGrey.shade100,
                        child: Icon(Icons.person,color: Colors.white,size: 50,),
                      ),subtitle:Text('Hey there! I am using whatsapp',style: TextStyle(fontSize: 18),),
                      title: Text(arrname[index],
                        style: TextStyle(fontSize: 25, fontWeight: FontWeight.w500),
                      ),

                      ),

                  );
                },
              ),


            ],
          ),
        ),


    );
  }
}

class Option2Page extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("New broadcast"),
      ),
      body: Center(
        child: Text("This is Option 2 Page"),
      ),
    );
  }
}

class Option3Page extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Linked devices"),
      ),
      body: Center(
        child: Text("This is Option 3 Page"),
      ),
    );
  }
}

class Option4Page extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Starred messages"),
      ),
      body: Center(
        child: Text("This is Option 4 Page"),
      ),
    );
  }
}

class Option5Page extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Payments"),
      ),
      body: Center(
        child: Text("This is Option 5 Page"),
      ),
    );
  }
}

class Option6Page extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Settings"),
      ),
      body: Center(
        child: Text("This is Option 6 Page"),
      ),
    );
  }
}
