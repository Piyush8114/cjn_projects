import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
class BarcodeBar extends StatelessWidget {
  final qrlist = [
    "assets/qr1.png", "assets/qr2.jpeg", "assets/qr3.jpg", "assets/qr4.jpeg", "assets/qr5.jpeg"
  ];

  final qrname = [ "DevDoot", "Mr developer", "Mr Hr", "Piyush", "Krusna"];

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 150,
      child: ListView.builder(
        scrollDirection: Axis.horizontal,
        itemCount: qrname.length,
        itemBuilder: (context, index) {
          return Container(
            width: 120, // हर QR code का फिक्स साइज रखें
            margin: EdgeInsets.all(8),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Image.asset(qrlist[index], height: 100, width: 100, fit: BoxFit.cover),
                SizedBox(height: 5),
                Text(qrname[index], style: TextStyle(fontSize: 14, fontWeight: FontWeight.bold)),
              ],
            ),
          );

        },),
    );
  }}