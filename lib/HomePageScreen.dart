import 'dart:ui';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

var item_ad = [
  'assets/image/itme2.png',
  'assets/image/itme3.png',
  'assets/image/imageitem.png',
  'assets/image/itme4.png'
];

class HomePageScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('')) ,
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 20.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Expanded(
              flex: 2,
              child: Stack(
                children: [
                  SizedBox(
                      width: double.infinity,
                      child: Image.asset(
                        'assets/image/Mainpage.png',
                        fit: BoxFit.fitWidth,
                      )),
                  Column(
                    mainAxisAlignment: MainAxisAlignment.end,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Padding(
                        padding: const EdgeInsets.all(20.0),
                        child: Text(
                          'Fashion\nsale',
                          style: TextStyle(
                            color: Colors.white,
                            fontSize: 30.0,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                      ),
                      ElevatedButton(
                          style: ButtonStyle(
                            backgroundColor: MaterialStateProperty.all(
                                Color.fromARGB(255, 240, 31, 14)),
                            shape: MaterialStateProperty.all(
                                RoundedRectangleBorder(
                                    borderRadius: BorderRadius.circular(8.0))),
                          ),
                          onPressed: () {},
                          child: Text('Check')),
                    ],
                  )
                ],
              ),
            ),
            SizedBox(
              height: 20.0,
            ),
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Row(
                  children: [
                    Text(
                      'New',
                      style: TextStyle(
                          fontWeight: FontWeight.bold, fontSize: 30.0),
                    ),
                    Container(
                        child: TextButton(
                            onPressed: () {}, child: Text('View all ->'))),
                  ],
                ),
                Text(
                  'You’ve never seen it before!',
                  style: TextStyle(
                      fontWeight: FontWeight.normal,
                      color: Colors.grey.shade500),
                ),
              ],
            ),
            Expanded(
              flex: 1,
              child: ListView.separated(
                scrollDirection: Axis.horizontal,
                // physics: NeverScrollableScrollPhysics() ,
                itemBuilder: (context, index) => newProduct(index),
                separatorBuilder: (context, index) => Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 10.0),
                ),
                itemCount: 4,
              ),
            ),
          ],
        ),
      ),
    );
  }

  Widget newProduct(index) => Container(
        width: 100,
        height: 100,
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Expanded(
              child: Stack(children: [
                Image.asset('${item_ad[index]}'),
                Padding(
                  padding:
                      const EdgeInsets.symmetric(vertical: 10.0, horizontal: 5),
                  child: Container(
                      color: Colors.grey,
                      child: Text(
                        'NEW',
                        style: TextStyle(
                            color: Colors.white, fontWeight: FontWeight.bold),
                      )),
                )
              ]),
            ),
            SizedBox(
              height: 2.0,
            ),
            Text('OVS'),
            SizedBox(
              height: 2.0,
            ),
            Text('Blouse'),
            SizedBox(
              height: 2.0,
            ),
            Text(
              '30\$',
              style: TextStyle(fontWeight: FontWeight.bold),
            ),
          ],
        ),
      );
}
