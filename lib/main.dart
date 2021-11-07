import 'package:flutter/material.dart';

void main() {
  runApp(MaterialApp(
    home: Home(),
  ));
}

class Home extends StatelessWidget {
  const Home({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('my first app'),
        centerTitle: true,
        backgroundColor: Colors.red[600],
      ),
      body: Row(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: [
          Text('hello, world'),
          FlatButton(
              onPressed: (){},
              color: Colors.amber,
              child: Text('click me')
          ),
          Center(
            child: Container(
              color:Colors.yellow,
              padding: EdgeInsets.all(30.0),
              child: Text('inside container'),
            ),
          )
        ],
      ),
        floatingActionButton: FloatingActionButton(
        onPressed: () {  },
        child: Text('click'),
        backgroundColor: Colors.redAccent,
      ),
    );
  }
}

