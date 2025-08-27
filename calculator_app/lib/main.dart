import 'package:calculator_app/components/button_component.dart';
import 'package:flutter/material.dart';
import 'package:math_expressions/math_expressions.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatefulWidget {
  const MyApp({super.key});

  @override
  _MyAppState createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  var userInput = '';
  var answer = '';

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        backgroundColor: Colors.black,
        body: SafeArea(
          child: Padding(
            padding: const EdgeInsets.symmetric(horizontal: 5),
            child: Column(
              children: [
                Expanded(
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.end,
                    crossAxisAlignment: CrossAxisAlignment.end,
                    children: [
                      Padding(
                        padding: const EdgeInsets.only(left: 30),
                        
                        child: Text(
                          userInput.isEmpty ? '0' : userInput,
                          style: const TextStyle(fontSize: 40, color: Colors.white),
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.all(10.0),
                        child: Text(
                          answer.isEmpty ? '' : '= $answer',
                          style: const TextStyle(fontSize: 30, color: Colors.grey),
                        ),
                      ),
                    ],
                  ),
                ),
                Row(
                  children: [
                    MyButton(
                      title: 'AC',
                      onPress: () {
                        userInput = '';
                        answer = '';
                        setState(() {

                        });
                      },
                    ),
                    MyButton(title: '+/-', onPress: () {
                      if(userInput.isNotEmpty) {
                        if(userInput.startsWith('-')){
                          userInput = userInput.substring(1);
                      }else {
                          userInput = '-$userInput';
                        }
                      }
                      setState(() {});
                      },
                    ),
                    MyButton(
                      title: '%',
                      onPress: () {
                        if(userInput.isNotEmpty) {
                          try {
                            double value = double.parse(userInput);
                            userInput = (value / 100).toString();
                            setState(() {});
                          } catch (e) {
                            setState(() {});
                            answer = 'Error';
                          }
                        } else {
                          answer = 'Error';
                          userInput = '';
                        }
                        setState(() {});
                      },
                    ),
                    MyButton(
                      title: '/',
                      bColor: const Color(0xffffa00a),
                      onPress: () {
                        userInput += '/';
                        setState(() {});
                      },
                    ),
                  ],
                ),
                Row(
                  children: [
                    MyButton(
                      title: '7',
                      onPress: () {
                        userInput += '7';
                        setState(() {});
                      },
                    ),
                    MyButton(
                      title: '8',
                      onPress: () {
                        userInput += '8';
                        setState(() {});
                      },
                    ),
                    MyButton(
                      title: '9',
                      onPress: () {
                        userInput += '9';
                        setState(() {});
                      },
                    ),
                    MyButton(
                      title: 'x',
                      bColor: const Color(0xffffa00a),
                      onPress: () {
                        userInput += 'x';
                        setState(() {});
                      },
                    ),
                  ],
                ),
                Row(
                  children: [
                    MyButton(
                      title: '4',
                      onPress: () {
                        userInput += '4';
                        setState(() {});
                      },
                    ),
                    MyButton(
                      title: '5',
                      onPress: () {
                        userInput += '5';
                        setState(() {});
                      },
                    ),
                    MyButton(
                      title: '6',
                      onPress: () {
                        userInput += '6';
                      setState(() {});
                      },
                    ),
                    MyButton(
                      title: '-',
                      bColor: const Color(0xffffa00a),
                      onPress: () {
                        userInput += '-';
                        setState(() {});
                      },
                    ),
                  ],
                ),
                Row(
                  children: [
                    MyButton(
                      title: '1',
                      onPress: () {
                        userInput += '1';
                        setState(() {});
                      },
                    ),
                    MyButton(
                      title: '2',
                      onPress: () {
                        userInput += '2';
                        setState(() {});
                      },
                    ),
                    MyButton(
                      title: '3',
                      onPress: () {
                        userInput += '3';
                        setState(() {});
                      },
                    ),
                    MyButton(
                      title: '+',
                      bColor: const Color(0xffffa00a),
                      onPress: () {
                        userInput += '+';
                        setState(() {});
                      },
                    ),
                  ],
                ),
                Row(
                  children: [
                    MyButton(
                      title: '.',
                      onPress: () {
                        if (userInput.isEmpty || !userInput.split(RegExp(r'[+\-x/]')).last.contains('.')) {
                          userInput += '.';
                          setState(() {});
                        }
                        if (!hasDecimalInCurrentNumber()) {
                          userInput += '.';
                          setState(() {});
                        }
                      },
                    ),
                    MyButton(
                      title: '0',
                      onPress: () {
                        userInput += '0';
                        setState(() {});
                      },
                    ),
                    MyButton(
                      title: 'DEL',
                      onPress: () {
                        if(userInput.isNotEmpty) {
                          userInput = userInput.substring(0, userInput.length - 1);
                        } else {
                          userInput = 'Already empty';
                        }
                        setState(() {});
                      },
                    ),
                    MyButton(
                      title: '=',
                      bColor: const Color(0xffffa00a),
                      onPress: () {
                      equalPres();
                        setState(() {

                        });
                      },
                    ),
                  ],
                ),
                const SizedBox(height: 10),
              ],
            ),
          ),
        ),
      ),
    );
  }

  void equalPres() {
    if(userInput.isEmpty) {
      setState(() {
        answer = '0';
      });
      return;
    }
    try {
      String finalUserInput = userInput;
      userInput = userInput.replaceAll('x', '*');
      Parser p = Parser();
      Expression expression = p.parse(userInput);
      ContextModel contextModel = ContextModel();

      double eval = expression.evaluate(EvaluationType.REAL, contextModel);
     setState(() {
       answer = eval.toString();
       userInput = '';
     });
    } catch (e) {
      setState(() {
        answer = 'Error';
      });
    }
  }


  // Helper to check if the current number has a decimal point
  bool hasDecimalInCurrentNumber() {
    if (userInput.isEmpty) return false;
    // Split by operators to get the current number
    List<String> parts = userInput.split(RegExp(r'[+\-x/]'));
    String currentNumber = parts.isNotEmpty ? parts.last : '';
    return currentNumber.contains('.');
  }
}
