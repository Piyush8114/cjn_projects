import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class Comments extends StatelessWidget {
  final List<String> names = ["Piyush", "Nikhil", "Harsh","Priyanshu"];
  final List<String> comments = ["Good", "Very good", "Awesome","Khatarnaak"];

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 300,
      child: ListView.builder(
        itemCount: names.length,
        itemBuilder: (context, index) {
          return Card(
            margin: EdgeInsets.symmetric(horizontal: 10, vertical: 5),
            child: ListTile(

              leading: CircleAvatar(
                backgroundColor: Colors.blue.shade200,
                child: Icon(Icons.person, color: Colors.white),
              ),
              title: Text(names[index]),
              subtitle: Text(comments[index],),
            ),
          );
        },
      ),
    );
  }
}