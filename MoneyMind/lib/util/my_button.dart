import 'package:flutter/material.dart';
// ignore_for_file: prefer_const_constructors

class MyButton extends StatelessWidget {

  //Adicionar variaveis para poder alterar os icons etc dos diferentes botões

  final String iconImagePath;
  final String buttonText;

  const MyButton({
    super.key,
    required this.iconImagePath,
    required this.buttonText,
    });

  @override
  Widget build(BuildContext context) {
    return Column(
            children: [
                Container(
                  //icon
                  height: 100,
                  padding: EdgeInsets.all(20),
                  decoration: BoxDecoration(
                  color:Color.fromARGB(255, 255, 255, 255),
                  borderRadius: BorderRadius.circular(12),
                  boxShadow: [
                    BoxShadow(
                      color: Colors.grey.shade400,
                      blurRadius: 20,
                      spreadRadius: 10,
                    )
                  ]
                  ),
                child: Center(
                  child: Image.asset(iconImagePath)
              ),
            ),
            SizedBox(height: 10,),
            //text widget
            Text(
              buttonText,
              style: TextStyle(
                fontSize: 18,
                fontWeight: FontWeight.bold,
                color: const Color.fromARGB(255, 58, 57, 57),
              ),
            ),
            ],
           );
  }
}