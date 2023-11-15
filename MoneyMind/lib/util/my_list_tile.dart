import 'package:flutter/material.dart';
// ignore_for_file: prefer_const_constructors

class MyListTile extends StatelessWidget {

  final String iconImagePath;
  final String tileName;
  final String tileSubtitle;

  const MyListTile({
    super.key,
    required this.iconImagePath,
    required this.tileName,
    required this.tileSubtitle,
  });

  @override
  Widget build(BuildContext context) {
    return Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  //icon
                  Padding(
                    padding: const EdgeInsets.only(bottom: 20.0),
                    child: Row(children: [
                         Container(
                      height: 80,
                      padding: EdgeInsets.all(12),
                      decoration: BoxDecoration(
                        color: Colors.grey[100],
                        borderRadius: BorderRadius.circular(12),
                      ),
                      child: Image.asset(iconImagePath),
                    ),
                  
                    SizedBox(
                      width: 28,
                    ),
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          tileName,
                          style: TextStyle(
                            fontWeight: FontWeight.bold,
                            fontSize: 20,
                          ),      
                          ),
                            SizedBox(
                              height: 8 
                            ),
                        Text(
                          tileSubtitle,
                          style: TextStyle(
                            fontSize: 18,
                            color: Colors.grey[500],
                          ), 
                          ),
                      ],
                    ),
                    ]),
                  ),   
                  Icon(Icons.arrow_forward_ios),
              ],
            );
  }
}