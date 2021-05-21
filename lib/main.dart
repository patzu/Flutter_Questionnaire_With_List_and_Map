import 'package:flutter/material.dart';

void main() {
  runApp(
    MyApp(),
  );
}

class MyApp extends StatefulWidget {
  const MyApp({Key key}) : super(key: key);

  @override
  _MyAppState createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  List<Widget> checkList = [];
  int i = 0;
  List<Map<String, String>> questions = [
    {'Are you After the the age of 30?': 'yes'},
    {'Are you married?': 'no'},
    {'Do you own any pet?': 'yes'},
    {'Done.': ''}
  ];

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        backgroundColor: Colors.blueGrey[700],
        body: SafeArea(
          child: Padding(
            padding: EdgeInsets.all(10),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.stretch,
              children: [
                SizedBox(
                  height: 200,
                ),
                Expanded(
                  flex: 5,
                  child: Text(
                    questions[i].keys.first,
                    style: TextStyle(
                      color: Colors.white,
                      fontSize: 22,
                    ),
                  ),
                ),
                Expanded(
                  flex: 1,
                  child: TextButton(
                    onPressed: () {
                      setState(
                        () {
                          if (i < 3) {
                            if (questions[i].values.first == 'yes') {
                              checkList.add(
                                Icon(
                                  Icons.check,
                                  color: Colors.green,
                                ),
                              );
                            } else {
                              checkList.add(
                                Icon(
                                  Icons.close,
                                  color: Colors.red,
                                ),
                              );
                            }
                            i++;
                          }
                        },
                      );
                    },
                    style: ButtonStyle(
                        backgroundColor:
                            MaterialStateProperty.all(Colors.green)),
                    child: Text(
                      'Yes',
                      style: TextStyle(
                        fontSize: 25,
                        color: Colors.white,
                      ),
                    ),
                  ),
                ),
                SizedBox(
                  height: 10,
                ),
                Expanded(
                  flex: 1,
                  child: TextButton(
                    onPressed: () {
                      setState(
                        () {
                          if (i < 3) {
                            if (questions[i].values.first == 'no') {
                              checkList.add(
                                Icon(
                                  Icons.check,
                                  color: Colors.green,
                                ),
                              );
                            } else {
                              checkList.add(
                                Icon(
                                  Icons.close,
                                  color: Colors.red,
                                ),
                              );
                            }
                            i++;
                          }
                        },
                      );
                    },
                    style: ButtonStyle(
                      backgroundColor: MaterialStateProperty.all(Colors.red),
                    ),
                    child: Text(
                      'No',
                      style: TextStyle(
                        fontSize: 25,
                        color: Colors.white,
                      ),
                    ),
                  ),
                ),
                Row(
                  children: checkList,
                )
              ],
            ),
          ),
        ),
      ),
    );
  }
}
