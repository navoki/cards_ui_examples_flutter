import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class AwesomeCard3 extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Card(
      elevation: 8,
      margin: EdgeInsets.symmetric(horizontal: 10, vertical: 10),
      shadowColor: Colors.grey,
      color: Color(0xFF665DDD),
      shape: Border(
        bottom: BorderSide(color: Colors.grey[500], width: 5),
        right: BorderSide(color: Colors.grey[400], width: 3),
        top: BorderSide(color: Colors.grey[300], width: 2),
        left: BorderSide(color: Colors.grey[200], width: 5),
      ),
      child: Image.asset(
        "assets/images/novaki_high_res_white.png",
        height: 200,
      ),
    );
  }
}
