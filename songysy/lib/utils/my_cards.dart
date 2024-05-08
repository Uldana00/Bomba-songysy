import 'package:flutter/material.dart';

class MyCard extends StatelessWidget {

  final double balance;
  final int cardNum;
  final int exDate;
  final int exYear;
  final Color;

  const MyCard({ Key? key,
  required this.balance,
  required this.cardNum,
  required this.exDate,
  required this.exYear,
  required this.Color,
  
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 25),
      child: Container(   
        width: 200,
        padding: EdgeInsets.all(20),
        decoration: BoxDecoration(
            color: Color,
            borderRadius: BorderRadius.circular(10)),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            SizedBox(
              height: 5,
            ),
            Text(
              'Balance',
              style: TextStyle(color: Colors.white),
            ),
            SizedBox(
              height: 5,
            ),
            Text(
              '\$'+ balance.toString(),
              style: TextStyle(color: Colors.white, fontSize: 34),
            ),
            SizedBox(
              height: 10,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text(
                  cardNum.toString() + '****',
                  style: TextStyle(color: Colors.white),
                ),
                Text(
                  exDate.toString() + "/" + exYear.toString(),
                  style: TextStyle(color: Colors.white),
                )
              ],
            ),
            SizedBox(
              height: 5,
            ),
          ],
        ),
      ),
    );
  }
}
