import 'package:flutter/material.dart';

class MyHomePage extends StatefulWidget {
  MyHomePage({Key key, this.title}) : super(key: key);

  final String title;

  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(widget.title),
      ),
      body: Center(
        child: Padding(
          padding: const EdgeInsets.all(8.0),
          child: ListView(
            children: [
              Card(
                child: getSomeText("1. Widget", 'Child'),
              ),
              Card(
                color: Colors.red,
                margin: EdgeInsets.all(20),
                child: getSomeText("2. Colors.red & all(20)", 'Card Color & Margin'),
              ),
              Card(
                shape: CircleBorder(side: BorderSide(color: Colors.green, width: 2)),
                child: getSomeText("3. CircleBorder", 'Shape'),
              ),
              Card(
                shape: UnderlineInputBorder(
                    borderRadius: BorderRadius.only(topRight: Radius.circular(50), bottomLeft: Radius.circular(50)),
                    borderSide: BorderSide(color: Color(0x50FF42A5F5), width: 2)),
                child: getSomeText("4. UnderlineInputBorder", 'Shape'),
              ),
              Card(
                shape: StadiumBorder(side: BorderSide(color: Colors.purple)),
                child: getSomeText("5. StadiumBorder", 'Shape'),
              ),
              Card(
                shape: ContinuousRectangleBorder(borderRadius: BorderRadius.all(Radius.circular(40)), side: BorderSide(color: Colors.red)),
                child: getSomeText("6. ContinuousRectangleBorder", 'Shape'),
              ),
              Card(
                shape: OutlineInputBorder(borderRadius: BorderRadius.all(Radius.circular(40)), borderSide: BorderSide(color: Colors.green)),
                child: getSomeText("7. OutlineInputBorder", 'Shape'),
              ),
              Card(
                shape: BeveledRectangleBorder(borderRadius: BorderRadius.all(Radius.circular(20)), side: BorderSide(color: Colors.red,)),
                child: getSomeText("8. BeveledRectangleBorder", 'Shape'),
              ),
              Card(
                shape: BeveledRectangleBorder(borderRadius: BorderRadius.all(Radius.circular(20)), side: BorderSide(color: Colors.red,)),
                child: getSomeText("8. BeveledRectangleBorder", 'Shape'),
              ),
            ],
          ),
        ),
      ),
    );
  }

  Widget getSomeText(String param, String value) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            param,
            style: Theme.of(context).textTheme.headline5,
          ),
          Padding(
            padding: const EdgeInsets.only(top: 20.0),
            child: Text(
              value,
              style: Theme.of(context).textTheme.subtitle1,
            ),
          ),
        ],
      ),
    );
  }
}
