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
        child: ListView(
          children: [
            MyBox(
              "What is Duidui",
              "Duidui is my work for this class!",
              "https://media1.giphy.com/media/v1.Y2lkPTc5MGI3NjExcHg4a3JzZXVsZDFyeDFpbjhqODcwc2QwZWltdGVudHc1bXB6amQ0MyZlcD12MV9pbnRlcm5hbF9naWZfYnlfaWQmY3Q9Zw/VKwspRV2pafJu/giphy.gif",
            ),
            SizedBox(height: 10),
            MyBox(
              "What is Duidui mean",
              "Duidui doesn't have meaning, it's just a name(❁´◡`❁)",
              "https://media3.giphy.com/media/v1.Y2lkPTc5MGI3NjExczJpaG5mMGxuM25uZm1hYnM0ZXczYW5ub2d6cTVpYWtpbjJ1bTczNSZlcD12MV9pbnRlcm5hbF9naWZfYnlfaWQmY3Q9Zw/GvTSAdT3MjBtWtDpJ0/giphy.gif",
            ),
            SizedBox(height: 10),
            MyBox(
              "Why Duidui",
              "Because I like the sound of this name! (｡•̀ᴗ-)✧",
              "https://media4.giphy.com/media/v1.Y2lkPTc5MGI3NjExcmN2ZGIzdnJlOGN5N28yOHFzd3F4OGVqMHhjdmdiZjZmcGR6cDc3aiZlcD12MV9pbnRlcm5hbF9naWZfYnlfaWQmY3Q9Zw/hHZfOv3tpyItG/giphy.gif",
            ),
          ],
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
