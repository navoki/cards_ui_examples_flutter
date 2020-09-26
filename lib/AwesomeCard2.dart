import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class AwesomeCard2 extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Card(
      elevation: 5,
      margin: EdgeInsets.symmetric(horizontal: 10, vertical: 10),
      shadowColor: Color(0xFFFF5500),
      clipBehavior: Clip.antiAliasWithSaveLayer,
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.all(Radius.circular(20)),
      ),
      child: Stack(
        children: [
          Opacity(
            opacity: 0.8,
            child: Image.asset(
              "assets/images/background.jpg",
              fit: BoxFit.fill,
              height: 180,
            ),
          ),
          Container(
            height: 180,
            padding: EdgeInsets.only(left: 20, right: 20),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Image.asset(
                      "assets/images/chip.png",
                      height: 40,
                    ),
                    Image.asset(
                      "assets/images/contactless.png",
                      height: 30,
                    ),
                  ],
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text(
                      '2435 8874 **** ****',
                      style: TextStyle(fontSize: 25, color: Colors.white, fontWeight: FontWeight.w600),
                    ),
                  ],
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text(
                      'EXP 11/22',
                      textAlign: TextAlign.center,
                      style: TextStyle(fontSize: 14, color: Colors.white, fontWeight: FontWeight.bold),
                    ),
                    Image.asset(
                      "assets/images/visa.png",
                      fit: BoxFit.fill,
                      height: 30,
                    ),
                  ],
                ),
              ],
            ),
          )
        ],
      ),
    );
  }
}
