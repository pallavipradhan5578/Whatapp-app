import 'package:flutter/material.dart';
import 'package:whatsapp/common_widget/common_button.dart';

class CommunitiesPage extends StatelessWidget {
  const CommunitiesPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.all(18.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Row(
              children: [
                Stack(
                  children: [
                    Container(
                      height: 70,
                      width: 70,
                      decoration: BoxDecoration(
                          color: Colors.black12,
                          borderRadius: BorderRadius.circular(20)),
                    ),
                    Positioned(
                        right: -2,
                        bottom: -2,
                        child: Container(
                          height: 40,
                          width: 40,
                          decoration: BoxDecoration(
                            color: Colors.green,
                            borderRadius: BorderRadius.circular(20),
                            border: Border.all(
                              color: Colors.white, // Outline border color
                              width: 2.0, // Border width
                            ),
                          ),
                          child: Center(
                            child: Icon(
                              Icons.add,
                              color: Colors
                                  .white, // Replace with any icon you want
                              // Icon color
                              size: 16, // Icon size
                            ),
                          ),
                        ))
                  ],
                ),
                SizedBox(
                  width: 15,
                ),
                Text(
                  "New community",
                  style: TextStyle(
                    fontSize: 25,
                  ),
                )
              ],
            ),
            Padding(
              padding: const EdgeInsets.only(top: 25.0),
              child: Container(
                child: Row(
                  children: [
                    Stack(
                      children: [
                        Container(
                          height: 55,
                          width: 55,
                          decoration: BoxDecoration(
                              color: Colors.green.shade100,
                              borderRadius: BorderRadius.circular(20)),
                          child: Center(
                            child: Icon(
                              Icons.volume_up,
                              color: Colors
                                  .black, // Replace with any icon you want
                              // Icon color
                              size: 16, // Icon size
                            ),
                          ),
                        )
                      ],
                    ),
                    SizedBox(
                      width: 28,
                    ),
                    Text(
                      "Announcements",
                      style: TextStyle(
                        fontSize: 25,
                      ),
                    )
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
