import 'package:flutter/material.dart';
import 'dart:math';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Dice Roller',
      home: DiceRoller(),
    );
  }
}

class DiceRoller extends StatefulWidget {
  @override
  _DiceRollerState createState() => _DiceRollerState();
}

class _DiceRollerState extends State<DiceRoller> {
  Random random = new Random();

  String diceImage = 'images/dice1'; // Default images
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Dice Roller'),
        backgroundColor: Colors.redAccent,
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Image(
              image: AssetImage('images/dice1'),
              height: 128.0,
              width: 128.0,
            ),
            SizedBox(
              height: 64.0,
            ),
            FlatButton(
              onPressed: () {
                // implement nanti
              },
              child: Text('Roll'),
              color: Colors.redAccent,
              textColor: Colors.white,
              shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(30.0)),
            )
          ],
          void rollDice() {
                // This line will generate random number from 0 to 5
                int randomNumber = random.nextInt( 6 );
              // Check the random number and set the right dice
            switch (randomNumber) {
              case 0 : diceImage = 'images/dice1.png' ; 
              break ;
            case 1 : diceImage = 'images/dice2.png' ; 
                break ;
            case 2 : diceImage = 'images/dice3.png' ;
                break ;
            case 3 : diceImage = 'images/dice4.png' ; 
                break ;
            case 4 : diceImage = 'images/dice5.png' ;
                break ;
            case 5 : diceImage = 'images/dice6.png' ; 
                break ;
        ),
        child: Column(
      mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.center,
            children: [
        Image(
        image: AssetImage(diceImage),
          height: 128.0 ,
        width: 128.0 ,
                  ),
              SizedBox(
height: 64.0 ,
),
                FlatButton(
              onPressed: () {
                setState(() {
              rollDice();
                });
                },
                child: Text( 'Roll' ),
                  color: Colors.redAccent,
                    textColor: Colors.white,
                  shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular( 30.0 )
              ),
)
],
),
      ),
    );

  
  }
      
}
