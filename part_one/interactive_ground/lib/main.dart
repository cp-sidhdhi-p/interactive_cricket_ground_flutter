import 'package:flutter/material.dart';

import 'enums.dart';
import 'ground_layout_view.dart';

void main() {
  runApp(const MaterialApp(home: GroundScreen()));
}

class GroundScreen extends StatefulWidget {
  const GroundScreen({super.key});

  @override
  State<GroundScreen> createState() => _GroundScreenState();
}

class _GroundScreenState extends State<GroundScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Ground layout"),
      ),
      body: Center(
        child: Column(
          children: [
            GroundLayoutView(
              onPositionSelect: (position) {
                // do something with the position
              },
            ),
          ],
        ),
      ),
    );
  }
}
