import 'package:flutter/material.dart';

class HomeList extends StatefulWidget {
  @override
  _HomeListState createState() => _HomeListState();
}

class _HomeListState extends State<HomeList> {
  List<String> items = new List();

  void _incrementCounter() {
    setState(() {
      items.add('_counter');
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Receitas'),
      ),
      body: ListView.builder(
        itemCount: items.length,
        itemBuilder: (BuildContext context, int index) {
          return ListTile(
            leading: ConstrainedBox(
              constraints: BoxConstraints.tightFor(height: 1000),
              child: Image.network('https://www.docemeldoces.com/wp-content/uploads/galeria-bolo-chocolate_80.jpg', fit: BoxFit.fitWidth),
            ),
            title: Text(
              index.toString(),
            ),
          );
        },
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: _incrementCounter,
        tooltip: 'Increment',
        child: Icon(Icons.add),
      ),
    );
  }
}
