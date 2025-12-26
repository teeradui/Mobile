import 'dart:convert';

import 'package:fistapp/pages/detail.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Let's know about Duidui!"),
        backgroundColor: const Color.fromARGB(255, 255, 156, 189),
      ),
      body: Padding(
        padding: const EdgeInsets.all(24.0),
        child: FutureBuilder(
          future: DefaultAssetBundle.of(context).loadString('assets/data.json'),
          builder: (context, snapshot) {
            if (snapshot.data == null) {
              return const SizedBox();
            }

            var data = json.decode(snapshot.data.toString());
            return ListView.builder(
              itemBuilder: (BuildContext context, int index) {
                return MyBox(
                  data[index]['title'],
                  data[index]['subtitle'],
                  data[index]['img_url'],
                );
              },
              itemCount: data.length,
            );
          },
        ),
      ),
    );
  }

  Widget MyBox(String title, String subtitle, String img_url) {
    return InkWell(
      borderRadius: BorderRadius.circular(20),
      onTap: () {
        Navigator.push(
          context,
          MaterialPageRoute(builder: (context) => DetailPage()),
        );
      },
      child: Container(
        margin: EdgeInsets.only(top: 10, bottom: 10),
        padding: EdgeInsets.all(20),
        height: 150,
        decoration: BoxDecoration(
          color: const Color.fromARGB(255, 255, 201, 219),
          borderRadius: BorderRadius.circular(20),
          image: DecorationImage(
            image: NetworkImage(img_url),
            fit: BoxFit.cover,
            colorFilter: ColorFilter.mode(
              Colors.black.withOpacity(0.4),
              BlendMode.darken,
            ),
          ),
        ),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              title,
              style: TextStyle(
                fontSize: 25,
                color: Colors.white,
                fontWeight: FontWeight.bold,
              ),
            ),
            Text(subtitle, style: TextStyle(fontSize: 16, color: Colors.white)),
            SizedBox(height: 10),
            TextButton(
              onPressed: () {
                print("Next Page");
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => DetailPage()),
                );
              },
              child: Text(
                "read more",
                style: TextStyle(
                  color: const Color.fromARGB(255, 255, 151, 193),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
