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
        left: BorderSide(color: Colors.grey[100], width: 5),
        bottom: BorderSide(color: Colors.grey[400], width: 5),
        top: BorderSide(color: Colors.grey[400], width: 2),
        right: BorderSide(color: Colors.grey[800], width: 3),
      ),
      child: Image.asset(
        "assets/images/novaki_high_res_white.png",
        height: 200,
      ),
    );
  }
}
