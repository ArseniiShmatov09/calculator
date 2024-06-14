// ignore_for_file: avoid_unnecessary_containers, unreachable_from_main, use_colored_box

import 'package:flutter/material.dart';
import 'package:hexcolor/hexcolor.dart';
import 'package:simple_calculator/buttons_rows.dart';

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
  String resultValue = '0';

  void enterNumber(String enteredDigit) {
    setState(() {
      if(inputDigit == '0' && enteredDigit != '.'){
        inputDigit = inputDigit.substring(1);
      }
      if((inputDigit.contains('.') && enteredDigit == '.') || inputDigit.length == 12){
        inputDigit += '';
      }
      else {
        inputDigit += enteredDigit;
      }
    });
  }

  void clearInput() {
    setState(() {
      inputDigit = '0';
    });
  }

  void changeSign() {
    setState(() {
     
      if(inputDigit != '0'){ 
        if(double.tryParse(inputDigit)! > 0){
          inputDigit = '-$inputDigit';
        }
        else{
          inputDigit = inputDigit.substring(1);
        }
      }
    });
  }
  
  void percentResult() {
    setState(() {
      if (inputDigit == '0'){
        resultValue = '0';
      }
      resultValue = (double.tryParse(inputDigit)! / 100).toString();
      inputDigit = resultValue;
    });
  }

  @override
  Widget build(BuildContext context) {

    return Container(
      color: HexColor("#151515"),
      child: Column(
        children: [
          Column(
            children: [
              Container(
                padding: const EdgeInsets.fromLTRB(0, 40, 19, 0),
                alignment: Alignment.bottomRight,
                child: InputFieldValue(value: inputDigit),
              ),
              Container(
                padding: const EdgeInsets.fromLTRB(0, 70, 19, 50),
                alignment: Alignment.bottomRight,
                child: Text(
                  resultValue, 
                  maxLines: 1,
                  style: TextStyle(
                    color: HexColor("#969696"), 
                    fontSize: 48, 
                    fontWeight: FontWeight.w400,
                  ),   
                ),
              ),
            ],
          ),
          
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
            enterNumber: enterNumber, 
            clearInput: clearInput, 
            changeSign: changeSign,
            percentResult: percentResult,
          ),
        ],
      ),
    );
  }
}

class InputFieldValue extends StatelessWidget {
  const InputFieldValue({
    required this.value,
    super.key,
  });

  final String value;

  @override
  Widget build(BuildContext context) {
    return Text(
      value, 
      maxLines: 1,
      style: TextStyle(
        color: HexColor("#FFFFFF"), 
        fontSize: 48, 
        fontWeight: FontWeight.w400,
      ),   
    );
  }
}

class CalculatorButtons extends StatelessWidget {
 
  final Function(String) enterNumber;
  final Function() clearInput;
  final Function() changeSign;
  final Function() percentResult;
  
  
  
  CalculatorButtons({
    required this.clearInput,
    required this.enterNumber, 
    required this.changeSign,
    required this.percentResult,
    
    super.key,
  });

  final numberButtonStyle = 
      ButtonStyle(
        padding: MaterialStateProperty.all<EdgeInsets>(EdgeInsets.zero),
        shape: MaterialStateProperty.all(
          const RoundedRectangleBorder(
            borderRadius: BorderRadius.all(
              Radius.circular(9),
            ),
          ),
        ),
        fixedSize: MaterialStateProperty.all(const Size(73, 71)), 
        backgroundColor:  MaterialStateProperty.all(HexColor("#343434")),
      );

    final numberTextStyle =   
      TextStyle(
        color: HexColor("#FFFFFF"), 
        fontSize: 36, 
        fontWeight: FontWeight.w400,);

    final operationsTextStyle = 
      TextStyle(
        color: HexColor("#66FF7F"), 
        fontSize: 30, 
        fontWeight: FontWeight.w400,);

  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: Container(
        padding: const EdgeInsets.symmetric(horizontal: 20),
        child: Column(
          children: [
            FirstRowOfButtons(
              percentResult: percentResult,
              changeSign: changeSign,
              clearInput: clearInput,
              numberButtonStyle: numberButtonStyle, 
              numberTextStyle: numberTextStyle, 
              operationsTextStyle: operationsTextStyle,
            ),
            const SizedBox(height: 20,),
            SecondRowOfButtons(
              enterNumber: enterNumber,
              numberButtonStyle: numberButtonStyle, 
              numberTextStyle: numberTextStyle, 
              operationsTextStyle: operationsTextStyle,
            ),
            const SizedBox(height: 20,),
            ThirdRowOfButtons(
              enterNumber: enterNumber,
              numberButtonStyle: numberButtonStyle, 
              numberTextStyle: numberTextStyle, 
              operationsTextStyle: operationsTextStyle,
            ),
            const SizedBox(height: 20,),
            FourthRowOfButtons(
              enterNumber: enterNumber,
              numberButtonStyle: numberButtonStyle, 
              numberTextStyle: numberTextStyle, 
              operationsTextStyle: operationsTextStyle,
            ),
            const SizedBox(height: 20,),
            FifthRowOfButtons(
              enterNumber: enterNumber,              
              numberButtonStyle: numberButtonStyle, 
              numberTextStyle: numberTextStyle,
            ),
          ],
        ),
      ),
    );
  }
}
