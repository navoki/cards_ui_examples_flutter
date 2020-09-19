import 'package:flutter/material.dart';

class BasicPage extends StatefulWidget {
  BasicPage({Key key}) : super(key: key);

  @override
  _BasicPageState createState() => _BasicPageState();
}

class _BasicPageState extends State<BasicPage> {
  @override
  Widget build(BuildContext context) {
    return Center(
      child: Padding(
        padding: const EdgeInsets.all(8.0),
        child: ListView(
          children: [
            Card(
              child: getSomeText("1. Widget", 'Child'),
            ),
            Padding(padding: EdgeInsets.only(top: 20)),
            Card(
              color: Colors.red,
              margin: EdgeInsets.all(20),
              child: getSomeText("2. Colors.red & all(20)", 'Card Color & Margin'),
            ),
            Padding(padding: EdgeInsets.only(top: 20)),
            Card(
              elevation: 5,
              child: getSomeText("8. 5", 'elevation'),
            ),
            Padding(padding: EdgeInsets.only(top: 20)),
            Card(
              elevation: 8,
              shadowColor: Colors.green,
              child: getSomeText("8. Colors.green", 'shadowColor'),
            ),
            Padding(padding: EdgeInsets.only(top: 20)),
            Card(
              elevation: 5,
              shape: CircleBorder(side: BorderSide(color: Colors.green, width: 2)),
              child: getSomeText("3. CircleBorder", 'Shape'),
            ),
            Padding(padding: EdgeInsets.only(top: 20)),
            Card(
              elevation: 5,
              shape: UnderlineInputBorder(
                  borderRadius: BorderRadius.only(topRight: Radius.circular(50), bottomLeft: Radius.circular(50)),
                  borderSide: BorderSide(color: Color(0x50FF42A5F5), width: 2)),
              child: getSomeText("4. UnderlineInputBorder", 'Shape'),
            ),
            Padding(padding: EdgeInsets.only(top: 20)),
            Card(
              elevation: 5,
              shape: StadiumBorder(side: BorderSide(color: Colors.purple)),
              child: getSomeText("5. StadiumBorder", 'Shape'),
            ),
            Padding(padding: EdgeInsets.only(top: 20)),
            Card(
              elevation: 5,
              borderOnForeground: false,
              shape: StadiumBorder(side: BorderSide(color: Colors.purple, width: 10)),
              child: getSomeText("5. false, default=true", 'borderOnForeground'),
            ),
            Padding(padding: EdgeInsets.only(top: 20)),
            Card(
              elevation: 5,
              shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.all(Radius.circular(20)),
                  side: BorderSide(
                    color: Colors.red,
                  )),
              child: getSomeText("9. RoundedRectangleBorder", 'Shape'),
            ),
            Padding(padding: EdgeInsets.only(top: 20)),
            Card(
              elevation: 5,
              shape: ContinuousRectangleBorder(borderRadius: BorderRadius.all(Radius.circular(20)), side: BorderSide(color: Colors.red)),
              child: getSomeText("6. ContinuousRectangleBorder", 'Shape'),
            ),
            Padding(padding: EdgeInsets.only(top: 20)),
            Card(
              elevation: 5,
              shape: OutlineInputBorder(borderRadius: BorderRadius.all(Radius.circular(40)), borderSide: BorderSide(color: Colors.green)),
              child: getSomeText("7. OutlineInputBorder", 'Shape'),
            ),
            Padding(padding: EdgeInsets.only(top: 20)),
            Card(
              elevation: 5,
              shape: BeveledRectangleBorder(
                  borderRadius: BorderRadius.all(Radius.circular(20)),
                  side: BorderSide(
                    color: Colors.red,
                  )),
              child: getSomeText("8. BeveledRectangleBorder", 'Shape'),
            ),
            Padding(padding: EdgeInsets.only(top: 20)),
            Card(
              elevation: 5,
              shape: Border(
                top: BorderSide(color: Colors.purple, width: 2),
                bottom: BorderSide(color: Colors.orange, width: 2),
                left: BorderSide(color: Colors.green, width: 2),
                right: BorderSide(color: Colors.blue, width: 2),
              ),
              child: getSomeText("8. Border", 'Shape'),
            ),
          ],
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
