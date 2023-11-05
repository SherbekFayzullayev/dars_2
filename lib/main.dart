import 'package:dars_2/screen/first.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        debugShowCheckedModeBanner: false,
        initialRoute: 'first',
        routes: {
          'first': (context) => FirstPage(),
          'second': (context) => SecondPage(),
          'third': (context) => THirdPage(),
        });
  }
}

class SecondPage extends StatelessWidget {
  const SecondPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.yellow,
      appBar: AppBar(
        title: Text(
          'Sign up',
          textAlign: TextAlign.center,
          style: TextStyle(
            fontSize: 20,
            color: Colors.white,
          ),
        ),
        actions: [
          Padding(
            padding: const EdgeInsets.only(right: 20),
            child: Icon(Icons.menu),
          )
        ],
        backgroundColor: Colors.yellow,
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          children: [
            Text(
              'What skills  do you have ?',
              textAlign: TextAlign.center,
              style: TextStyle(
                fontSize: 25,
                color: Colors.white,
              ),
            ),
            Image.network(
                'https://avatars.mds.yandex.net/i?id=83c496499547325960245967be9603d6edcc044b-10696775-images-thumbs&n=13'),
            Container(
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(15),
                  color: Colors.white,
                ),
                margin: EdgeInsets.all(10),
                height: 50,
                width: 100,
                child: TextField(
                  decoration: InputDecoration(
                    border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(16),
                    ),
                    filled: true,
                    hintStyle: TextStyle(
                        color: const Color.fromARGB(255, 228, 220, 220)),
                    hintText: "Skills",
                    fillColor: Colors.white70,
                  ),
                )),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                Container(
                  margin: EdgeInsets.all(5),
                  height: 5,
                  width: 15,
                  color: Colors.white30,
                ),
                Container(
                  margin: EdgeInsets.all(5),
                  height: 5,
                  width: 15,
                  color: Colors.white30,
                ),
                Container(
                  margin: EdgeInsets.all(5),
                  height: 5,
                  width: 15,
                  color: Colors.white30,
                ),
                Container(
                  margin: EdgeInsets.all(5),
                  height: 5,
                  width: 15,
                  color: Colors.white30,
                ),
                Container(
                  margin: EdgeInsets.all(5),
                  height: 5,
                  width: 15,
                  color: Colors.white,
                ),
              ],
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [
                Container(
                  margin: EdgeInsets.all(15),
                  color: Colors.yellow,
                  child: Text(
                    'Skip',
                    style: TextStyle(
                      color: Colors.white,
                      fontSize: 15,
                    ),
                  ),
                ),
                ElevatedButton(
                  style: ButtonStyle(
                      shape: MaterialStateProperty.all<RoundedRectangleBorder>(
                          RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(30),
                              side: BorderSide(color: Colors.black))),
                      backgroundColor: MaterialStatePropertyAll(Colors.black)),
                  onPressed: () {
                    Navigator.pushNamed(context, 'third');
                  },
                  child: Text(
                    'Next',
                    style: TextStyle(
                      color: Colors.white,
                      fontSize: 30,
                    ),
                  ),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}

class THirdPage extends StatelessWidget {
  const THirdPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.red,
      appBar: AppBar(
        title: Text(
          'Sign up',
          style: TextStyle(
            fontSize: 20,
            color: Colors.white,
          ),
        ),
        actions: [
          Padding(
            padding: const EdgeInsets.only(right: 20),
            child: Icon(Icons.menu),
          )
        ],
        backgroundColor: Colors.red,
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          children: [
            Text(
              'When you born ?',
              textAlign: TextAlign.center,
              style: TextStyle(
                fontSize: 30,
                color: Colors.white,
              ),
            ),
            Image(
              image: NetworkImage(
                  'https://avatars.mds.yandex.net/i?id=f8d81992799cac0a1525499d1345f50000ba5261-10107139-images-thumbs&n=13'),
              alignment: Alignment.center,
            ),
            Container(
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(15),
                color: Colors.white,
              ),
              margin: EdgeInsets.all(30),
              height: 50,
              width: 200,
              child: TextField(
                decoration: InputDecoration(
                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(16),
                  ),
                  filled: true,
                  hintStyle:
                      TextStyle(color: Color.fromARGB(255, 209, 199, 199)),
                  hintText: "Day/Month/Year",
                  fillColor: Colors.white70,
                ),
              ),
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                Container(
                  margin: EdgeInsets.all(5),
                  height: 5,
                  width: 15,
                  color: Colors.white12,
                ),
                Container(
                  margin: EdgeInsets.all(5),
                  height: 5,
                  width: 15,
                  color: Colors.white,
                ),
                Container(
                  margin: EdgeInsets.all(5),
                  height: 5,
                  width: 15,
                  color: Colors.white12,
                ),
                Container(
                  margin: EdgeInsets.all(5),
                  height: 5,
                  width: 15,
                  color: Colors.white12,
                ),
                Container(
                  margin: EdgeInsets.all(5),
                  height: 5,
                  width: 15,
                  color: Colors.white12,
                ),
              ],
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [
                Container(
                  margin: EdgeInsets.all(15),
                  color: Colors.red,
                  child: Text(
                    'Skip',
                    style: TextStyle(color: Colors.white, fontSize: 15),
                  ),
                ),
                ElevatedButton(
                  style: ButtonStyle(
                      shape: MaterialStateProperty.all<RoundedRectangleBorder>(
                          RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(30),
                              side: BorderSide(color: Colors.black))),
                      backgroundColor: MaterialStatePropertyAll(Colors.black)),
                  onPressed: () {
                    Navigator.pushNamed(context, 'first');
                  },
                  child: Text(
                    'Finish',
                    style: TextStyle(
                        color: Colors.white,
                        fontSize: 30,
                        backgroundColor: Colors.black),
                  ),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
