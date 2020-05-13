import 'package:calcu/buttons.dart';
import 'package:calcu/functions.dart';
import 'package:flutter/material.dart';
import 'package:flutter_neumorphic/flutter_neumorphic.dart';

class HomePage extends StatefulWidget {
  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  String result = '0';
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: NeumorphicColors.background,
        body: SafeArea(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.stretch,
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: <Widget>[
              Padding(
                padding: const EdgeInsets.only(left: 20, right: 20, top: 20),
                child: Container(
                  height: 200,
                  child: Neumorphic(
                    child: Stack(
                      children: <Widget>[
                        Container(
                          alignment: AlignmentDirectional.topEnd,
                          child: Text(
                            ques,
                            textAlign: TextAlign.end,
                            maxLines: 1,
                            style: TextStyle(fontSize: 60),
                          ),
                        ),
                        Container(
                          alignment: AlignmentDirectional.topEnd,
                          child: Padding(
                            padding: const EdgeInsets.only(top: 100),
                            child: Text(
                              result,
                              textAlign: TextAlign.end,
                              maxLines: 1,
                              style: TextStyle(fontSize: 70),
                            ),
                          ),
                        ),
                      ],
                    ),
                    boxShape:
                        NeumorphicBoxShape.roundRect(BorderRadius.circular(20)),
                    style: NeumorphicStyle(
                        depth: -20,
                        lightSource: LightSource.bottomLeft,
                        color: Colors.white70,
                        border: NeumorphicBorder(color: Colors.black38)),
                  ),
                ),
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: <Widget>[
                  Buttons(
                    s: 'AC',
                    onpress: () {
                      setState(() {
                        result = '0';
                        n = '';
                        choice = '';
                        answer = 0;
                        ques = '0';
                      });
                    },
                  ),
                  Container(
                    height: 65,
                    width: 65,
                    child: NeumorphicButton(
                      onClick: () {
                        setState(() {
                          result = "${result.substring(0, result.length - 1)}";
                          lll = result.length;
                          oppress(lll, result);
                        });
                      },
                      boxShape: NeumorphicBoxShape.roundRect(
                          BorderRadius.circular(20)),
                      minDistance: -15.0,
                      duration: Duration(milliseconds: 200),
                      child: Center(child: Icon(Icons.arrow_back)),
                    ),
                  ),
                  Buttons(
                    s: '%',
                    onpress: () {
                      setState(() {
                        lll = result.length;
                        n = n + '%';
                        oppress(lll, result);
                        result = result + '%';
                        choice = '%';
                      });
                    },
                  ),
                  Buttons(
                    s: '/',
                    onpress: () {
                      setState(() {
                        choice = '/';
                        lll = result.length;
                        n = n + '/';
                        oppress(lll, result);
                        result = result + '/';
                      });
                    },
                  )
                ],
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: <Widget>[
                  Buttons(
                    onpress: () {
                      setState(() {
                        result = getInp(7);
                      });
                    },
                    s: '7',
                  ),
                  Buttons(
                    onpress: () {
                      setState(() {
                        result = getInp(8);
                      });
                    },
                    s: '8',
                  ),
                  Buttons(
                    onpress: () {
                      setState(() {
                        result = getInp(9);
                      });
                    },
                    s: '9',
                  ),
                  Buttons(
                    s: 'X',
                    onpress: () {
                      setState(() {
                        choice = 'X';
                        lll = result.length;
                        n = n + 'X';
                        oppress(lll, result);
                        result = result + 'X';
                      });
                    },
                  )
                ],
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: <Widget>[
                  Buttons(
                    onpress: () {
                      setState(() {
                        result = getInp(4);
                      });
                    },
                    s: '4',
                  ),
                  Buttons(
                    onpress: () {
                      setState(() {
                        result = getInp(5);
                      });
                    },
                    s: '5',
                  ),
                  Buttons(
                    onpress: () {
                      setState(() {
                        result = getInp(6);
                      });
                    },
                    s: '6',
                  ),
                  Buttons(
                    s: '-',
                    onpress: () {
                      setState(() {
                        choice = '-';
                        lll = result.length;
                        n = n + '-';
                        oppress(lll, result);
                        result = result + '-';
                      });
                    },
                  )
                ],
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: <Widget>[
                  Buttons(
                    onpress: () {
                      setState(() {
                        result = getInp(1);
                      });
                    },
                    s: '1',
                  ),
                  Buttons(
                    onpress: () {
                      setState(() {
                        result = getInp(2);
                      });
                    },
                    s: '2',
                  ),
                  Buttons(
                    onpress: () {
                      setState(() {
                        result = getInp(3);
                      });
                    },
                    s: '3',
                  ),
                  Buttons(
                    s: '+',
                    onpress: () {
                      setState(() {
                        choice = '+';
                        lll = result.length;
                        n = n + '+';
                        oppress(lll, result);
                        result = result + '+';
                      });
                    },
                  )
                ],
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: <Widget>[
                  Container(
                    height: 65,
                    width: 175,
                    child: NeumorphicButton(
                      boxShape: NeumorphicBoxShape.roundRect(
                          BorderRadius.circular(25)),
                      minDistance: -10.0,
                      duration: Duration(milliseconds: 100),
                      child: Padding(
                        padding: const EdgeInsets.only(top: 7),
                        child: Text(
                          '0',
                          style: TextStyle(
                            fontSize: 30,
                          ),
                        ),
                      ),
                      onClick: () {
                        setState(() {
                          result = getInp(0);
                        });
                      },
                    ),
                  ),
                  Buttons(
                    s: '.',
                  ),
                  Buttons(
                    s: '=',
                    onpress: () {
                      setState(() {
                        result = calc(result);
                        n = result;
                        lll = result.length;
                      });
                    },
                  )
                ],
              ),
            ],
          ),
        ));
  }
}
