import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;
import 'dart:convert';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Backend Connection',
      home: HomePage(),
    );
  }
}

class HomePage extends StatefulWidget {
  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  String _data = '';

  Future<void> fetchData() async {
    try {
      var response = await http.get(Uri.parse('http://127.0.0.1:5000'));
      if (response.statusCode == 200) {
        setState(() {
          _data = jsonDecode(response.body)['data'];
        });
      } else {
        setState(() {
          _data = 'Error: ${response.statusCode}';
        });
      }
    } catch (e) {
      setState(() {
        _data = 'Error: $e';
      });
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Backend Connection Example'),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            ElevatedButton(
              onPressed: () async {
                await fetchData();
                print(_data);
              },
                child:
                Text('Register'),
              
            ),
            SizedBox(height: 20),
            Text('Data from Backend:'),
            Text(_data),
          ],
        ),
      ),
    );
  }
}
