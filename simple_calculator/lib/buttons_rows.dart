import 'package:flutter/material.dart';
import 'package:hexcolor/hexcolor.dart';

class FifthRowOfButtons extends StatelessWidget {
  const FifthRowOfButtons({
    super.key,
    required this.numberButtonStyle,
    required this.numberTextStyle,
    required this.enterNumber,
    required this.calculateResult,
  });

  final ButtonStyle numberButtonStyle;
  final TextStyle numberTextStyle;
  final Function(String) enterNumber;
  final Function() calculateResult;

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        ElevatedButton(
          onPressed: () => enterNumber("0"), 
          style: numberButtonStyle, 
          child: Text(
            "0", 
            style: numberTextStyle,
          ),
        ),
        const SizedBox(width: 20,),
        ElevatedButton(
          onPressed: () => enterNumber("."), 
          style: numberButtonStyle, 
          child: Text(
            ".", 
            style: numberTextStyle,
          ),
        ),
        const SizedBox(width: 20,),
        ElevatedButton(
          onPressed: calculateResult, 
          style: ButtonStyle(
            shape: MaterialStateProperty.all(
              const RoundedRectangleBorder(
                borderRadius: BorderRadius.all(
                  Radius.circular(9),
                ),
              ),
            ),
            fixedSize: MaterialStateProperty.all(const Size(166, 71)), 
            backgroundColor:  MaterialStateProperty.all(HexColor("#66FF7F")),
          ),
          child: Text(
            "=", 
            style:TextStyle(
              color: HexColor("#343434"), 
              fontSize: 36, 
              fontWeight: FontWeight.w400,
            ),
          ),
        ),
      ],
    );
  }
}

class FourthRowOfButtons extends StatelessWidget {
  
  const FourthRowOfButtons({
    super.key,
    required this.numberButtonStyle,
    required this.numberTextStyle,
    required this.operationsTextStyle,
    required this.enterNumber,
    required this.setOperation,
  });
  
  final Function(String) enterNumber;
  final ButtonStyle numberButtonStyle;
  final TextStyle numberTextStyle;
  final TextStyle operationsTextStyle;
  final Function(String) setOperation;

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        ElevatedButton(
          onPressed: () => enterNumber("1"), 
          style: numberButtonStyle, 
          child: Text(
            "1", 
            style: numberTextStyle,
          ),
        ),
        ElevatedButton(
          onPressed: () => enterNumber("2"), 
          style: numberButtonStyle, 
          child: Text(
            "2", 
            style: numberTextStyle,
          ),
        ),
        ElevatedButton(
          onPressed: () => enterNumber("3"), 
          style: numberButtonStyle, 
          child: Text(
            "3", 
            style: numberTextStyle,
          ),
        ),
        ElevatedButton(
          onPressed: () => setOperation('+'), 
          style: numberButtonStyle, 
          child: Text(
            "+", 
            style: operationsTextStyle,
          ),
        ),
      ],
    );
  }
}

class ThirdRowOfButtons extends StatelessWidget {
  const ThirdRowOfButtons({
    super.key,
    required this.numberButtonStyle,
    required this.numberTextStyle,
    required this.operationsTextStyle,
    required this.enterNumber,
    required this.setOperation,
  });

  final ButtonStyle numberButtonStyle;
  final TextStyle numberTextStyle;
  final TextStyle operationsTextStyle;
  final Function(String) enterNumber;
  final Function(String) setOperation;

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        ElevatedButton(
          onPressed: () => enterNumber("4"), 
          style: numberButtonStyle, 
          child: Text(
            "4",
            style: numberTextStyle,
          ),
        ),
        ElevatedButton(
          onPressed: () => enterNumber("5"),          
          style: numberButtonStyle, 
          child: Text(
            "5", 
            style: numberTextStyle,
          ),
        ),
        ElevatedButton(
          onPressed: () => enterNumber("6"), 
          style: numberButtonStyle, 
          child: Text(
            "6", 
            style: numberTextStyle,
          ),
        ),
        ElevatedButton(
          onPressed: () => setOperation('-'), 
          style: numberButtonStyle, 
          child: Text(
            "–", 
            style: operationsTextStyle,
          ),
        ),
      ],
    );
  }
}

class SecondRowOfButtons extends StatelessWidget {
  const SecondRowOfButtons({
    super.key,
    required this.numberButtonStyle,
    required this.numberTextStyle,
    required this.operationsTextStyle,
    required this.enterNumber,
    required this.setOperation,
  });

  final ButtonStyle numberButtonStyle;
  final TextStyle numberTextStyle;
  final TextStyle operationsTextStyle;
  final Function(String) enterNumber;
  final Function(String) setOperation;

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        ElevatedButton(
          onPressed: () => enterNumber("7"), 
          style: numberButtonStyle, 
          child: Text(
            "7", 
            style: numberTextStyle,
          ),
        ),
        ElevatedButton(
          onPressed: () => enterNumber("8"), 
          style: numberButtonStyle, 
          child: Text(
            "8", 
            style: numberTextStyle,
            ),
          ),
        ElevatedButton(
          onPressed: () => enterNumber("9"), 
          style: numberButtonStyle, 
          child: Text(
            "9", 
            style: numberTextStyle,
          ),
        ),
        ElevatedButton(
          onPressed: ()=>setOperation('*'), 
          style: numberButtonStyle, 
          child: Text("×",
            style: operationsTextStyle,
          ),
        ),
      ],
    );
  }
}

class FirstRowOfButtons extends StatelessWidget {
  const FirstRowOfButtons({
    super.key,
    required this.percentOperation,
    required this.changeSign,
    required this.clearInput,
    required this.numberButtonStyle,
    required this.numberTextStyle,
    required this.operationsTextStyle,
    required this.setOperation,
  });

  final Function() percentOperation;
  final Function() changeSign;
  final Function() clearInput;
  final Function(String) setOperation;
  final ButtonStyle numberButtonStyle;
  final TextStyle numberTextStyle;
  final TextStyle operationsTextStyle;

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        ElevatedButton(
          onPressed: clearInput, 
          style: ButtonStyle(
            shape: MaterialStateProperty.all(
              const RoundedRectangleBorder(
                borderRadius: BorderRadius.all(Radius.circular(9)),
              ),
            ),
            fixedSize: MaterialStateProperty.all(const Size(73, 71)), 
            backgroundColor:  MaterialStateProperty.all(HexColor("#FF5959"),),
          ), 
          child: Text("C",
            style: TextStyle(
              color: HexColor("#343434"), 
              fontSize: 36, fontWeight: FontWeight.w400,
            ),
          ),
        ),
        ElevatedButton(
          onPressed: changeSign, 
          style: numberButtonStyle, 
          child: Text(
            "+/-", 
            style: numberTextStyle,
          ),
        ),
        ElevatedButton(
          onPressed: percentOperation, 
          style: numberButtonStyle, 
          child: Text(
            "%", 
            style: operationsTextStyle,
          ),
        ),
        ElevatedButton(
          onPressed: ()=>setOperation('/'), 
          style: numberButtonStyle, 
          child: Text(
            "÷", 
            style: operationsTextStyle,
          ),
        ),
      ],
    );
  }
}
