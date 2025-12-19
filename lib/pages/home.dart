import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(24.0),
      child: ListView(
        children: [
            MyBox(),
            SizedBox(height: 10),
            MyBox(),
            SizedBox(height: 10),
            MyBox(),
        ],
      ),
    );
  }

  Widget MyBox() {
    return Container(
      padding: EdgeInsets.all(20),
      height: 150,
      decoration: BoxDecoration(
        color: const Color.fromARGB(255, 255, 201, 219),
        borderRadius: BorderRadius.circular(20),
        image: DecorationImage(image: NetworkImage("https://media1.giphy.com/media/v1.Y2lkPTc5MGI3NjExcHg4a3JzZXVsZDFyeDFpbjhqODcwc2QwZWltdGVudHc1bXB6amQ0MyZlcD12MV9pbnRlcm5hbF9naWZfYnlfaWQmY3Q9Zw/VKwspRV2pafJu/giphy.gif")
        , fit: BoxFit.cover,
        colorFilter: ColorFilter.mode(Colors.black.withOpacity(0.4), BlendMode.darken)
        ),
      ),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.start,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text("What is Duidui?", style: TextStyle(fontSize: 25, color: Colors.white, fontWeight: FontWeight.bold),),
          Text("Duidui is an app that I make for this class", style: TextStyle(fontSize: 16, color: Colors.white),),
        ],
      ),
    );
  }
}
