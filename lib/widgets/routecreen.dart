import 'package:flutter/material.dart';

class RouteScreen extends StatefulWidget {
  @override
  _RouteScreenState createState() => _RouteScreenState();
}

class _RouteScreenState extends State<RouteScreen> {
  TextEditingController _busNumberController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        buildInputForm('Bus number', false, _busNumberController),
        ElevatedButton(
          onPressed: () {
            // Access the input data from the controller
            String busNumber = _busNumberController.text;
            // Do something with the input data
            print('Bus number: $busNumber');
          },
          child: Text('Submit'),
        ),
      ],
    );
  }

  Padding buildInputForm(String hint, bool obscureText, TextEditingController controller) {
    return Padding(
      padding: EdgeInsets.symmetric(vertical: 5),
      child: TextFormField(
        controller: controller, // Assign the controller to the TextFormField
        decoration: InputDecoration(
          hintText: hint,
          hintStyle: TextStyle(color: Colors.black.withOpacity(0.5)),
          focusedBorder: UnderlineInputBorder(
            borderSide: BorderSide(color: Colors.black38),
          ),
        ),
        obscureText: obscureText,
      ),
    );
  }

  @override
  void dispose() {
    // Dispose the controller when not needed
    _busNumberController.dispose();
    super.dispose();
  }
}
