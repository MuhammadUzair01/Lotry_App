import 'package:flutter/material.dart';
import 'dart:math';
void main() {
  runApp(  MyApp());
}

class  MyApp extends StatefulWidget {
   MyApp({Key? key}) : super(key: key);


  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  Random random=Random();
  int x = 0;
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: const Center(child: Text('Lottry App')),
        ),
        body: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
           const Center(child: Text('Lottry Winning Number is 5')),
            const SizedBox(
              height: 30,
            ),
           Container(
              height:x== 5 ? 600 : 250,
              decoration: BoxDecoration(
                  color:x ==5 ? Colors.tealAccent : Colors.grey.withOpacity(.3)),
              child: Padding(
                padding: const EdgeInsets.all(15.0),
               child: x==5 ?  Column(
                 mainAxisAlignment: MainAxisAlignment.center,
                 crossAxisAlignment: CrossAxisAlignment.center,
                 children: [
                   const Icon(
                     Icons.done_all,
                     color: Colors.green,
                     size: 35,
                   ),
                   const SizedBox(
                     height: 20,
                   ),
                   const Text(
                     'Congratulation You are The Lottry Winner',
                     textAlign: TextAlign.center,
                   ),
                 ],

               ):

               Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    const Icon(
                      Icons.error,
                      color: Colors.red,
                      size: 35,
                    ),
                    const SizedBox(
                      height: 20,
                    ),
                    Text(
                      'Better luck next time your number is $x \n try again',
                      textAlign: TextAlign.center,
                    ),
                  ],

                ),
              ),
            )
          ],
        ),
        floatingActionButton: FloatingActionButton(
          onPressed: () {

            x=random.nextInt(10);
            print(x);
            setState(() {

            });

          },
          child: const Icon(Icons.refresh),
        ),
      ),
    );
  }
}
