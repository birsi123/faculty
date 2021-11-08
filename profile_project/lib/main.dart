import 'package:flutter/material.dart';

void main() {
  runApp(MaterialApp(
    home: BirsanCard(),
  ));
}
class BirsanCard extends StatefulWidget {
  const BirsanCard({Key? key}) : super(key: key);
  @override
  State<BirsanCard> createState() => _BirsanCardState();
}

class _BirsanCardState extends State<BirsanCard> {

  var numar = "";

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey[900],
      appBar: AppBar(
        title:Text('Birsan card'),
        centerTitle: true,
        backgroundColor: Colors.black,
        elevation: 0.0,
      ),
      floatingActionButton: Container(
        height: 100.0,
        width: 100.0,
        child: FittedBox(
          child: FloatingActionButton(
            child: Center(
              child: Padding(
                padding: const EdgeInsets.symmetric(vertical: 5.0,horizontal: 5.0),
                child: Text(
                    ('Afla numarul regelui'),
                  style: const TextStyle(
                    color: Colors.black,
                    fontSize: 10.0,
                  ),
                  ),
              ),
            ),
              onPressed: (){
                setState(() {
                  numar = "10";
                });
              }
          ),
          ),
        ),
      body: Padding(
        padding: EdgeInsets.fromLTRB(30.0,40.0,30.0,0.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: <Widget>[
            Center(
              child: CircleAvatar(
                backgroundImage: AssetImage('assets/hagi.jpg'),
                radius: 40.0,
              ),
            ),
            Divider(
              height: 60.0,
              color: Colors.grey[800],
            ),
            Text(
              'NAME',
              style: TextStyle(
                color: Colors.grey,
                letterSpacing: 2.0,
              ),
            ),
            SizedBox(height: 10.0,),
            Text(
              'Gica Hagi',
              style: TextStyle(
                color: Colors.amberAccent[200],
                letterSpacing: 2.0,
                fontSize: 20.0,
                fontWeight: FontWeight.bold,
              ),
            ),
            SizedBox(height: 20.0,),
            Text(
              'Pozitie',
              style: TextStyle(
                color: Colors.grey,
                letterSpacing: 2.0,
              ),
            ),
            SizedBox(height: 10.0,),
            Text(
              'Decar ${numar}',
              style: TextStyle(
                color: Colors.amberAccent[200],
                letterSpacing: 2.0,
                fontSize: 20.0,
                fontWeight: FontWeight.bold,
              ),
            ),
            SizedBox(height: 30.0),
            Row(
              children: <Widget>[
                Icon(
                  Icons.email,
                  color: Colors.grey[400],
                ),
                SizedBox(width: 10.0),
                Text(
                  'gicahagi10@romania.ro',
                  style: TextStyle(
                    color: Colors.grey[400],
                    fontSize: 20.0,
                    letterSpacing: 1.0,
                  ),
                ),
              ],
            )
          ],
        ),
      ),
    );

  }
}





