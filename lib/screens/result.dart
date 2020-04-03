import 'package:flutter/material.dart';

class ResultScreen extends StatelessWidget {
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
          crossAxisAlignment: CrossAxisAlignment.center,
          children: <Widget>[
            Text(
              'Your Result',
              style: TextStyle(),
            ),
            Expanded(
              child: Container(
                color: Color(0xFF1D1F33),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  crossAxisAlignment: CrossAxisAlignment.stretch,
                  children: <Widget>[
                    Text(
                      'remark',
                      style: Theme.of(context).textTheme.display1.copyWith(
                            color: Color(0xFFEA1556),
                          ),
                    ),
                    Text(
                      'score 22',
                      style: TextStyle(fontSize: 70),
                    ),
                    Text(
                      'Normal BMI Range:',
                      style: Theme.of(context).textTheme.display1.copyWith(
                            color: Color(0xFFEA1556),
                          ),
                    ),
                    Text(
                      '18.5 - 25 kg/m²',
                      style: Theme.of(context).textTheme.display1,
                    ),
                    Text(
                      'remarkdetails',
                      style: Theme.of(context).textTheme.display1.copyWith(
                            fontSize: 25,
                          ),
                    ),
                    FlatButton(
                      color: Color(0xFF101427),
                      onPressed: null,
                      child: Text('SAVE RESULT'),
                    )
                  ],
                ),
              ),
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
          child: Align(
              alignment: Alignment.center,
              child: Text(
                'RE-CALCULATE YOUR BMI',
                style: Theme.of(context).textTheme.body2.copyWith(
                      fontSize: 20,
                    ),
              )),
        ),
      ),
    );
  }
}
