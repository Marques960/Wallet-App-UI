import 'package:app/util/my_button.dart';
import 'package:app/util/my_card.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:smooth_page_indicator/smooth_page_indicator.dart';
// ignore_for_file: unnecessary_import
// ignore_for_file: prefer_const_constructors
// ignore_for_file: prefer_const_literals_to_create_immutables
// ignore_for_file: avoid_unnecessary_containers

class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {

  //pageControler
  final _controller = PageController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey[300],
      body:  SafeArea(
        child: Column(children: [
          //App Bar
          //Pading para andar com o texto para o lado
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 25.0),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                const Row(children: [
                  Text(
                    'My ',
                    style:TextStyle(
                      fontSize: 28,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  Text(
                    'Cards',
                    style:TextStyle(fontSize: 28),
                  ),
                ],
              ),


              //Plus button (+)            
              Container(
                //tamanho do circulo
                padding: const EdgeInsets.all(8.0),
                decoration: const BoxDecoration(
                  //cor do circulo
                  color: Color.fromARGB(255, 178, 178, 178),
                  shape: BoxShape.circle,
                ),
                child: const Icon(Icons.add),
              ),
            ],
          ),
        ),

        const SizedBox(height: 25),

        //Cards
        // ignore: sized_box_for_whitespace
        Container(
          height: 200,
          child: PageView(
              scrollDirection: Axis.horizontal,
              controller: _controller,
          children: const [
            // 1º cartão
            MyCard(
              balance: 5250.50, 
              cardNumber: 12345678,
              experyMonth: 10,
              experyYear: 24,
              color: Color.fromRGBO(2, 69, 163, 1),
            ),   
            // 2º cartão
            MyCard(
              balance: 10000.50, 
              cardNumber: 87654321,
              experyMonth: 12,
              experyYear: 30,
              color: Color.fromARGB(255, 91, 176, 91),
            ),
            // 3º cartão
            MyCard(
              balance: 1200.62, 
              cardNumber: 3283723723,
              experyMonth: 06,
              experyYear: 22,
              color: Color.fromARGB(255, 201, 137, 192),
            ),
          ]),
        ),
        SizedBox(height: 10,),
        //3 botões de baixo para mostrar o scrool view
        SmoothPageIndicator(
          controller: _controller,
           count: 3,
           effect: ExpandingDotsEffect(
            activeDotColor: Colors.grey.shade800,
           ),
          ),

          SizedBox(height: 25,),

          //3 buttons -> send + pay + bills
          
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 25.0),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
              //send button      
              MyButton(
                iconImagePath: 'lib/Icons/send-money.png',
                 buttonText: 'Send',
                ),
          
              //pay button
               MyButton(
                iconImagePath: 'lib/Icons/credit-card.png',
                 buttonText: 'Pay',
                 ),
                 
              //bills button
               MyButton(
                iconImagePath: 'lib/Icons/bill.png',
                 buttonText: 'Bills',
                 ),
            ]),
          ),
          SizedBox(height: 25,),       
          //column -> stats + transactions
      ]),
      )
    );
  }
}
