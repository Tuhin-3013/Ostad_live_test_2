import 'package:flutter/material.dart';

void main() {
  runApp(Myapp());
}

class Myapp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Myhome(),
    );
  }
}

class Myhome extends StatefulWidget {
  @override
  State<Myhome> createState() => _MyhomeState();
}

class _MyhomeState extends State<Myhome> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.pink.shade50,
      appBar: AppBar(
        backgroundColor: Colors.red,
        centerTitle: true,
        title: Text("Need Blood",style: TextStyle(
          fontSize: 28
        ),),
        actions: [
          IconButton(
            icon: Icon(Icons.add),
            onPressed: () {
            },
          ),
        ],
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            CircleAvatar(
              radius: 80,
              backgroundColor: Colors.grey.shade500,
              child: Icon(
                Icons.bloodtype,
                color: Colors.red,
                size: 60,
              ),
            ),
            SizedBox(height: 20),
            Text(
              "Donate Blood",
              style: TextStyle(
                fontSize: 22,
                fontWeight: FontWeight.bold,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
