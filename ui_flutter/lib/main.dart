import 'package:flutter/material.dart';

void main() {
  runApp(const MaterialApp(debugShowCheckedModeBanner: false, home: Screen()));
}

class Screen extends StatelessWidget {
  const Screen({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          'Software Engineering Department',
          textAlign: TextAlign.center,
        ),
        backgroundColor: Colors.orange,
      ),
      body:
          Container(
            color: Color.fromARGB(255, 255, 233, 203).withOpacity(0.4),
            child: Column(
           children: [
            /// Add Text
            Container(
              child: Text('Student enrollment'),
              alignment: Alignment.center,
            ),

            /// Add Image
            Container(
              child: Image.asset('assest/images/user64.png'),
              alignment: Alignment.center,
              
            ),
            // ignore: prefer_const_constructors, ADD Divider
            Divider(
              color: Colors.grey,
              height: 5,
            ),
            Row(
              children: [
                Expanded(
                  flex: 1,
                  child: Container(
                    margin: EdgeInsets.only(top: 20),
                    child: Icon(
                      Icons.person,
                      color: Colors.grey,
                    ),
                  ),
                ),
                Expanded(
                  flex: 8,
                  child: Container(
                    margin: EdgeInsets.only(top: 20, right: 20),
                    child: TextFormField(
                      decoration: InputDecoration(
                        border: UnderlineInputBorder(),
                        labelText: 'UserName',
                      ),
                    ),
                  ),
                ),
              ],
            ),
            Container(
              margin: EdgeInsets.only(left: 20, right: 20, top: 20, bottom: 10),
              child: TextField(
                decoration: InputDecoration(
                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(70.0),
                  ),
                  hintText: 'Fist Name',
                ),
              ),
            ),
            Container(
              margin: EdgeInsets.only(left: 10, right: 20),
              child: TextFormField(
                  decoration: InputDecoration(
                border: UnderlineInputBorder(),
                labelText: 'Lastname',
              )),
            ),

            Container(
              margin: EdgeInsets.only(left: 10, right: 20),
              child: TextFormField(
                  decoration: InputDecoration(
                border: UnderlineInputBorder(),
                labelText: 'Password',
              )),
            ),
            //Email
            Container(
              margin: EdgeInsets.only(left: 10, right: 20),
              child: TextFormField(
                  decoration: InputDecoration(
                border: UnderlineInputBorder(),
                labelText: '@ Email',
              )),
            ),
            // Phone Number
            Row(
              children: [
                Expanded(
                    flex: 1,
                    child: Container(
                      child: Icon(
                        Icons.phone,
                        color: Colors.blueAccent,
                        size: 20,
                      ),
                    )),
                Expanded(
                  flex: 8,
                  child: Container(
                    margin: EdgeInsets.only(right: 20),
                    child: TextFormField(
                        decoration: InputDecoration(
                      border: UnderlineInputBorder(),
                      labelText: 'Phone Number',
                    )),
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