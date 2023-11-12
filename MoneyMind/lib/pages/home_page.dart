import 'package:app/util/my_card.dart';
import 'package:flutter/material.dart';

class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
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
          children: const [
            // 1º cartão
            MyCard(
              balance: 5250.50, 
              cardNumber: 12345678,
              experyMonth: 10,
              experyYear: 24,
              color: Color.fromARGB(255, 12, 67, 112),
            ),   
            // 2º cartão
            MyCard(
              balance: 100000.50, 
              cardNumber: 87654321,
              experyMonth: 12,
              experyYear: 30,
              color: Color.fromARGB(255, 67, 168, 67),
            ),
            // 3º cartão
            MyCard(
              balance: 1200.62, 
              cardNumber: 3283723723,
              experyMonth: 06,
              experyYear: 22,
              color: Color.fromARGB(255, 194, 130, 186),
            ),

          

          ]),
        ),
          //3 buttons -> send + pay + bills
          
          //column -> stats + transactions

      ]),
      )
    );
  }
}
