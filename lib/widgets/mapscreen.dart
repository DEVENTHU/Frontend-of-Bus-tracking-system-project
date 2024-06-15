import 'package:flutter/material.dart';
import 'package:loginsignup/widgets/mapscreen.dart';

class MapScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: ElevatedButton(
          onPressed: () {
            // Navigate to the MapScreen when the button is pressed
            Navigator.push(
              context,
              MaterialPageRoute(
                builder: (context) => MapScreen(),
              ),
            );
          },
          child: Text('Go to Map'),
        ),
      ),
    );
  }
}