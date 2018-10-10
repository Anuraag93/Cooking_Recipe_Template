import 'package:flutter/material.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    // TODO: implement build

    Column buildColumnInfo(IconData icon, String label, String value) {
      Color color = Theme.of(context).primaryColor;

      return Column(
        children: <Widget>[
          Icon(icon, color: color),
          Text(label),
          Text(value),
        ],
      );
    }

    Widget instructionContainer = Container(
        padding: EdgeInsets.all(20.0),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: <Widget>[
            buildColumnInfo(Icons.kitchen, 'PREP:', '25 min'),
            buildColumnInfo(Icons.timer, 'COOK:', '1 hr'),
            buildColumnInfo(Icons.restaurant, 'FEEDS:', '4-6'),
          ],
        ));
    var descTextStyle = TextStyle(
      color: Colors.black,
      fontWeight: FontWeight.w800,
      fontFamily: 'Roboto',
      letterSpacing: 0.5,
      fontSize: 10.0,
      height: 2.0,
    );
    Row buildRowReview() {
      return Row(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: <Widget>[
          Row(
            mainAxisSize: MainAxisSize.min,
            children: <Widget>[
              Icon(
                Icons.star,
//                color: Colors.black54,
              ),
              Icon(
                Icons.star,
//                color: Colors.black54,
              ),
              Icon(
                Icons.star,
//                color: Colors.black54,
              ),
              Icon(Icons.star),
              Icon(Icons.star),
            ],
          ),
          DefaultTextStyle.merge(
              style: descTextStyle, child: Text('170 Reviews'))
        ],
      );
    }

    Container leftContainer = Container(
//        child: Center(
        child: Column(
      children: <Widget>[
        Text(
          'Strawberry Pavlova',
          style: TextStyle(fontSize: 20.0),
        ),
        Text(
          'Pavlova is a meringue-based dessert named after the Russian ballerina Anna Pavlova. It is a meringue dessert with a crisp crust and soft, light inside, usually topped with fruit and whipped cream.',
          style: TextStyle(fontSize: 10.0),
        ),
        buildRowReview(),
        DefaultTextStyle.merge(
            style: descTextStyle, child: instructionContainer)
      ],
    ));

    return MaterialApp(
      title: 'Recipe Template',
      theme: ThemeData(
        primarySwatch: Colors.deepPurple,
      ),
      home: Scaffold(
        appBar: AppBar(
          title: Text('Desert'),
        ),
        body: Center(
          child: Container(
            margin: EdgeInsets.fromLTRB(0.0, 40.0, 0.0, 30.0),
            height: 600.0,
            child: Card(
              child: Row(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: <Widget>[
                  Container(
                    width: 200.0,
                    child: leftContainer,
                  ),
                  Expanded(
                    child: Image.asset('images/pavlova.jpg',),
                  )
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}
