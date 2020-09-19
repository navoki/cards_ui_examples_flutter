import 'package:flutter/material.dart';

import 'AwesomeCard1.dart';

class AwesomePage extends StatefulWidget {
  AwesomePage({Key key}) : super(key: key);

  @override
  _AwesomePageState createState() => _AwesomePageState();
}

class _AwesomePageState extends State<AwesomePage> {
  @override
  Widget build(BuildContext context) {
    return Center(
      child: Padding(
        padding: const EdgeInsets.all(8.0),
        child: ListView(
          children: [
            AwesomeCard1(),
            Padding(padding: EdgeInsets.only(top: 20)),
          ],
        ),
      ),
    );
  }
}
