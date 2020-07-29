import 'package:flutter/material.dart';

void main() {
  runApp(
      new MaterialApp(
        home: MyApp()
      )
  );
}

class MyApp extends StatefulWidget {
  @override
  _MyAppState createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {

  int _indexQuote = 0;

  List quotes = [
    '"Neque porro quisquam est qui dolorem ipsum quia dolor sit amet, consectetur, adipisci velit..."',
    '"There is no one who loves pain itself, who seeks after it and wants to have it, simply because it is pain..."'
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.blueGrey,
        title: Center(
          child: Text(
            "QuotesApp",
            style: TextStyle(
              color: Colors.white
            ),
          ),
        ),
      ),
      body: Container(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Expanded(
              child: Center(
                child: Container(
                  width: 350,
                  height: 75,
                  margin: EdgeInsets.all(3.0),
                  decoration: BoxDecoration(
                    color: Colors.blueGrey,
                    borderRadius: BorderRadius.circular(14.5)
                  ),
                  child: Center(
                    child: Text(
                        quotes[_indexQuote % quotes.length],
                        style: TextStyle(
                          color: Colors.white,
                          fontStyle: FontStyle.italic,
                          fontWeight: FontWeight.w300,
                        ),
                        textAlign: TextAlign.center,
                    ),
                  ),
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(top: 8, bottom: 8),
              child: Divider(
                thickness: 1,
              ),
            ),
            FlatButton.icon(
                onPressed: _showQuote,
                color: Colors.blueGrey,
                icon: Icon(Icons.wb_sunny),
                label: Text(
                    "Inspire me!",
                    style: TextStyle(
                      fontSize: 16.0,
                      color: Colors.white
                    ),
                ),
            ),
            Spacer()
          ],
        ),
      ),
    );
  }

 void _showQuote() {
    setState(() {
      _indexQuote += 1;
    });
 }
}
