import 'package:flutter/material.dart';

class InputPage extends StatefulWidget {
  @override
  _InputPageState createState() => _InputPageState();
}

class _InputPageState extends State<InputPage> {
  @override
  Widget build(BuildContext context) {
    final mediaq = MediaQuery.of(context);
    return Scaffold(
      appBar: PreferredSize(
        preferredSize: Size.fromHeight(60),
        child: AppBar(
          title: Align(
            alignment: Alignment.center,
            child: Text(
              'BMI CALCULATOR',
            ),
          ),
          elevation: 20,
        ),
      ),
      drawer: Drawer(),
      body: Container(
        padding: EdgeInsets.all(mediaq.size.width / 15),
        child: Column(
          children: <Widget>[
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: <Widget>[
                Container(
                  height: mediaq.size.height / 5,
                  width: mediaq.size.width / 2.5,
                  color: Color(0xFF1D1F33),
                ),
                Container(
                  height: mediaq.size.height / 5,
                  width: mediaq.size.width / 2.5,
                  color: Color(0xFF1D1F33),
                ),
              ],
            ),
            SizedBox(
              height: mediaq.size.height / 25,
            ),
            Container(
              height: mediaq.size.height / 5,
              width: double.infinity,
              color: Color(0xFF1D1F33),
            ),
            SizedBox(
              height: mediaq.size.height / 25,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: <Widget>[
                Container(
                  height: mediaq.size.height / 5,
                  width: mediaq.size.width / 2.5,
                  color: Color(0xFF1D1F33),
                ),
                Container(
                  height: mediaq.size.height / 5,
                  width: mediaq.size.width / 2.5,
                  color: Color(0xFF1D1F33),
                ),
              ],
            ),
          ],
        ),
      ),
      bottomNavigationBar: BottomAppBar(
        child: Container(
          alignment: Alignment.bottomCenter,
          height: mediaq.size.height / 10,
          width: double.infinity,
          color: Color(0xFFEA1556),
        ),
      ),
    );
  }
}
