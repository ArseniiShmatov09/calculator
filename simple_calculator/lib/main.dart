// ignore_for_file: avoid_unnecessary_containers, unreachable_from_main, use_colored_box

import 'package:flutter/material.dart';
import 'package:hexcolor/hexcolor.dart';

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
    final numberButtonStyle = ButtonStyle(
                            padding: MaterialStateProperty.all<EdgeInsets>(EdgeInsets.zero),
                            shape: MaterialStateProperty.all(
                              const RoundedRectangleBorder(
                                borderRadius: BorderRadius.all(Radius.circular(9)),)),
                            fixedSize: MaterialStateProperty.all(const Size(73, 71)), 
                            backgroundColor:  MaterialStateProperty.all(HexColor("#343434")),
                         );
    final numberTextStyle = TextStyle(color: HexColor("#FFFFFF"), fontSize: 36, fontWeight: FontWeight.w400);
    final operationsTextStyle = TextStyle(color: HexColor("#66FF7F"), fontSize: 26, fontWeight: FontWeight.w400);

    return Container(
      color: HexColor("#151515"),
      child: Column(
        children: [
          Container(
            height: 300,
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
          Expanded(
            child: Container(
              padding: const EdgeInsets.symmetric(horizontal: 20),
                child: Column(
                  children: [
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        ElevatedButton(
                          onPressed: ()=>{}, 
                          style: ButtonStyle(
                            shape: MaterialStateProperty.all(
                              const RoundedRectangleBorder(
                                borderRadius: BorderRadius.all(Radius.circular(9)),)),
                            fixedSize: MaterialStateProperty.all(const Size(73, 71)), 
                            backgroundColor:  MaterialStateProperty.all(HexColor("#FF5959")),
                         ), 
                          child: Text("C",
                            style: TextStyle(color: HexColor("#343434"), fontSize: 36, fontWeight: FontWeight.w400),),),
                        ElevatedButton(onPressed: ()=>{}, style: numberButtonStyle, child: Text("+/-", style: numberTextStyle),),
                        ElevatedButton(onPressed: ()=>{}, style: numberButtonStyle, child: Text("%", style: operationsTextStyle)),
                        ElevatedButton(onPressed: ()=>{}, style: numberButtonStyle, child: Text("÷", style: operationsTextStyle)),
                      ],
                    ),
                    const SizedBox(height: 20,),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        ElevatedButton(onPressed: ()=>{}, style: numberButtonStyle, child: Text("7", style: numberTextStyle,)),
                        ElevatedButton(onPressed: ()=>{}, style: numberButtonStyle, child: Text("8", style: numberTextStyle,)),
                        ElevatedButton(onPressed: ()=>{}, style: numberButtonStyle, child: Text("9", style: numberTextStyle,)),
                        ElevatedButton(onPressed: ()=>{}, style: numberButtonStyle, child: Text("×", style: operationsTextStyle)),
                      ],
                    ),
                    const SizedBox(height: 20,),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        ElevatedButton(onPressed: ()=>{}, style: numberButtonStyle, child: Text("4", style: numberTextStyle,)),
                        ElevatedButton(onPressed: ()=>{}, style: numberButtonStyle, child: Text("5", style: numberTextStyle,)),
                        ElevatedButton(onPressed: ()=>{}, style: numberButtonStyle, child: Text("6", style: numberTextStyle,)),
                        ElevatedButton(onPressed: ()=>{}, style: numberButtonStyle, child: Text("–", style: operationsTextStyle)),
                      ],
                    ),
                    const SizedBox(height: 20,),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        ElevatedButton(onPressed: ()=>{}, style: numberButtonStyle, child: Text("1", style: numberTextStyle,)),
                        ElevatedButton(onPressed: ()=>{}, style: numberButtonStyle, child: Text("2", style: numberTextStyle,)),
                        ElevatedButton(onPressed: ()=>{}, style: numberButtonStyle, child: Text("3", style: numberTextStyle,)),
                        ElevatedButton(onPressed: ()=>{}, style: numberButtonStyle, child: Text("+", style: operationsTextStyle)),
                      ],
                    ),
                    const SizedBox(height: 20,),
                    Row(
                      children: [
                        ElevatedButton(onPressed: ()=>{}, style: numberButtonStyle, child: Text("0", style: numberTextStyle,)),
                        const SizedBox(width: 20,),
                        ElevatedButton(onPressed: ()=>{}, style: numberButtonStyle, child: Text(".", style: numberTextStyle,)),
                        const SizedBox(width: 20,),
                        ElevatedButton(onPressed: ()=>{}, style: ButtonStyle(fixedSize: MaterialStateProperty.all(const Size(166, 71))), child: const Text("=")),
                      ],
                    ),
                  ],
                ),
              ),
            ),
          ],
        ),
    );
  }
}


 
