import 'dart:ffi';
import 'package:c_j_n_prg/custom%20field/Barcode_bar.dart';
import 'package:c_j_n_prg/static_bars.dart';
import 'package:c_j_n_prg/video_bars.dart';
import 'package:flutter/material.dart';
import 'package:youtube_player_flutter/youtube_player_flutter.dart';
import '../custom field/Banner_bar.dart';
import '../custom field/comments_bar.dart';
class HomePage extends StatefulWidget {
  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        backgroundColor: Colors.white,
        body: SingleChildScrollView(
          child: Padding(
            padding: const EdgeInsets.all(8.0),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                SizedBox(height: 10),
                Text(
                  "C J N",
                  style: TextStyle(
                    fontWeight: FontWeight.bold,
                    color: Colors.black,
                    fontSize: 30,
                  ),
                ),
                SizedBox(height: 10),
                StaticBar(),
                SizedBox(height: 10),
                VideoBar(),
                SizedBox(height: 10),
                Row(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Expanded(child: Comments()),
                    Expanded(child: Banners()),
                  ],
                ),
                SizedBox(height: 10),
                BarcodeBar()
              ],
            ),
          ),
        ),
      ),
    );
  }
}





