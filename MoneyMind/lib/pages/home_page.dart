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

    
          //Cards

          //3 buttons -> send + pay + bills 

          //column -> stats + transactions

      ]),
      )
    );
  }
}
