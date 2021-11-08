import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:url_launcher/url_launcher.dart';

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
  bool isPressed = false;
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
      body: Container(
        padding: EdgeInsets.fromLTRB(30.0,40.0,30.0,0.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: <Widget>[
            Container(
              alignment: Alignment.center,
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
            Spacer(),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                IconButton(
                  color: Colors.green,
                    iconSize: 40,
                    onPressed: (){
                      launch('tel:0754760187');
                    },
                    icon: Icon(
                        Icons.add_call
                    )
                ),
                Container(
                  child: AnimatedContainer(
                    alignment: Alignment.bottomCenter,
                    duration: Duration(seconds: 2),
                    child: RaisedButton(
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(18.0),
                        side: BorderSide(color: Color.fromRGBO(0, 160, 227, 1))
                      ),
                      padding: EdgeInsets.all(10.0),
                      color: Color.fromRGBO(0, 160, 227, 1),
                      textColor: Colors.white,
                      child: Text("Contacteaza-l pe Hagi",
                          style: TextStyle(fontSize: 15)),
                      onPressed: () {
                        launch("mailto:hagi10@fotbal.ro");
                      } ,
                    ),
                  ),
                  ),
                Container(
                  height: 75.0,
                  width: 75.0,
                  child: FittedBox(
                    child: FloatingActionButton(
                        child: Center(
                          child: Text(
                            ('Afla numarul regelui'),
                            textAlign: TextAlign.center,
                            style: const TextStyle(
                              color: Colors.black,
                              fontSize: 10.0,
                            ),
                          ),
                        ),
                        onPressed: (){
                          isPressed= !isPressed;
                          setState(() {
                            if(isPressed == true)
                              numar = "10";
                            else
                              numar = "";
                          });
                        }
                    ),
                  ),
                ),
              ],
            ),
          ],
        ),
      ),
    );

  }
}





