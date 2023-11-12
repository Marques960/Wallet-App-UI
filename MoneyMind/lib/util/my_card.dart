import 'package:flutter/material.dart';
// ignore_for_file: prefer_interpolation_to_compose_strings
// ignore_for_file: prefer_const_constructors
// ignore_for_file: prefer_const_literals_to_create_immutable
// ignore_for_file: prefer_const_literals_to_create_immutables


class MyCard extends StatelessWidget {

    final double balance;
    final int cardNumber;
    final int experyMonth;
    final int experyYear;
    // ignore: prefer_typing_uninitialized_variables
    final color;

  const MyCard ({
    Key? key, 
    required this.balance,
    required this.cardNumber,
    required this.experyMonth,
    required this.experyYear,
    required this.color,
  }) : super(key : key);

  @override
  Widget build(BuildContext context) {
    return  Padding(
      padding: const EdgeInsets.all(8.0),
      child: Container(
              
              //Largura do container
              width: 350,           
              //padding para ter uma 'largura' entre os 3 cartões
              padding:const EdgeInsets.symmetric(horizontal: .10),    
              //aumentar a grossura do container   
              decoration: BoxDecoration(
                // cor do fundo do container 
                color: color,
                //bordas redondas
                borderRadius: BorderRadius.circular(16),
              ),
              child:  Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  //formatação balance
                  SizedBox(
                        height: 5,
                        ), 
                  //Balance
                  Container(
                    margin: EdgeInsets.only(left: 13.0),
                    child: Text(      
                      'Balance',
                        style: TextStyle(
                          color: Colors.white,
                          fontSize: 26,
                          fontWeight: FontWeight.bold,
                        ),
                    ),
                  ), 
                   SizedBox( height: 12,),
                  //dinheiro na conta
                  Container(
                    margin: EdgeInsets.only(left:20.0),
                    child:  Text(              
                      '\$' + balance.toString(),
                        style: TextStyle(
                          color: Colors.white,
                          fontSize: 33,
                      ),
                    ),
                  ),
                  SizedBox(height: 12,),
                  Container(
                    margin: EdgeInsets.only(left: 13.0),
                    child: Text(      
                      'Card Number',
                        style: TextStyle(
                          color: Colors.white,
                          fontSize: 23,
                          fontWeight: FontWeight.bold,
                        ),
                    ),
                  ), 

                  SizedBox( height: 12,),
                  //row funciona como um organizar de widegts horizontalmente
                  // assim como o column
                  Row(             
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,    
                    children: [    
                      Container(
                        margin: EdgeInsets.only(left: 20.0),
                        child: Text(
                        cardNumber.toString(),
                          style: const TextStyle(
                            color: Colors.white,  
                            fontSize: 17,  
                          ),
                        ),
                      ),
                    //numero de cartão
                    Container(
                      margin: EdgeInsets.only(right: 15.0),
                      child: Text(          
                      experyMonth.toString() + '/' + experyYear.toString(),
                        style: TextStyle(
                          color: Colors.white,  
                          fontSize: 17,  
                        ),
                      ),
                    ),
                    //data em que espira o cartão
                    
                  ]),
                ],
              ),
            ),
    );

  }
}