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
          Container(
            //Largura do container
            width: 350,
            //aumentar a grossura do container
            padding:const EdgeInsets.all(20),       
            decoration: BoxDecoration(
              // cor do fundo do container 
              color: const Color.fromARGB(255, 106, 151, 196),
              //bordas redondas
              borderRadius: BorderRadius.circular(16),
            ),
            child: const Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                //formatação balance
                SizedBox(
                      height: 5,
                      ),
                Text(
                  'Balance',
                    style: TextStyle(
                      color: Colors.white,
                      fontSize: 26,
                      fontWeight: FontWeight.bold,
                    ),
                ),
                    SizedBox(
                      height: 10,
                      ),
                //dinheiro na conta
                Text(
                  '\$5,250.20',
                    style: TextStyle(
                      color: Colors.white,
                      fontSize: 33,
                    ),
                  ),
                      SizedBox(
                        height: 6,
                      ),
                //row funciona como um organizar de widegts horizontalmente
                // assim como o column
                Row(       
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,     
                  children: [
                  //numero de cartão
                  Text(
                    '**** 3456',
                      style: TextStyle(
                        color: Colors.white,  
                        fontSize: 17,  
                      ),
                    ),
                  //data em que espira o cartão
                  Text(
                    '11/26',
                      style: TextStyle(
                        color: Colors.white,  
                        fontSize: 17,  
                      ),
                    ),
                ],)
                
              ],
            ),
          ),

          //3 buttons -> send + pay + bills
          // 
          //column -> stats + transactions

      ]),
      )
    );
  }
}
