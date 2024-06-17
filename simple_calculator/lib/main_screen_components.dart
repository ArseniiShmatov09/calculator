import 'package:flutter/material.dart';
import 'package:hexcolor/hexcolor.dart';
import 'package:simple_calculator/buttons_rows.dart';


class CalculatorScreen extends StatelessWidget {
  const CalculatorScreen({
    super.key,
    required this.inputResult,
    required this.resultValue,
  });

  final String inputResult;
  final String resultValue;

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Container(
          padding: const EdgeInsets.fromLTRB(0, 40, 19, 0),
          alignment: Alignment.bottomRight,
          child: InputFieldValue(value: inputResult),
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
  final Function() percentOperation;
  final Function() calculateResult;
  final Function(String) setOperation;
  
  
  CalculatorButtons({
    required this.clearInput,
    required this.enterNumber, 
    required this.changeSign,
    required this.percentOperation,
    required this.calculateResult,
    required this.setOperation,
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
              percentOperation: percentOperation,
              changeSign: changeSign,
              clearInput: clearInput,
              numberButtonStyle: numberButtonStyle, 
              numberTextStyle: numberTextStyle, 
              operationsTextStyle: operationsTextStyle,
              setOperation: setOperation,
            ),
            const SizedBox(height: 20,),
            SecondRowOfButtons(
              enterNumber: enterNumber,
              numberButtonStyle: numberButtonStyle, 
              numberTextStyle: numberTextStyle, 
              operationsTextStyle: operationsTextStyle,
              setOperation: setOperation,
            ),
            const SizedBox(height: 20,),
            ThirdRowOfButtons(
              setOperation: setOperation,
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
              setOperation: setOperation,
            ),
            const SizedBox(height: 20,),
            FifthRowOfButtons(
              enterNumber: enterNumber,              
              numberButtonStyle: numberButtonStyle, 
              numberTextStyle: numberTextStyle,
              calculateResult: calculateResult,
            ),
          ],
        ),
      ),
    );
  }
}
