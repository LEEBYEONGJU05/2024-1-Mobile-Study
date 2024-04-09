import 'dart:math';

import 'package:flutter/material.dart';
import 'package:table_calendar/table_calendar.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
        useMaterial3: true,
        textTheme: const TextTheme(
          bodyLarge:
              TextStyle(color: Colors.black, fontWeight: FontWeight.bold),
        ),
      ),
      home: const MyHomePage(title: 'GDSC 모바일 스터디'),
    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({super.key, required this.title});
  final String title;

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          backgroundColor: Colors.white,
          title: Text(
            widget.title,
          ),
          centerTitle: false,
        ),
        body: Center(
            child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Container(
              height: 50,
              color: Colors.white,
              alignment: Alignment.centerLeft,
              padding: const EdgeInsets.all(10),
              child: Text(
                '과제',
                style: Theme.of(context).textTheme.bodyLarge,
              ),
            ),
            Container(
                height: 150,
                padding: const EdgeInsets.all(10),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceAround,
                  children: [
                    Container(
                      height: 120,
                      width: 120,
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.spaceAround,
                        children: [
                          Container(
                            height: 20,
                            alignment: Alignment.center,
                            child: Text(
                              '오늘의 과제',
                              style: Theme.of(context).textTheme.bodyLarge,
                            ),
                          ),
                          Container(
                              height: 90,
                              alignment: Alignment.center,
                              child: Image.asset(
                                'image/icon.png',
                                width: 80,
                                height: 80,
                              ))
                        ],
                      ),
                    ),
                    Container(
                        height: 120,
                        width: 120,
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.spaceAround,
                          children: [
                            Container(
                                height: 20,
                                alignment: Alignment.center,
                                child: Text(
                                  '수행한 과제',
                                  style: Theme.of(context).textTheme.bodyLarge,
                                )),
                            Container(
                              height: 90,
                              alignment: Alignment.center,
                              child: Image.asset('image/icon2.png'),
                            )
                          ],
                        ))
                  ],
                )),
            Container(
                height: 50,
                alignment: Alignment.centerLeft,
                padding: const EdgeInsets.all(10),
                child: Text(
                  '나의 수행도',
                  style: Theme.of(context).textTheme.bodyLarge,
                )),
            Container(
              height: 250,
              child: TableCalendar(
                firstDay: DateTime.utc(2010, 10, 16),
                lastDay: DateTime.utc(2030, 3, 14),
                focusedDay: DateTime.now(),
                shouldFillViewport: true,
              ),
            ),
            Container(
                height: 50,
                alignment: Alignment.centerLeft,
                padding: EdgeInsets.all(10),
                child: Text('나의 목표',
                    style: Theme.of(context).textTheme.bodyLarge)),
            Container(
                height: 150,
                alignment: Alignment.topLeft,
                padding: EdgeInsets.all(10),
                child: Text('중간고사 공부하기')),
          ],
        )));
  }
}
