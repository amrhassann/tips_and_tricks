
import 'package:flutter/material.dart';

import 'modules/profile_card.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return  MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Tips and Tricks',
      home: ProfileCard(),
    );
  }
}

// class HomeScreen extends StatelessWidget {
//   const HomeScreen({super.key});
//
//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       appBar: AppBar(
//         title: const Text('Tips and Tricks'),
//       ),
//       body:  Center(
//         child: ConnectionWidget(
//           onConnected: Icon(Icons.ac_unit),
//           onDisConnected: Icon(Icons.account_circle),
//           onConnectionStateChange: (state){
//             log(state.toString());
//           },
//         ),
//       ),
//     );
//   }
// }
