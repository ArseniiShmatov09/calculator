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
      home: Scaffold(
        body:  MainScreen(
          ),
        ),
    );
  }
}

class MainScreen extends StatelessWidget {
  const MainScreen({super.key});

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
                child: Text(
                  "2 + 7", 
                  style: TextStyle(
                    color: HexColor("#FFFFFF"), 
                    fontSize: 48, 
                    fontWeight: FontWeight.w400,
                  ),   
                ),
              ),
              Container(
                padding: const EdgeInsets.fromLTRB(0, 70, 19, 50),
                alignment: Alignment.bottomRight,
                child: Text(
                  "9", 
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
          CalculatorButtons(),
        ],
      ),
    );
  }
}

class CalculatorButtons extends StatelessWidget {
  
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

  CalculatorButtons({super.key});

  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: Container(
        padding: const EdgeInsets.symmetric(horizontal: 20),
        child: Column(
          children: [
            FirstRowOfButtons(
              numberButtonStyle: numberButtonStyle, 
              numberTextStyle: numberTextStyle, 
              operationsTextStyle: operationsTextStyle,
            ),
            const SizedBox(height: 20,),
            SecondRowOfButtons(
              numberButtonStyle: numberButtonStyle, 
              numberTextStyle: numberTextStyle, 
              operationsTextStyle: operationsTextStyle,
            ),
            const SizedBox(height: 20,),
            ThirdRowOfButtons(
              numberButtonStyle: numberButtonStyle, 
              numberTextStyle: numberTextStyle, 
              operationsTextStyle: operationsTextStyle,
            ),
            const SizedBox(height: 20,),
            FourthRowOfButtons(
              numberButtonStyle: numberButtonStyle, 
              numberTextStyle: numberTextStyle, 
              operationsTextStyle: operationsTextStyle,
            ),
            const SizedBox(height: 20,),
            FifthRowOfButtons(
              numberButtonStyle: numberButtonStyle, 
              numberTextStyle: numberTextStyle,
            ),
          ],
        ),
      ),
    );
  }
}
