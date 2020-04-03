import 'package:bmi_calculator/screens/result.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

enum Gender { male, female }

class InputPage extends StatefulWidget {
  static const routeName = '/input-page';
  @override
  _InputPageState createState() => _InputPageState();
}

class _InputPageState extends State<InputPage> {
  Gender selectedGender;
  int height = 120;
  int weight = 50;
  int age = 25;
  @override
  Widget build(BuildContext context) {
    final mediaq = MediaQuery.of(context);

    return Scaffold(
      appBar: PreferredSize(
        preferredSize: Size.fromHeight(60),
        child: AppBar(
          leading:
              IconButton(icon: Icon(FontAwesomeIcons.bars), onPressed: () {}),
          title: Align(
            alignment: Alignment.center,
            child: Text(
              'BMI CALCULATOR\t\t\t\t',
              style: TextStyle(
                color: Colors.white,
                fontSize: 22,
              ),
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
                InkWell(
                  child: Container(
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(20),
                      color: selectedGender == Gender.male
                          ? Color(0xFF1D1F33)
                          : Color(0xFF101427),
                    ),
                    height: mediaq.size.height / 5,
                    width: mediaq.size.width / 2.45,
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.spaceAround,
                      children: <Widget>[
                        Icon(
                          FontAwesomeIcons.mars,
                          size: 60,
                          color: selectedGender == Gender.male
                              ? Colors.white
                              : Color(0xFF8E8E9B),
                        ),
                        Text(
                          'MALE',
                          style: Theme.of(context).textTheme.body2.copyWith(
                                color: selectedGender == Gender.male
                                    ? Colors.white
                                    : Color(0xFF8E8E9B),
                                fontSize: 25,
                              ),
                        ),
                      ],
                    ),
                  ),
                  onTap: () {
                    setState(() {
                      selectedGender = Gender.male;
                      print(selectedGender);
                    });
                  },
                ),
                InkWell(
                  child: Container(
                    height: mediaq.size.height / 5,
                    width: mediaq.size.width / 2.45,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(20),
                      color: selectedGender == Gender.female
                          ? Color(0xFF1D1F33)
                          : Color(0xFF101427),
                    ),
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.spaceAround,
                      children: <Widget>[
                        Icon(
                          FontAwesomeIcons.venus,
                          size: 60,
                          color: selectedGender == Gender.female
                              ? Colors.white
                              : Color(0xFF8E8E9B),
                        ),
                        Text(
                          'FEMALE',
                          style: Theme.of(context).textTheme.body2.copyWith(
                                color: selectedGender == Gender.female
                                    ? Colors.white
                                    : Color(0xFF8E8E9B),
                                fontSize: 25,
                              ),
                        )
                      ],
                    ),
                  ),
                  onTap: () {
                    setState(() {
                      selectedGender = Gender.female;
                      print(selectedGender);
                    });
                  },
                ),
              ],
            ),
            SizedBox(
              height: mediaq.size.height / 25,
            ),
            Container(
              height: mediaq.size.height / 5,
              width: double.infinity,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(20),
                color: Color(0xFF101427),
              ),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: <Widget>[
                  Text(
                    'HEIGHT',
                    style: Theme.of(context).textTheme.display1.copyWith(
                          color: Color(0xFFEA1556),
                        ),
                  ),
                  Row(
                    textBaseline: TextBaseline.alphabetic,
                    mainAxisAlignment: MainAxisAlignment.center,
                    crossAxisAlignment: CrossAxisAlignment.baseline,
                    children: <Widget>[
                      Text(
                        '${height.truncate()}',
                        style: Theme.of(context).textTheme.body1.copyWith(
                            fontSize: 55, fontWeight: FontWeight.w900),
                      ),
                      Text(
                        'cm',
                        style: Theme.of(context).textTheme.display1.copyWith(
                              color: Color(0xFFEA1556),
                            ),
                      ),
                    ],
                  ),
                  // SizedBox(height: 20),
                  Container(
                    padding: EdgeInsets.symmetric(horizontal: 20),
                    width: double.infinity,
                    child: CupertinoSlider(
                      activeColor: Color(0xffEA1556),
                      value: height.toDouble(),
                      onChanged: (newHeight) => setState(() {
                        height = newHeight.round();
                        print(height.truncate());
                      }),
                      min: 120,
                      max: 220,
                      // divisions: 190,
                    ),
                  ),
                ],
              ),
            ),
            SizedBox(
              height: mediaq.size.height / 25,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: <Widget>[
                Container(
                  height: mediaq.size.height / 5,
                  width: mediaq.size.width / 2.45,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(20),
                    color: Color(0xFF101427),
                  ),
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: <Widget>[
                      Text(
                        'WEIGHT',
                        style: Theme.of(context).textTheme.display1.copyWith(
                              color: Color(0xFFEA1556),
                            ),
                      ),
                      Text(
                        '$weight',
                        style: Theme.of(context).textTheme.body1,
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceAround,
                        children: <Widget>[
                          IconButton(
                              // color: Color(0xFF1C2033),
                              iconSize: mediaq.size.width / 9,
                              icon: Icon(
                                FontAwesomeIcons.minusCircle,
                                color: Color(0xFF1D1F33),
                              ),
                              onPressed: () {
                                setState(() {
                                  weight--;
                                  print(weight);
                                });
                              }),
                          IconButton(
                              // color: Color(0xFF1C2033),
                              iconSize: mediaq.size.width / 9,
                              icon: Icon(
                                FontAwesomeIcons.plusCircle,
                                color: Color(0xFF1D1F33),
                              ),
                              onPressed: () {
                                setState(() {
                                  weight++;
                                  print(weight);
                                });
                              }),
                        ],
                      )
                    ],
                  ),
                ),
                Container(
                  height: mediaq.size.height / 5,
                  width: mediaq.size.width / 2.45,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(20),
                    color: Color(0xFF101427),
                  ),
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: <Widget>[
                      Text(
                        'AGE',
                        style: Theme.of(context).textTheme.display1.copyWith(
                              color: Color(0xFFEA1556),
                            ),
                      ),
                      Text(
                        '$age',
                        style: Theme.of(context).textTheme.body1,
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceAround,
                        children: <Widget>[
                          IconButton(
                              // color: Color(0xFF1C2033),
                              iconSize: mediaq.size.width / 9,
                              icon: Icon(
                                FontAwesomeIcons.minusCircle,
                                color: Color(0xFF1D1F33),
                              ),
                              onPressed: () {
                                setState(() {
                                  age--;
                                  print(age);
                                });
                              }),
                          IconButton(
                              // color: Color(0xFF353949),
                              iconSize: mediaq.size.width / 9,
                              icon: Icon(
                                FontAwesomeIcons.plusCircle,
                                color: Color(0xFF1D1F33),
                              ),
                              onPressed: () {
                                setState(() {
                                  age++;
                                  print(age);
                                });
                              }),
                        ],
                      )
                    ],
                  ),
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
          decoration: BoxDecoration(
            // borderRadius: BorderRadius.circular(20),
            color: Color(0xFFEA1556),
          ),
          child: FlatButton(
            child: Align(
              alignment: Alignment.center,
              child: Text(
                'CALCULATE YOUR BMI',
                style: Theme.of(context).textTheme.body2.copyWith(
                      fontSize: 20,
                    ),
              ),
            ),
            onPressed: () {
              Navigator.of(context).pushNamed(ResultScreen.routeName);
            },
          ),
        ),
      ),
    );
  }
}
