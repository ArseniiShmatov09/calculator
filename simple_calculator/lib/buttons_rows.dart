import 'package:flutter/material.dart';
import 'package:hexcolor/hexcolor.dart';

class FifthRowOfButtons extends StatelessWidget {
  const FifthRowOfButtons({
    super.key,
    required this.numberButtonStyle,
    required this.numberTextStyle,
  });

  final ButtonStyle numberButtonStyle;
  final TextStyle numberTextStyle;

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        ElevatedButton(
          onPressed: ()=>{}, 
          style: numberButtonStyle, 
          child: Text(
            "0", 
            style: numberTextStyle,
          ),
        ),
        const SizedBox(width: 20,),
        ElevatedButton(
          onPressed: ()=>{},
          style: numberButtonStyle, 
          child: Text(
            ".", 
            style: numberTextStyle,
          ),
        ),
        const SizedBox(width: 20,),
        ElevatedButton(
          onPressed: ()=>{}, 
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
  });

  final ButtonStyle numberButtonStyle;
  final TextStyle numberTextStyle;
  final TextStyle operationsTextStyle;

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        ElevatedButton(
          onPressed: ()=>{}, 
          style: numberButtonStyle, 
          child: Text(
            "1", 
            style: numberTextStyle,
          ),
        ),
        ElevatedButton(
          onPressed: ()=>{}, 
          style: numberButtonStyle, 
          child: Text(
            "2", 
            style: numberTextStyle,
          ),
        ),
        ElevatedButton(
          onPressed: ()=>{}, 
          style: numberButtonStyle, 
          child: Text(
            "3", 
            style: numberTextStyle,
          ),
        ),
        ElevatedButton(
          onPressed: ()=>{}, 
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
  });

  final ButtonStyle numberButtonStyle;
  final TextStyle numberTextStyle;
  final TextStyle operationsTextStyle;

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        ElevatedButton(
          onPressed: ()=>{}, 
          style: numberButtonStyle, 
          child: Text("4",
            style: numberTextStyle,
          ),
        ),
        ElevatedButton(
          onPressed: ()=>{}, 
          style: numberButtonStyle, 
          child: Text(
            "5", 
            style: numberTextStyle,
          ),
        ),
        ElevatedButton(
          onPressed: ()=>{}, 
          style: numberButtonStyle, 
          child: Text(
            "6", 
            style: numberTextStyle,
          ),
        ),
        ElevatedButton(
          onPressed: ()=>{}, 
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
  });

  final ButtonStyle numberButtonStyle;
  final TextStyle numberTextStyle;
  final TextStyle operationsTextStyle;

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        ElevatedButton(
          onPressed: ()=>{}, 
          style: numberButtonStyle, 
          child: Text(
            "7", 
            style: numberTextStyle,
          ),
        ),
        ElevatedButton(
          onPressed: ()=>{}, 
          style: numberButtonStyle, 
          child: Text(
            "8", 
            style: numberTextStyle,
            ),
          ),
        ElevatedButton(
          onPressed: ()=>{}, 
          style: numberButtonStyle, 
          child: Text(
            "9", 
            style: numberTextStyle,
          ),
        ),
        ElevatedButton(
          onPressed: ()=>{}, 
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
    required this.numberButtonStyle,
    required this.numberTextStyle,
    required this.operationsTextStyle,
  });

  final ButtonStyle numberButtonStyle;
  final TextStyle numberTextStyle;
  final TextStyle operationsTextStyle;

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        ElevatedButton(
          onPressed: ()=>{}, 
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
          onPressed: ()=>{}, 
          style: numberButtonStyle, 
          child: Text(
            "+/-", 
            style: numberTextStyle,
          ),
        ),
        ElevatedButton(
          onPressed: ()=>{}, 
          style: numberButtonStyle, 
          child: Text(
            "%", 
            style: operationsTextStyle,
          ),
        ),
        ElevatedButton(
          onPressed: ()=>{}, 
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


 
