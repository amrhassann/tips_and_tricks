import 'dart:developer';

import 'package:flutter/material.dart';
import 'package:tips_and_tricks/modules/connection_widget.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      title: 'Tips and Tricks',
      home: HomeScreen(),
    );
  }
}

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Tips and Tricks'),
      ),
      body:  Center(
        child: ConnectionWidget(
          onDisConnected: Text("Dis"),
          onConnected: Icon(Icons.interests),
          onConnectionStateChange: (isConnected){
            log("device connection: $isConnected");
          },
        ),
      ),
    );
  }
}
