// ignore_for_file: prefer_const_literals_to_create_immutables, prefer_const_constructors

import 'package:flutter/material.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  bool isAccesibilityButtonSelected = false;
  bool isTimerButtonSelected = false;
  bool isAndroidButtonSelected = false;
  bool isiPhoneButtonSelected = false;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: const Text('Mc Flutter'),
        ),
        body: SizedBox(
          child: Column(
            children: [
              Container(
                margin: EdgeInsets.all(10),
                decoration: BoxDecoration(
                  border: Border.all(color: Colors.black),
                ),
                child: Column(
                  children: [
                    Row(mainAxisAlignment: MainAxisAlignment.center, children: [
                      Column(
                        children: [
                          Icon(
                            Icons.account_circle,
                            size: 50.0,
                          )
                        ],
                      ),
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text("Flutter McFlutter",
                              style: TextStyle(
                                  fontWeight: FontWeight.bold, fontSize: 20)),
                          Text("Experienced App Developer"),
                        ],
                      )
                    ]),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceAround,
                      children: [
                        Text("123 Main Street"),
                        Text("(415) 555-0198"),
                      ],
                    ),
                    Row(
                        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                        children: [
                          IconButton(
                              onPressed: () {
                                ScaffoldMessenger.of(context)
                                  ..hideCurrentSnackBar()
                                  ..showSnackBar(SnackBar(
                                      content: Text(
                                          "Únete a un club con otras personas")));
                                isAccesibilityButtonSelected =
                                    !isAccesibilityButtonSelected;
                                setState(() {});
                              },
                              icon: Icon(
                                color: isAccesibilityButtonSelected
                                    ? Colors.indigo
                                    : Colors.black,
                                Icons.accessibility,
                              )),
                          IconButton(
                              onPressed: () {
                                ScaffoldMessenger.of(context)
                                  ..hideCurrentSnackBar()
                                  ..showSnackBar(SnackBar(
                                      content: Text(
                                          "Cuenta regresiva para el evento: 31 días")));
                                isTimerButtonSelected = !isTimerButtonSelected;
                                setState(() {});
                              },
                              icon: Icon(
                                  color: isTimerButtonSelected
                                      ? Colors.indigo
                                      : Colors.black,
                                  Icons.timer)),
                          IconButton(
                              onPressed: () {
                                ScaffoldMessenger.of(context)
                                  ..hideCurrentSnackBar()
                                  ..showSnackBar(SnackBar(
                                      content:
                                          Text("Llama al número 4155550198")));
                                isAndroidButtonSelected =
                                    !isAndroidButtonSelected;
                                setState(() {});
                              },
                              icon: Icon(
                                  color: isAndroidButtonSelected
                                      ? Colors.indigo
                                      : Colors.black,
                                  Icons.phone_android)),
                          IconButton(
                              onPressed: () {
                                ScaffoldMessenger.of(context)
                                  ..hideCurrentSnackBar()
                                  ..showSnackBar(SnackBar(
                                      content:
                                          Text("Llama al celular 3317865113")));
                                isiPhoneButtonSelected =
                                    !isiPhoneButtonSelected;
                                setState(() {});
                              },
                              icon: Icon(
                                  color: isiPhoneButtonSelected
                                      ? Colors.indigo
                                      : Colors.black,
                                  Icons.phone_iphone))
                        ])
                  ],
                ),
              ),
            ],
          ),
        ));
  }
}
