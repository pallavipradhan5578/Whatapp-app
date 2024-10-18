import 'package:flutter/material.dart';
import 'package:whatsapp/common_widget/common_text_field.dart';
import 'package:whatsapp/pages/dashboard/chats/chats_page.dart';
import 'package:whatsapp/pages/dashboard/chats/popup_screen.dart';
import 'package:whatsapp/pages/dashboard/dashboard_page.dart';
import 'package:whatsapp/pages/dashboard/updates/updates_page.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.white),
        useMaterial3: true,
      ),
      home:DashboardPage(),
    );
  }
}
