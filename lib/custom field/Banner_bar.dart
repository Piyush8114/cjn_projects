
import 'package:flutter/cupertino.dart';

class Banners extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      height: 300,
      width: double.infinity,
      decoration: BoxDecoration(
        image: DecorationImage(
          image: AssetImage("assets/jj.jpeg"),
          fit: BoxFit.cover,
        ),
      ),
    );
  }
}
