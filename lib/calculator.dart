
import 'package:flutter/cupertino.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
import 'package:math_expressions/math_expressions.dart';

class Calculator extends StatefulWidget {
  const Calculator({Key? key}) : super(key: key);

  @override
  _CalculatorState createState() => _CalculatorState();
}

class _CalculatorState extends State<Calculator> {

  String expression = '0';
  String history = '0';

  void numClick(String value)
  {
    setState(() {
      if(expression == '0')
        {
          expression = '';
        }

      if(expression.contains('.'))
        {
          if(value == '.'){
            value = '';
          }
        }

      if(value == '+' || value == '-' || value == '*' || value == '/' || value == '%')
        {
          String lastChar = expression.substring(expression.length - 1);
          if(lastChar == '+' || lastChar == '-' || lastChar == '*' || lastChar == '/' || lastChar == '%')
            {
              value = '';
            }
        }
      expression += value;
    });
  }

  void calculate(String value)
  {

    Parser p = Parser();
    ContextModel cm  = ContextModel();
    Expression exp = p.parse(expression);
    double result = exp.evaluate(EvaluationType.REAL, cm);
    setState(() {
    history = expression;
    expression = result.toString();

    });
  }

  void backSpace(String value)
  {
    setState(() {
      String newString = expression.substring(0,expression.length - 1);
      expression = newString;
    });
  }

  void clear(String value)
  {
    setState(() {
      expression = '0';
      history = '0';
    });
  }


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        margin: const EdgeInsets.only(top: 50),
        child: Column(
          children: <Widget>[
            Row(
              mainAxisAlignment: MainAxisAlignment.end,
              children: <Widget>[
                IconButton(
                    onPressed: (){},
                    icon: const Icon(Icons.crop_square_outlined,color: Colors.green,),
                ),
                IconButton(
                  onPressed: (){},
                  icon: const Icon(Icons.screen_lock_rotation,color: Colors.green,),
                ),
              ],
            ),
            Container(
              margin: const EdgeInsets.symmetric(horizontal: 15),
              padding:const EdgeInsets.symmetric(vertical: 25),
              alignment: Alignment.centerRight,
              decoration: BoxDecoration(
                color: Colors.green.shade100,
               borderRadius: BorderRadius.circular(20),
               // shape: BoxShape.circle
              ),
              child:  Text(expression, style: const TextStyle(fontSize: 50),),
            ),
            Container(
              margin: const EdgeInsets.symmetric(horizontal: 15),
              padding:const EdgeInsets.symmetric(vertical: 25),
              alignment: Alignment.centerRight,
              child:  Text(history, style: const TextStyle(fontSize: 32),),
            ),
            const SizedBox(height: 20,),
            Expanded(
                child: Container(
                  padding:const EdgeInsets.symmetric(horizontal: 8.0, vertical: 8.0),
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.end,
                    children: <Widget>[
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceAround,
                        children: <Widget>[
                          calcButton(onPressed: clear,buttonText: 'C'),
                          calcButton(onPressed: numClick,buttonText: '/',backgroundColor: Colors.white, textColor: Colors.black),
                          calcButton(onPressed: numClick,buttonText: '*',backgroundColor: Colors.white, textColor: Colors.black),
                          calcButton(onPressed: backSpace,buttonText: '',backgroundColor: Colors.white, textColor: Colors.black),
                        ],
                      ),
                      const SizedBox(height: 10,),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceAround,
                        children: <Widget>[
                          calcButton(onPressed: numClick ,buttonText: '7',backgroundColor: Colors.white, textColor: Colors.black),
                          calcButton(onPressed: numClick,buttonText: '8',backgroundColor: Colors.white, textColor: Colors.black),
                          calcButton(onPressed: numClick,buttonText: '9',backgroundColor: Colors.white, textColor: Colors.black),
                          calcButton(onPressed: numClick,buttonText: '-',backgroundColor: Colors.white, textColor: Colors.black),
                        ],
                      ),
                      const SizedBox(height: 10,),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceAround,
                        children: <Widget>[
                          calcButton(onPressed: numClick,buttonText: '4',backgroundColor: Colors.white, textColor: Colors.black),
                          calcButton(onPressed: numClick,buttonText: '5',backgroundColor: Colors.white, textColor: Colors.black),
                          calcButton(onPressed: numClick,buttonText: '6',backgroundColor: Colors.white, textColor: Colors.black),
                          calcButton(onPressed: numClick,buttonText: '+',backgroundColor: Colors.white, textColor: Colors.black),
                        ],
                      ),
                      const SizedBox(height: 10,),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceAround,
                        children: <Widget>[

                          Column(
                            children: <Widget>[
                              calcButton(onPressed: numClick,buttonText: '1',backgroundColor: Colors.white, textColor: Colors.black),
                              const SizedBox(height: 10,),
                              calcButton(onPressed: numClick,buttonText: '%',backgroundColor: Colors.white, textColor: Colors.black),
                            ],
                          ),
                          Column(
                            children: <Widget>[
                              calcButton(onPressed: numClick,buttonText: '2',backgroundColor: Colors.white, textColor: Colors.black),
                              const SizedBox(height: 10,),
                              calcButton(onPressed: numClick,buttonText: '0',backgroundColor: Colors.white, textColor: Colors.black),
                            ],
                          ),
                          Column(
                            children: <Widget>[
                              calcButton(onPressed: numClick,buttonText: '3',backgroundColor: Colors.white, textColor: Colors.black),
                              const SizedBox(height: 10,),
                              calcButton(onPressed: numClick,buttonText: '.',backgroundColor: Colors.white, textColor: Colors.black),
                            ],
                          ),
                          Column(),
                          calcButton(onPressed: calculate,buttonText: '=',backgroundColor: Colors.green, textColor: Colors.black, buttonSize: const Size(60,110)),
                        ],
                      ),
                    ],
                  ),
                ),
            ),
          ],
        ),
      ),
    );
  }
  Widget calcButton({required Function onPressed, String? buttonText,Color? backgroundColor, Color? textColor, Size? buttonSize})
{
  buttonSize ??=  const Size(60, 50);
  Widget buttonWidget = const Icon(Icons.backspace_outlined, color: Colors.black,);
  if(buttonText != '')
    {
      buttonWidget = Text('$buttonText', style: TextStyle(color: textColor, fontSize: 30, fontWeight: FontWeight.bold),);
    }
  return ElevatedButton(
      onPressed: (){
        onPressed(buttonText);
      },
      child: buttonWidget,
    style: ButtonStyle(
      fixedSize: MaterialStateProperty.all(buttonSize),
      backgroundColor: MaterialStateProperty.all(backgroundColor),
    ),
  );
}
}
