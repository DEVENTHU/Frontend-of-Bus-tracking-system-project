import 'dart:ui';

import 'package:flutter/material.dart';

class MapScreen extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.all(14.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            SizedBox(
              height: 120,
            ),
            Text('Route',
            style: TextStyle(fontSize: 30, fontWeight: FontWeight.normal, color: Colors.black),)
          ],
        ),)
    );
  }
}