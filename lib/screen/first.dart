import 'package:flutter/material.dart';

class FirstPage extends StatelessWidget {
  const FirstPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.blue,
      appBar: AppBar(
        centerTitle: true,
        title: Text(
          'Sign up',
          style: TextStyle(
            fontSize: 20,
            color: Colors.white,
          ),
        ),
        leading: Icon(Icons.arrow_back_ios_new),
        actions: [
          Padding(
            padding: const EdgeInsets.only(right: 20),
            child: Icon(Icons.menu),
          )
        ],
        backgroundColor: Colors.blue,
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          children: [
            Text(
              'What is your name ?',
              textAlign: TextAlign.center,
              style: TextStyle(
                fontSize: 30,
                color: Colors.white,
              ),
            ),
            Image(
              image: NetworkImage(
                  'https://avatars.mds.yandex.net/i?id=2083ab3835596be1046b1acb2e81e31d4d311349-10178110-images-thumbs&n=13'),
              alignment: Alignment.center,
            ),
            Container(
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(15),
                  color: Colors.white,
                ),
                margin: EdgeInsets.all(10),
                height: 50,
                width: 170,
                child: TextField(
                  decoration: InputDecoration(
                      border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(16),
                      ),
                      filled: true,
                      hintStyle:
                          TextStyle(color: Color.fromARGB(255, 201, 187, 187)),
                      hintText: "Name",
                      fillColor: Colors.white70,
                      suffixIcon: Icon(Icons.person)),
                )),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
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
                  color: Colors.blue,
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
                    Navigator.pushNamed(context, 'second');
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
