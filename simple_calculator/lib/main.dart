// ignore_for_file: avoid_unnecessary_containers, unreachable_from_main, use_colored_box

import 'package:flutter/material.dart';
import 'package:hexcolor/hexcolor.dart';
import 'package:simple_calculator/calculator_logic.dart';
import 'package:simple_calculator/main_screen_components.dart';
void main() {
  runApp(const MainApp());
}

class MainApp extends StatelessWidget {
  const MainApp({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        body:  MainScreen(
        ),
      ),
    );
  }
}

class MainScreen extends StatefulWidget {
  const MainScreen({super.key});

  @override
  State<MainScreen> createState() => _MainScreenState();
}

class _MainScreenState extends State<MainScreen> {

  String inputDigit = '0';
  String inputResult = '0';
  String resultValue = '0';

  void enterNumberOnPressed(String enteredDigit) {
    setState(() {
     final List<String> result = enterNumber(enteredDigit);
     inputDigit = result[0];
     inputResult = result[1];
    });
  }

  void setOperationOnPressed(String newOperation) {
    setState(() {
      operations = setOperation(newOperation);
    });
  }

  void calculateResultOnPressed() {  
    setState(() {
      final List? result = calculateResult();
      if (result == null){
        resultValue = 'Error';
      }
      else{
        resultValue = result[0].toString();
        inputDigit = result[0].toString();
      }
    });
  }

  void percentOperationOnPressed() {
    setState(() {
      resultValue = percentOperation();
    });
  }

   void clearInputOnPressed() {
    setState(() {
      final List<String> result = clearInput();
      inputResult = result[0];
      inputDigit = result[1];
      resultValue = result[2];
    });
  }

  void changeSignOnPressed() {
    setState(() {
     inputResult = changeSign();
    });
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      color: HexColor("#151515"),
      child: Column(
        children: [
          CalculatorScreen(inputResult: inputResult, resultValue: resultValue),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 19),
            child: Container(
              height: 1, 
              color: HexColor("#4E4D4D"), 
            ),
          ),
          const SizedBox(
            height: 25,
          ),
          CalculatorButtons(
            enterNumber: enterNumberOnPressed, 
            clearInput: clearInputOnPressed, 
            changeSign: changeSignOnPressed,
            percentOperation: percentOperationOnPressed,
            setOperation: setOperationOnPressed,
            calculateResult: calculateResultOnPressed,
          ),
        ],
      ),
    );
  }
}
